#include "py4godot/script_extension/PyScriptExtension.h"
#include "py4godot/script_language/PyLanguage.h"
#include "py4godot/godot_bindings/main.h"
#include "py4godot/cpputils/utils.h"
#include "py4godot/cppclasses/Script/Script.h"
#include "py4godot/cppcore/Variant.h"
#include "py4godot/pluginscript_api/api.h"
#include <cassert>

GDExtensionPtrOperatorEvaluator operator_equal_string_namescript;
PyScriptExtension extension;

bool string_names_equal_script(StringName left, StringName right){
    uint8_t ret;
    operator_equal_string_namescript(&left.godot_owner, &right.godot_owner, &ret);
    return ret != 0;
}

  PyScriptExtension* PyScriptExtension::constructor(PyLanguage* language){
    PyScriptExtension* class_ = new PyScriptExtension();

    StringName class_name = c_string_to_string_name("PyScriptExtension");

    class_->godot_owner = _interface->classdb_construct_object(&class_name.godot_owner);
    _interface->object_set_instance(class_->godot_owner,&class_name.godot_owner , class_);

    class_->_init_values();
    class_->lang = language;
    return class_;
}

void* create_instance_script(void* userdata){
    StringName class_name = c_string_to_string_name("ScriptExtension");
    auto gdnative_object = _interface->classdb_construct_object(&class_name.godot_owner);
    return gdnative_object;
}
void free_instance_script(void *p_userdata, GDExtensionClassInstancePtr p_instance){}

void PyScriptExtension::_init_values(){}

