
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualScriptNode
cdef class VisualScriptYieldSignal(classes.VisualScriptNode.VisualScriptNode):
    pass
ctypedef enum VisualScriptYieldSignal_CallMode :CALL_MODE_SELF, CALL_MODE_NODE_PATH, CALL_MODE_INSTANCE, 
