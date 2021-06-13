
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
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_skeleton2d__update_bone_setup
cdef godot_method_bind *bind_skeleton2d__update_transform
cdef godot_method_bind *bind_skeleton2d_get_bone
cdef godot_method_bind *bind_skeleton2d_get_bone_count
cdef godot_method_bind *bind_skeleton2d_get_skeleton
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_skeleton2d__update_bone_setup = api_core.godot_method_bind_get_method('Skeleton2D', '_update_bone_setup')
  bind_skeleton2d__update_transform = api_core.godot_method_bind_get_method('Skeleton2D', '_update_transform')
  bind_skeleton2d_get_bone = api_core.godot_method_bind_get_method('Skeleton2D', 'get_bone')
  bind_skeleton2d_get_bone_count = api_core.godot_method_bind_get_method('Skeleton2D', 'get_bone_count')
  bind_skeleton2d_get_skeleton = api_core.godot_method_bind_get_method('Skeleton2D', 'get_skeleton')

############################Generated class###################################
cdef class Skeleton2D(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Skeleton2D")())
##################################Generated Methods#########################################
  def  _update_bone_setup(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_skeleton2d__update_bone_setup,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _update_transform(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_skeleton2d__update_transform,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_bone(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_skeleton2d_get_bone,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_bone_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_skeleton2d_get_bone_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_skeleton(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_skeleton2d_get_skeleton,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

