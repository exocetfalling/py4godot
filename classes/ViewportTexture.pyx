
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
cimport classes.Texture 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_viewporttexture_get_viewport_path_in_scene
cdef godot_method_bind *bind_viewporttexture_set_viewport_path_in_scene
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_viewporttexture_get_viewport_path_in_scene = api_core.godot_method_bind_get_method('ViewportTexture', 'get_viewport_path_in_scene')
  bind_viewporttexture_set_viewport_path_in_scene = api_core.godot_method_bind_get_method('ViewportTexture', 'set_viewport_path_in_scene')

############################Generated class###################################
cdef class ViewportTexture(classes.Texture.Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ViewportTexture")())
##################################Generated Properties#########################################
  @property
  def viewport_path(self): 
    return self.get_viewport_path()
  @viewport_path.setter 
  def viewport_path(self,value): 
    self.set_viewport_path(value)

##################################Generated Methods#########################################
  def  get_viewport_path_in_scene(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewporttexture_get_viewport_path_in_scene,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  set_viewport_path_in_scene(self,  NodePath path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_viewporttexture_set_viewport_path_in_scene,self.godot_owner,args,NULL)
    hello('hallo2')
