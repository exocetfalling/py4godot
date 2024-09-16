from typing import Any

from py4godot.classes.core import *
class GDSignal():
    @staticmethod
    def new0() -> GDSignal:pass
    @staticmethod
    def new1(from_:Signal)->GDSignal:pass
    @staticmethod
    def new2(object_:Object, signal: StringName) -> GDSignal:pass

    def connect(self, function:Any , flags:int =0) -> None:pass


    def disconnect(self, function: Any )->None: pass


class BuiltinSignal(Signal):
    def __init__(self, parent:Object, name: StringName) -> BuiltinSignal: pass
    def connect(self, function:Any, flags: int =0) -> None: pass


    def disconnect(self, function:Any )-> None: pass