void PyScriptExtension::_editor_can_reload_from_file(GDExtensionTypePtr res){}
void PyScriptExtension::_can_instantiate(GDExtensionTypePtr res){}
void  PyScriptExtension::_get_base_script(GDExtensionTypePtr res){}
void PyScriptExtension::_get_global_name(GDExtensionTypePtr res){}
void PyScriptExtension::_inherits_script( Script* script, GDExtensionTypePtr res){}
void PyScriptExtension::_get_instance_base_type(GDExtensionTypePtr res){}
void PyScriptExtension::_instance_create( Object& for_object, GDExtensionTypePtr res){}
void PyScriptExtension::_placeholder_instance_create( Object& for_object, GDExtensionTypePtr res){}
void PyScriptExtension::_instance_has( Object& object, GDExtensionTypePtr res){}
void PyScriptExtension::_has_source_code(GDExtensionTypePtr res){}
void PyScriptExtension::_get_source_code(GDExtensionTypePtr& res){
    //main_interface->print_error("get_source_code:", "test", "test",1,1);
    //main_interface->print_error(this->source_code, "test", "test",1,1);

    main_interface->string_new_with_utf8_chars(res, source_code);
}
void PyScriptExtension::_set_source_code( String& code, GDExtensionTypePtr res){}
void PyScriptExtension::_reload( bool keep_state, GDExtensionTypePtr res){}
void PyScriptExtension::_get_documentation(GDExtensionTypePtr res){}
void PyScriptExtension::_has_method( StringName& method, GDExtensionTypePtr res){
    *static_cast<bool*>(res) = false;
}
void PyScriptExtension::_get_method_info( StringName& method, GDExtensionTypePtr res){
}
void PyScriptExtension::_is_tool(GDExtensionTypePtr res){
    *static_cast<bool*>(res) = false;
}
void PyScriptExtension::_is_valid(GDExtensionTypePtr res){
    *static_cast<bool*>(res) = false;
}
void PyScriptExtension::_get_language(GDExtensionTypePtr res){
    *((GDExtensionTypePtr*)res) = lang->godot_owner;
}
void PyScriptExtension::_has_script_signal( StringName& signal, GDExtensionTypePtr res){
    *static_cast<bool*>(res) = false;
}
void PyScriptExtension::_get_script_signal_list(GDExtensionTypePtr res){}
void PyScriptExtension::_has_property_default_value( StringName& property, GDExtensionTypePtr res){
    *static_cast<bool*>(res) = false;
}
void PyScriptExtension::_get_property_default_value( StringName& property, GDExtensionTypePtr res){}
void PyScriptExtension::_update_exports(GDExtensionTypePtr res){}
void PyScriptExtension::_get_script_method_list(GDExtensionTypePtr res){}
void PyScriptExtension::_get_script_property_list(GDExtensionTypePtr res){}
void PyScriptExtension::_get_member_line( StringName& member, GDExtensionTypePtr res){
    *static_cast<int*>(res) = 0;
}
void PyScriptExtension::_get_constants(GDExtensionTypePtr res){}
void PyScriptExtension::_get_members(GDExtensionTypePtr res){}
void PyScriptExtension::_is_placeholder_fallback_enabled(GDExtensionTypePtr res){
    *static_cast<bool*>(res) = false;
}
void PyScriptExtension::_get_rpc_config(GDExtensionTypePtr res){}
void PyScriptExtension::_set_source_code_internal(String source_code){
    this->source_code = gd_string_to_c_string(main_interface, &source_code.godot_owner, source_code.length());
}
namespace script{
void call_virtual_func__editor_can_reload_from_file(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_editor_can_reload_from_file(r_ret);
}

StringName func_name__editor_can_reload_from_file;

void call_virtual_func__can_instantiate(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_can_instantiate(r_ret);
}

StringName func_name__can_instantiate;


void call_virtual_func__get_base_script(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_base_script(r_ret);
}

StringName func_name__get_base_script;


void call_virtual_func__get_global_name(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_global_name(r_ret);
}

StringName func_name__get_global_name;


void call_virtual_func__inherits_script(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    Script args0 = *((Script*)(p_args + 0));



    pylanguage->_inherits_script(&args0,r_ret);
}

StringName func_name__inherits_script ;


void call_virtual_func__get_instance_base_type(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_instance_base_type(r_ret);
}

StringName func_name__get_instance_base_type ;


void call_virtual_func__instance_create(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    /*
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    Object args0 = Object::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));

    void* obj = pylanguage->_instance_create(args0,r_ret)

    void* ret_val = obj
    */
}

StringName func_name__instance_create ;


void call_virtual_func__placeholder_instance_create(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    /*
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    Object args0 = Object::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));

    void* obj = pylanguage->_placeholder_instance_create(args0,r_ret)

     void* ret_val = obj
     */
}

StringName func_name__placeholder_instance_create ;


void call_virtual_func__instance_has(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    Object args0 = Object::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_instance_has(args0,r_ret);
}

StringName func_name__instance_has ;


void call_virtual_func__has_source_code(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_has_source_code(r_ret);
}

StringName func_name__has_source_code ;


void call_virtual_func__get_source_code(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_source_code(r_ret);
}

StringName func_name__get_source_code ;


void call_virtual_func__set_source_code(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    String args0 = String::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_set_source_code(args0,r_ret);
}

StringName func_name__set_source_code ;


void call_virtual_func__reload(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    bool args0 = *((bool*)(p_args + 0));



    pylanguage->_reload(args0,r_ret);
}

StringName func_name__reload ;


void call_virtual_func__get_documentation(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_documentation(r_ret);
}

StringName func_name__get_documentation ;


void call_virtual_func__has_method(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_has_method(args0,r_ret);
}

StringName func_name__has_method ;


void call_virtual_func__get_method_info(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_get_method_info(args0,r_ret);
}

StringName func_name__get_method_info ;


void call_virtual_func__is_tool(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_is_tool(r_ret);
}

StringName func_name__is_tool ;


void call_virtual_func__is_valid(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_is_valid(r_ret);
}

StringName func_name__is_valid ;


void call_virtual_func__get_language(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_language(r_ret);
}

StringName func_name__get_language ;


void call_virtual_func__has_script_signal(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_has_script_signal(args0,r_ret);
}

StringName func_name__has_script_signal ;


void call_virtual_func__get_script_signal_list(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_script_signal_list(r_ret);
}

StringName func_name__get_script_signal_list ;


void call_virtual_func__has_property_default_value(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_has_property_default_value(args0,r_ret);
}

StringName func_name__has_property_default_value ;


void call_virtual_func__get_property_default_value(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_get_property_default_value(args0,r_ret);
}

StringName func_name__get_property_default_value ;


void call_virtual_func__update_exports(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_update_exports(r_ret);
}

StringName func_name__update_exports ;


void call_virtual_func__get_script_method_list(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_script_method_list(r_ret);
}

StringName func_name__get_script_method_list ;


void call_virtual_func__get_script_property_list(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_script_property_list(r_ret);
}

StringName func_name__get_script_property_list ;


void call_virtual_func__get_member_line(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_get_member_line(args0,r_ret);
}

StringName func_name__get_member_line ;


void call_virtual_func__get_constants(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_constants(r_ret);
}

StringName func_name__get_constants ;


void call_virtual_func__get_members(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_members(r_ret);
}

StringName func_name__get_members ;


void call_virtual_func__is_placeholder_fallback_enabled(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_is_placeholder_fallback_enabled(r_ret);
}

StringName func_name__is_placeholder_fallback_enabled ;


void call_virtual_func__get_rpc_config(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyScriptExtension* pylanguage = static_cast<PyScriptExtension*> (p_instance);



    pylanguage->_get_rpc_config(r_ret);
}
}


