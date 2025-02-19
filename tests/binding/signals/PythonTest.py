import unittest

from py4godot.classes.Node3D import Node3D
from TestObject import TestObject


class PythonTest(unittest.TestCase):
	test_object: TestObject

	def __init__(self, methodName='runSignalTest', test_object: TestObject=None):
		super().__init__(methodName)
		self.test_object = test_object


	def test_inbuilt_signal(self):
		# Use the test_object
		self.assertIsNotNone(self.test_object)
		self.test_object.visible = False
		self.assertTrue(self.test_object.is_visible_called)
		self.test_object.disconnect_visibility()
		self.test_object.visible = True
		self.assertTrue(self.test_object.is_visible_called) # Did not toggle
	
	def test_custom_signal_no_args(self):
		self.assertIsNotNone(self.test_object)
		self.test_object.custom_signal_no_args.emit()
		self.assertTrue(self.test_object.custom_signal_no_arg_called)
		self.test_object.disconnect_custom_signal()
		self.test_object.custom_signal_no_args.emit()
		self.assertTrue(self.test_object.custom_signal_no_arg_called) # Did not toggle
	
	def test_custom_signal_with_args(self):
		self.assertIsNotNone(self.test_object)
		self.test_object.custom_signal_with_args.emit(5)
		self.assertEqual(self.test_object.custom_signal_with_args_value, 5)
		self.test_object.disconnect_custom_signal_with_arg()
		self.test_object.custom_signal_with_args.emit()
		self.assertEqual(self.test_object.custom_signal_with_args_value, 5) # Did not change
			
