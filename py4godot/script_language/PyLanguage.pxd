from py4godot.classes.ScriptLanguageExtension.ScriptLanguageExtension cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.enums.enums4 cimport *
from py4godot_core_holder.core_holder cimport *

from py4godot.classes.generated4_core cimport *
from py4godot.classes.ScriptLanguage.ScriptLanguage cimport *
from py4godot.classes.Script.Script cimport *
from py4godot.classes.Object.Object cimport *

cdef register_class()

cdef class PyLanguage(ScriptLanguageExtension):
  cdef char* language_name
  cdef String extension
  cdef String script_name
  cdef PackedStringArray extension_array

  cdef void _init_values(self) # self-defined
  cdef new(self)
  cdef _get_name(self, GDNativeTypePtr res)
  cdef _init(self)
  cdef _get_type(self)
  cdef _get_extension(self)
  cdef _execute_file(self, String path)
  cdef _finish(self)
  cdef _get_reserved_words(self)
  cdef _is_control_flow_keyword(self, String keyword)
  cdef _get_comment_delimiters(self)
  cdef _get_string_delimiters(self)
  cdef _make_template(self, String template, String class_name, String base_class_name)
  cdef _get_built_in_templates(self, StringName object)
  cdef _is_using_templates(self)
  cdef _validate(self, String script, String path, bool validate_functions, bool validate_errors, bool validate_warnings, bool validate_safe_lines)
  cdef _validate_path(self, String path)
  cdef _create_script(self)
  cdef _has_named_classes(self)
  cdef _supports_builtin_mode(self)
  cdef _supports_documentation(self)
  cdef _can_inherit_from_file(self)
  cdef _find_function(self, String class_name, String function_name)
  cdef _make_function(self, String class_name, String function_name, PackedStringArray function_args)
  cdef _open_in_external_editor(self, Script script, int line, int column)
  cdef _overrides_external_editor(self)
  cdef _complete_code(self, String code, String path, Object owner)
  cdef _lookup_code(self, String code, String symbol, String path, Object owner)
  cdef _auto_indent_code(self, String code, int from_line, int to_line)
  cdef _add_global_constant(self, StringName name, Variant value)
  cdef _add_named_global_constant(self, StringName name, Variant value)
  cdef _remove_named_global_constant(self, StringName name)
  cdef _thread_enter(self)
  cdef _thread_exit(self)
  cdef _debug_get_error(self)
  cdef _debug_get_stack_level_count(self)
  cdef _debug_get_stack_level_line(self, int level)
  cdef _debug_get_stack_level_function(self, int level)
  cdef _debug_get_stack_level_locals(self, int level, int max_subitems, int max_depth)
  cdef _debug_get_stack_level_members(self, int level, int max_subitems, int max_depth)
  cdef _debug_get_globals(self, int max_subitems, int max_depth)
  cdef _debug_parse_stack_level_expression(self, int level, String expression, int max_subitems, int max_depth)
  cdef _debug_get_current_stack_info(self)
  cdef _reload_all_scripts(self)
  cdef _reload_tool_script(self, Script script, bool soft_reload)
  cdef _get_recognized_extensions(self)
  cdef _get_public_functions(self)
  cdef _get_public_constants(self)
  cdef _get_public_annotations(self)
  cdef _profiling_start(self)
  cdef _profiling_stop(self)
  cdef _refcount_incremented_instance_binding(self, Object object)
  cdef _refcount_decremented_instance_binding(self, Object object)
  cdef _frame(self)
  cdef _handles_global_class_type(self, String type)
  cdef _get_global_class_name(self, String path)