GDExtensionClassCallVirtual get_virtual_script(void *p_userdata, GDExtensionConstStringNamePtr p_name) {

    StringName name = StringName::new_static(((void**)const_cast<GDExtensionTypePtr>(p_name))[0]);
    auto test_str = String::new2(name);
    const char* c_name_str = gd_string_to_c_string(main_interface, &test_str.godot_owner, test_str.length());

    if (string_names_equal_script(script::func_name__editor_can_reload_from_file, name)){
        return script::call_virtual_func__editor_can_reload_from_file;
    }

    else if (string_names_equal_script(script::func_name__can_instantiate, name)){
        return script::call_virtual_func__can_instantiate;
    }

    else if (string_names_equal_script(script::func_name__get_base_script, name)){
        return script::call_virtual_func__get_base_script;
    }

    else if (string_names_equal_script(script::func_name__get_global_name, name)){
        return script::call_virtual_func__get_global_name;
    }

    else if (string_names_equal_script(script::func_name__inherits_script, name)){
        return script::call_virtual_func__inherits_script;
    }

    else if (string_names_equal_script(script::func_name__get_instance_base_type, name)){
        return script::call_virtual_func__get_instance_base_type;
    }

    else if (string_names_equal_script(script::func_name__instance_create, name)){
        return script::call_virtual_func__instance_create;
    }

    else if (string_names_equal_script(script::func_name__placeholder_instance_create, name)){
        return script::call_virtual_func__placeholder_instance_create;
    }

    else if (string_names_equal_script(script::func_name__instance_has, name)){
        return script::call_virtual_func__instance_has;
    }

    else if (string_names_equal_script(script::func_name__has_source_code, name)){
        return script::call_virtual_func__has_source_code;
    }

    else if (string_names_equal_script(script::func_name__get_source_code, name)){
        return script::call_virtual_func__get_source_code;
    }

    else if (string_names_equal_script(script::func_name__set_source_code, name)){
        return script::call_virtual_func__set_source_code;
    }

    else if (string_names_equal_script(script::func_name__reload, name)){
        return script::call_virtual_func__reload;
    }

    else if (string_names_equal_script(script::func_name__get_documentation, name)){
        return script::call_virtual_func__get_documentation;
    }

    else if (string_names_equal_script(script::func_name__has_method, name)){
        return script::call_virtual_func__has_method;
    }

    else if (string_names_equal_script(script::func_name__get_method_info, name)){
        return script::call_virtual_func__get_method_info;
    }

    else if (string_names_equal_script(script::func_name__is_tool, name)){
        return script::call_virtual_func__is_tool;
    }

    else if (string_names_equal_script(script::func_name__is_valid, name)){
        return script::call_virtual_func__is_valid;
    }

    else if (string_names_equal_script(script::func_name__get_language, name)){
        return script::call_virtual_func__get_language;
    }

    else if (string_names_equal_script(script::func_name__has_script_signal, name)){
        return script::call_virtual_func__has_script_signal;
    }

    else if (string_names_equal_script(script::func_name__get_script_signal_list, name)){
        return script::call_virtual_func__get_script_signal_list;
    }

    else if (string_names_equal_script(script::func_name__has_property_default_value, name)){
        return script::call_virtual_func__has_property_default_value;
    }

    else if (string_names_equal_script(script::func_name__get_property_default_value, name)){
        return script::call_virtual_func__get_property_default_value;
    }

    else if (string_names_equal_script(script::func_name__update_exports, name)){
        return script::call_virtual_func__update_exports;
    }

    else if (string_names_equal_script(script::func_name__get_script_method_list, name)){
        return script::call_virtual_func__get_script_method_list;
    }

    else if (string_names_equal_script(script::func_name__get_script_property_list, name)){
        return script::call_virtual_func__get_script_property_list;
    }

    else if (string_names_equal_script(script::func_name__get_member_line, name)){
        return script::call_virtual_func__get_member_line;
    }

    else if (string_names_equal_script(script::func_name__get_constants, name)){
        return script::call_virtual_func__get_constants;
    }

    else if (string_names_equal_script(script::func_name__get_members, name)){
        return script::call_virtual_func__get_members;
    }

    else if (string_names_equal_script(script::func_name__is_placeholder_fallback_enabled, name)){
        return script::call_virtual_func__is_placeholder_fallback_enabled;
    }

    assert(false); // There are methods not being handled
    return nullptr;
}

