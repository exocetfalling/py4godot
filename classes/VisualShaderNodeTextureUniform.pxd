
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNodeUniform
cdef class VisualShaderNodeTextureUniform(classes.VisualShaderNodeUniform.VisualShaderNodeUniform):
    pass
ctypedef enum VisualShaderNodeTextureUniform_TextureType :TYPE_DATA, TYPE_COLOR, TYPE_NORMALMAP, TYPE_ANISO, 
ctypedef enum VisualShaderNodeTextureUniform_ColorDefault :COLOR_DEFAULT_WHITE, COLOR_DEFAULT_BLACK, 
