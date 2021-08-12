#include "gdnative_api_struct.gen.h"
#include "../classes/classes_api.h"
#include "../pluginscript_api/api_api.h"
#include "../core/dictionary/Dictionary_api.h"
#include "../core/variant/Variant_api.h"
#include "../core/array/Array_api.h"
#include "../core/string/String_api.h"
#include <string.h>


typedef struct user_data_struct {
	char data[256];
} user_data_struct;

godot_object* _owner;


static const char *RECOGNIZED_EXTENSIONS[] = { "py", "pyc", "pyo", "pyd", 0 };
static const char *RESERVED_WORDS[] = {
    "False",
    "None",
    "True",
    "and",
    "as",
    "assert",
    "break",
    "class",
    "continue",
    "def",
    "del",
    "elif",
    "else",
    "except",
    "finally",
    "for",
    "from",
    "global",
    "if",
    "import",
    "in",
    "is",
    "lambda",
    "nonlocal",
    "not",
    "or",
    "pass",
    "raise",
    "return",
    "try",
    "while",
    "with",
    "yield",
    0
};
static const char *COMMENT_DELIMITERS[] = { "#", "\"\"\"\"\"\"", 0 };
static const char *STRING_DELIMITERS[] = { "\" \"", "' '", 0 };
static godot_pluginscript_language_desc desc;

// GDNative supports a large collection of functions for calling back
// into the main Godot executable. In order for your module to have
// access to these functions, GDNative provides your application with
// a struct containing pointers to all these functions.
static const godot_gdnative_core_api_struct *api_core = NULL;
static const godot_gdnative_ext_nativescript_api_struct *nativescript_api = NULL;
static const godot_gdnative_ext_nativescript_1_1_api_struct *nativescript_api_11 = NULL;
static const godot_gdnative_ext_pluginscript_api_struct *gdapi_ext_pluginscript = NULL;

// These are forward declarations for the functions we'll be implementing
// for our object. A constructor and destructor are both necessary.
GDCALLINGCONV void *simple_constructor(godot_object *p_instance, void *p_method_data);
GDCALLINGCONV void simple_destructor(godot_object *p_instance, void *p_method_data, void *p_user_data);
godot_variant simple_get_data(godot_object *p_instance, void *p_method_data, void *p_user_data, int p_num_args, godot_variant **p_args);

void set_up_bindings();
void set_up_pluginscript();

// `gdnative_init` is a function that initializes our dynamic library.
// Godot will give it a pointer to a structure that contains various bits of
// information we may find useful among which the pointers to our API structures.
void GDN_EXPORT godot_gdnative_init(godot_gdnative_init_options *p_options) {
	api_core = p_options->api_struct;
	printf("set_api_core:\n");
	printf("%p",api_core);
	printf("godot_gdnative_init\n");
	printf("\n");


	// Find NativeScript extensions.
	for (unsigned int i = 0; i < api_core->num_extensions; i++) {
		switch (api_core->extensions[i]->type) {
			case GDNATIVE_EXT_NATIVESCRIPT: {
				nativescript_api = (godot_gdnative_ext_nativescript_api_struct *)api_core->extensions[i];
			}; break;
            case GDNATIVE_EXT_PLUGINSCRIPT:
                gdapi_ext_pluginscript = (const godot_gdnative_ext_pluginscript_api_struct *)api_core->extensions[i];
                break;

			default:
				break;
		};
	};

    printf("api_core:\n");
    printf("%p",api_core);
    printf("\n");
    set_up_bindings();
    set_up_pluginscript();
}

// `gdnative_terminate` which is called before the library is unloaded.
// Godot will unload the library when no object uses it anymore.
void GDN_EXPORT godot_gdnative_terminate(godot_gdnative_terminate_options *p_options) {
    printf("terminate\n");
	Py_Finalize();
}

// `nativescript_init` is the most important function. Godot calls
// this function as part of loading a GDNative library and communicates
// back to the engine what objects we make available.
void GDN_EXPORT godot_nativescript_init(void *p_handle) {
	godot_instance_create_func create = { NULL, NULL, NULL };
	create.create_func = &simple_constructor;

	godot_instance_destroy_func destroy = { NULL, NULL, NULL };
	destroy.destroy_func = &simple_destructor;

	// We first tell the engine which classes are implemented by calling this.
	// * The first parameter here is the handle pointer given to us.
	// * The second is the name of our object class.
	// * The third is the type of object in Godot that we 'inherit' from;
	//   this is not true inheritance but it's close enough.
	// * Finally, the fourth and fifth parameters are descriptions
	//   for our constructor and destructor, respectively.
	nativescript_api->godot_nativescript_register_class(p_handle, "SIMPLE", "Reference", create, destroy);

	godot_instance_method get_data = { NULL, NULL, NULL };
	get_data.method = &simple_get_data;

	godot_method_attributes attributes = { GODOT_METHOD_RPC_MODE_DISABLED };

	// We then tell Godot about our methods by calling this for each
	// method of our class. In our case, this is just `get_data`.
	// * Our first parameter is yet again our handle pointer.
	// * The second is again the name of the object class we're registering.
	// * The third is the name of our function as it will be known to GDScript.
	// * The fourth is our attributes setting (see godot_method_rpc_mode enum in
	//   `godot_headers/nativescript/godot_nativescript.h` for possible values).
	// * The fifth and final parameter is a description of which function
	//   to call when the method gets called.
	nativescript_api->godot_nativescript_register_method(p_handle, "SIMPLE", "get_data", attributes, get_data);
}