void init_func_names_script(){
    script::func_name__editor_can_reload_from_file = c_string_to_string_name("_editor_can_reload_from_file");
    script::func_name__can_instantiate = c_string_to_string_name("_can_instantiate");
    script::func_name__get_base_script = c_string_to_string_name("_get_base_script");
    script::func_name__get_global_name = c_string_to_string_name("_get_global_name");
    script::func_name__inherits_script = c_string_to_string_name("_inherits_script");
    script::func_name__get_instance_base_type = c_string_to_string_name("_get_instance_base_type");
    script::func_name__instance_create = c_string_to_string_name("_instance_create");
    script::func_name__placeholder_instance_create = c_string_to_string_name("_placeholder_instance_create");
    script::func_name__instance_has = c_string_to_string_name("_instance_has");
    script::func_name__has_source_code = c_string_to_string_name("_has_source_code");
    script::func_name__get_source_code = c_string_to_string_name("_get_source_code");
    script::func_name__set_source_code = c_string_to_string_name("_set_source_code");
    script::func_name__reload = c_string_to_string_name("_reload");
    script::func_name__get_documentation = c_string_to_string_name("_get_documentation");
    script::func_name__has_method = c_string_to_string_name("_has_method");
    script::func_name__get_method_info = c_string_to_string_name("_get_method_info");
    script::func_name__is_tool = c_string_to_string_name("_is_tool");
    script::func_name__is_valid = c_string_to_string_name("_is_valid");
    script::func_name__get_language = c_string_to_string_name("_get_language");
    script::func_name__has_script_signal = c_string_to_string_name("_has_script_signal");
    script::func_name__get_script_signal_list = c_string_to_string_name("_get_script_signal_list");
    script::func_name__has_property_default_value = c_string_to_string_name("_has_property_default_value");
    script::func_name__get_property_default_value = c_string_to_string_name("_get_property_default_value");
    script::func_name__update_exports = c_string_to_string_name("_update_exports");
    script::func_name__get_script_method_list = c_string_to_string_name("_get_script_method_list");
    script::func_name__get_script_property_list = c_string_to_string_name("_get_script_property_list");
    script::func_name__get_member_line = c_string_to_string_name("_get_member_line");
    script::func_name__get_constants = c_string_to_string_name("_get_constants");
    script::func_name__get_members = c_string_to_string_name("_get_members");
    script::func_name__is_placeholder_fallback_enabled = c_string_to_string_name("_is_placeholder_fallback_enabled");
}

void register_class_script(){
    init_func_names_script();
    operator_equal_string_namescript = _interface->variant_get_ptr_operator_evaluator(
        GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_EQUAL,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME);

    auto creation_info = new GDExtensionClassCreationInfo();
    creation_info->create_instance_func = create_instance_script;
    creation_info->free_instance_func = free_instance_script;
    creation_info->class_userdata = creation_info;
    creation_info->get_virtual_func = get_virtual_script;

    StringName class_name = c_string_to_string_name("PyScriptExtension");
    StringName parent_class_name = c_string_to_string_name("ScriptExtension");

    _interface->classdb_register_extension_class(_library, &class_name.godot_owner, &parent_class_name.godot_owner, creation_info);
}