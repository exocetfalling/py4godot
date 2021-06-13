
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
cimport classes.Gradient
cimport classes.Texture 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_gradienttexture__update
cdef godot_method_bind *bind_gradienttexture_get_gradient
cdef godot_method_bind *bind_gradienttexture_set_gradient
cdef godot_method_bind *bind_gradienttexture_set_width
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_gradienttexture__update = api_core.godot_method_bind_get_method('GradientTexture', '_update')
  bind_gradienttexture_get_gradient = api_core.godot_method_bind_get_method('GradientTexture', 'get_gradient')
  bind_gradienttexture_set_gradient = api_core.godot_method_bind_get_method('GradientTexture', 'set_gradient')
  bind_gradienttexture_set_width = api_core.godot_method_bind_get_method('GradientTexture', 'set_width')

############################Generated class###################################
cdef class GradientTexture(classes.Texture.Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GradientTexture")())
##################################Generated Properties#########################################
  @property
  def gradient(self): 
    return self.get_gradient()
  @gradient.setter 
  def gradient(self,value): 
    self.set_gradient(value)
  @property
  def width(self): 
    return self.get_width()
  @width.setter 
  def width(self,value): 
    self.set_width(value)

##################################Generated Methods#########################################
  def  _update(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_gradienttexture__update,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_gradient(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gradienttexture_get_gradient,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  set_gradient(self,  classes.Gradient.Gradient gradient):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = gradient.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gradienttexture_set_gradient,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_width(self,  int width):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &width
    api_core.godot_method_bind_ptrcall(bind_gradienttexture_set_width,self.godot_owner,args,NULL)
    hello('hallo2')
