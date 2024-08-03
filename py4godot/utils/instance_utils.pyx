# distutils: language=c++
from py4godot.classes.Object.Object cimport *
from py4godot.utils.print_tools import *

cdef api void set_owner(object o, void* owner):
    try:
        (<Object>o).set_gdowner(owner)
    except Exception as e:
        print_error("Exception:", e)

cdef api void set_default_val(object o, str attribute_name, object val):
    try:
        setattr(o, attribute_name, val)
    except Exception as e:
        print_error("Exception when setting attribute:", e)