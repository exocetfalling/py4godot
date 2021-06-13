
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Object
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptfunctionstate__signal_callback
cdef godot_method_bind *bind_visualscriptfunctionstate_connect_to_signal
cdef godot_method_bind *bind_visualscriptfunctionstate_is_valid
cdef godot_method_bind *bind_visualscriptfunctionstate_resume
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptfunctionstate__signal_callback = api_core.godot_method_bind_get_method('VisualScriptFunctionState', '_signal_callback')
  bind_visualscriptfunctionstate_connect_to_signal = api_core.godot_method_bind_get_method('VisualScriptFunctionState', 'connect_to_signal')
  bind_visualscriptfunctionstate_is_valid = api_core.godot_method_bind_get_method('VisualScriptFunctionState', 'is_valid')
  bind_visualscriptfunctionstate_resume = api_core.godot_method_bind_get_method('VisualScriptFunctionState', 'resume')

############################Generated class###################################
cdef class VisualScriptFunctionState(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptFunctionState")())
##################################Generated Methods#########################################
  def  _signal_callback(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctionstate__signal_callback,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  connect_to_signal(self,  classes.Object.Object obj,  String signals,  Array args_):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = obj.godot_owner
    args[1] = &signals._native
    args[2] = &args_._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctionstate_connect_to_signal,self.godot_owner,args,NULL)
    hello('hallo2')
  def  is_valid(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctionstate_is_valid,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  resume(self,  Array args_):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &args_._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctionstate_resume,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

