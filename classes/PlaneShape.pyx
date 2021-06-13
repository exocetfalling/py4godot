
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
cimport classes.Shape 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_planeshape_get_plane
cdef godot_method_bind *bind_planeshape_set_plane
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_planeshape_get_plane = api_core.godot_method_bind_get_method('PlaneShape', 'get_plane')
  bind_planeshape_set_plane = api_core.godot_method_bind_get_method('PlaneShape', 'set_plane')

############################Generated class###################################
cdef class PlaneShape(classes.Shape.Shape):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PlaneShape")())
##################################Generated Properties#########################################
  @property
  def plane(self): 
    return self.get_plane()
  @plane.setter 
  def plane(self,value): 
    self.set_plane(value)

##################################Generated Methods#########################################
  def  get_plane(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_plane* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_planeshape_get_plane,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Plane.new_static(dereference(ret))

  def  set_plane(self,  Plane plane):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &plane._native
    api_core.godot_method_bind_ptrcall(bind_planeshape_set_plane,self.godot_owner,args,NULL)
    hello('hallo2')
