#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/ResourceFormatLoader/ResourceFormatLoader.h"
#include "py4godot/script_language/PyLanguage.h"
#include <unordered_set>

void register_class_loader();
namespace godot{

    class PyResourceFormatLoader:public ResourceFormatLoader{
      public:
          PyLanguage lang;
          static PyResourceFormatLoader* constructor(PyLanguage language);
          void _init_values(); // self-defined
          void _get_recognized_extensions(GDExtensionTypePtr res);
          void _recognize_path( String& path, StringName& type, GDExtensionTypePtr res);
          void _handles_type( StringName& type, GDExtensionTypePtr res);
          void _get_resource_type( String& path, GDExtensionTypePtr res);
          void _get_resource_script_class( String& path, GDExtensionTypePtr res);
          void _get_resource_uid( String& path, GDExtensionTypePtr res);
          void _get_dependencies( String& path, bool add_types, GDExtensionTypePtr res);
          void _rename_dependencies( String& path, Dictionary& renames, GDExtensionTypePtr res);
          void _exists( String& path, GDExtensionTypePtr res);
          void _get_classes_used( String& path, GDExtensionTypePtr res);
          void _load( String& path, String& original_path, bool use_sub_threads, int cache_mode, GDExtensionTypePtr res);

          void add_string_to_array(GDExtensionTypePtr array, String string);
    };
}