
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node2D
cdef class CollisionPolygon2D(classes.Node2D.Node2D):
    pass
ctypedef enum CollisionPolygon2D_BuildMode :BUILD_SOLIDS, BUILD_SEGMENTS, 
