
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode
cdef class VisualShaderNodeScalarFunc(classes.VisualShaderNode.VisualShaderNode):
    pass
ctypedef enum VisualShaderNodeScalarFunc_Function :FUNC_SIN, FUNC_COS, FUNC_TAN, FUNC_ASIN, FUNC_ACOS, FUNC_ATAN, FUNC_SINH, FUNC_COSH, FUNC_TANH, FUNC_LOG, FUNC_EXP, FUNC_SQRT, FUNC_ABS, FUNC_SIGN, FUNC_FLOOR, FUNC_ROUND, FUNC_CEIL, FUNC_FRAC, FUNC_SATURATE, FUNC_NEGATE, FUNC_ACOSH, FUNC_ASINH, FUNC_ATANH, FUNC_DEGREES, FUNC_EXP2, FUNC_INVERSE_SQRT, FUNC_LOG2, FUNC_RADIANS, FUNC_RECIPROCAL, FUNC_ROUNDEVEN, FUNC_TRUNC, FUNC_ONEMINUS, 