// In our constructor, allocate memory for our structure and fill
// it with some data. Note that we use Godot's memory functions
// so the memory gets tracked and then return the pointer to
// our new structure. This pointer will act as our instance
// identifier in case multiple objects are instantiated.
GDCALLINGCONV void *simple_constructor(godot_object *p_instance, void *p_method_data) {
	user_data_struct *user_data = api_core->godot_alloc(sizeof(user_data_struct));
	strcpy(user_data->data, "World from GDNative!");

	return user_data;
}

// The destructor is called when Godot is done with our
// object and we free our instances' member data.
GDCALLINGCONV void simple_destructor(godot_object *p_instance, void *p_method_data, void *p_user_data) {
	api_core->godot_free(p_user_data);
}

// Data is always sent and returned as variants so in order to
// return our data, which is a string, we first need to convert
// our C string to a Godot string object, and then copy that
// string object into the variant we are returning.
godot_variant simple_get_data(godot_object *p_instance, void *p_method_data, void *p_user_data, int p_num_args, godot_variant **p_args) {
	godot_string data;
	godot_variant ret;
	user_data_struct *user_data = (user_data_struct *)p_user_data;

	api_core->godot_string_new(&data);
	api_core->godot_string_parse_utf8(&data, user_data->data);
	api_core->godot_variant_new_string(&ret, &data);
	api_core->godot_string_destroy(&data);

	return ret;
}

void set_up_bindings(){
    Py_Initialize();
	PyRun_SimpleString("import sys,os\nprint(sys.path, os.getcwd())");
	PyRun_SimpleString("import sys, os\nsys.path.insert(0,os.getcwd()+'/addons')");
	PyRun_SimpleString("import sys,os\nprint(sys.path, os.getcwd())");
	import_classes__classes();
    if (PyErr_Occurred())
    {
        PyErr_Print();
        return ;
    }

    //print_();
    init_method_bindings(api_core);
	//Py_Finalize();
}

void GDN_EXPORT godot_singleton_init() {
    printf("init_singleton\n");
}


void set_up_pluginscript(){
    printf("###################################set_up_pluginscript#################################################\n");

    import_pluginscript_api__api();
    if (PyErr_Occurred())
    {
        PyErr_Print();
        return ;
    }
    import_core__dictionary__Dictionary();
    if (PyErr_Occurred())
    {
        PyErr_Print();
        return ;
    }
    import_core__array__Array();
    if (PyErr_Occurred())
    {
        PyErr_Print();
        return ;
    }

    import_core__variant__Variant();
    if (PyErr_Occurred())
    {
        PyErr_Print();
        return ;
    }

    import_core__string__String();
    if (PyErr_Occurred())
    {
        PyErr_Print();
        return ;
    }

    set_api_core_dict(api_core);
    set_api_core_variant(api_core);
    set_api_core_array(api_core);
    set_api_core_string(api_core);
    set_api_core_pluginscript(api_core);


    desc.name = "Python";
    desc.type = "Python";
    desc.extension = "py";
    desc.recognized_extensions = RECOGNIZED_EXTENSIONS;
    desc.init = init_pluginscript;
    desc.finish = finish_pluginscript;
    desc.reserved_words = RESERVED_WORDS;
    desc.comment_delimiters = COMMENT_DELIMITERS;
    desc.string_delimiters = STRING_DELIMITERS;
    desc.has_named_classes = false;
    desc.add_global_constant = add_global_constant_pluginscript;

    desc.script_desc.init=init_pluginscript_desc;
    desc.script_desc.finish=finish_pluginscript_desc;

    desc.script_desc.instance_desc.init=init_pluginscript_instance;
    desc.script_desc.instance_desc.finish=finish_pluginscript_instance;
    desc.script_desc.instance_desc.set_prop=set_prop_pluginscript_instance;
    desc.script_desc.instance_desc.get_prop=get_prop_pluginscript_instance;
    desc.script_desc.instance_desc.call_method=call_method_pluginscript_instance;
    desc.script_desc.instance_desc.notification=notification_pluginscript_instance;

    printf("###################################finish_pluginscript###################################################\n");

    // TODO: make python api to c
    //Todo: look at terminate
    gdapi_ext_pluginscript->godot_pluginscript_register_language(&desc);
}

void hello(const char *name) {
    printf("hello %s\n", name);
}