
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
cimport classes.AudioStream
cimport classes.Spatial 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audiostreamplayer3d__bus_layout_changed
cdef godot_method_bind *bind_audiostreamplayer3d__is_active
cdef godot_method_bind *bind_audiostreamplayer3d__set_playing
cdef godot_method_bind *bind_audiostreamplayer3d_get_area_mask
cdef godot_method_bind *bind_audiostreamplayer3d_get_attenuation_filter_cutoff_hz
cdef godot_method_bind *bind_audiostreamplayer3d_get_attenuation_filter_db
cdef godot_method_bind *bind_audiostreamplayer3d_get_attenuation_model
cdef godot_method_bind *bind_audiostreamplayer3d_get_bus
cdef godot_method_bind *bind_audiostreamplayer3d_get_doppler_tracking
cdef godot_method_bind *bind_audiostreamplayer3d_get_emission_angle
cdef godot_method_bind *bind_audiostreamplayer3d_get_emission_angle_filter_attenuation_db
cdef godot_method_bind *bind_audiostreamplayer3d_get_max_db
cdef godot_method_bind *bind_audiostreamplayer3d_get_max_distance
cdef godot_method_bind *bind_audiostreamplayer3d_get_out_of_range_mode
cdef godot_method_bind *bind_audiostreamplayer3d_get_pitch_scale
cdef godot_method_bind *bind_audiostreamplayer3d_get_playback_position
cdef godot_method_bind *bind_audiostreamplayer3d_get_stream
cdef godot_method_bind *bind_audiostreamplayer3d_get_stream_paused
cdef godot_method_bind *bind_audiostreamplayer3d_get_stream_playback
cdef godot_method_bind *bind_audiostreamplayer3d_get_unit_db
cdef godot_method_bind *bind_audiostreamplayer3d_get_unit_size
cdef godot_method_bind *bind_audiostreamplayer3d_is_autoplay_enabled
cdef godot_method_bind *bind_audiostreamplayer3d_is_emission_angle_enabled
cdef godot_method_bind *bind_audiostreamplayer3d_is_playing
cdef godot_method_bind *bind_audiostreamplayer3d_play
cdef godot_method_bind *bind_audiostreamplayer3d_seek
cdef godot_method_bind *bind_audiostreamplayer3d_set_area_mask
cdef godot_method_bind *bind_audiostreamplayer3d_set_attenuation_filter_cutoff_hz
cdef godot_method_bind *bind_audiostreamplayer3d_set_attenuation_filter_db
cdef godot_method_bind *bind_audiostreamplayer3d_set_attenuation_model
cdef godot_method_bind *bind_audiostreamplayer3d_set_autoplay
cdef godot_method_bind *bind_audiostreamplayer3d_set_bus
cdef godot_method_bind *bind_audiostreamplayer3d_set_doppler_tracking
cdef godot_method_bind *bind_audiostreamplayer3d_set_emission_angle
cdef godot_method_bind *bind_audiostreamplayer3d_set_emission_angle_enabled
cdef godot_method_bind *bind_audiostreamplayer3d_set_emission_angle_filter_attenuation_db
cdef godot_method_bind *bind_audiostreamplayer3d_set_max_db
cdef godot_method_bind *bind_audiostreamplayer3d_set_max_distance
cdef godot_method_bind *bind_audiostreamplayer3d_set_out_of_range_mode
cdef godot_method_bind *bind_audiostreamplayer3d_set_pitch_scale
cdef godot_method_bind *bind_audiostreamplayer3d_set_stream
cdef godot_method_bind *bind_audiostreamplayer3d_set_stream_paused
cdef godot_method_bind *bind_audiostreamplayer3d_set_unit_db
cdef godot_method_bind *bind_audiostreamplayer3d_set_unit_size
cdef godot_method_bind *bind_audiostreamplayer3d_stop
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audiostreamplayer3d__bus_layout_changed = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', '_bus_layout_changed')
  bind_audiostreamplayer3d__is_active = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', '_is_active')
  bind_audiostreamplayer3d__set_playing = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', '_set_playing')
  bind_audiostreamplayer3d_get_area_mask = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_area_mask')
  bind_audiostreamplayer3d_get_attenuation_filter_cutoff_hz = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_attenuation_filter_cutoff_hz')
  bind_audiostreamplayer3d_get_attenuation_filter_db = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_attenuation_filter_db')
  bind_audiostreamplayer3d_get_attenuation_model = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_attenuation_model')
  bind_audiostreamplayer3d_get_bus = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_bus')
  bind_audiostreamplayer3d_get_doppler_tracking = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_doppler_tracking')
  bind_audiostreamplayer3d_get_emission_angle = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_emission_angle')
  bind_audiostreamplayer3d_get_emission_angle_filter_attenuation_db = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_emission_angle_filter_attenuation_db')
  bind_audiostreamplayer3d_get_max_db = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_max_db')
  bind_audiostreamplayer3d_get_max_distance = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_max_distance')
  bind_audiostreamplayer3d_get_out_of_range_mode = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_out_of_range_mode')
  bind_audiostreamplayer3d_get_pitch_scale = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_pitch_scale')
  bind_audiostreamplayer3d_get_playback_position = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_playback_position')
  bind_audiostreamplayer3d_get_stream = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_stream')
  bind_audiostreamplayer3d_get_stream_paused = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_stream_paused')
  bind_audiostreamplayer3d_get_stream_playback = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_stream_playback')
  bind_audiostreamplayer3d_get_unit_db = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_unit_db')
  bind_audiostreamplayer3d_get_unit_size = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'get_unit_size')
  bind_audiostreamplayer3d_is_autoplay_enabled = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'is_autoplay_enabled')
  bind_audiostreamplayer3d_is_emission_angle_enabled = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'is_emission_angle_enabled')
  bind_audiostreamplayer3d_is_playing = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'is_playing')
  bind_audiostreamplayer3d_play = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'play')
  bind_audiostreamplayer3d_seek = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'seek')
  bind_audiostreamplayer3d_set_area_mask = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_area_mask')
  bind_audiostreamplayer3d_set_attenuation_filter_cutoff_hz = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_attenuation_filter_cutoff_hz')
  bind_audiostreamplayer3d_set_attenuation_filter_db = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_attenuation_filter_db')
  bind_audiostreamplayer3d_set_attenuation_model = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_attenuation_model')
  bind_audiostreamplayer3d_set_autoplay = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_autoplay')
  bind_audiostreamplayer3d_set_bus = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_bus')
  bind_audiostreamplayer3d_set_doppler_tracking = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_doppler_tracking')
  bind_audiostreamplayer3d_set_emission_angle = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_emission_angle')
  bind_audiostreamplayer3d_set_emission_angle_enabled = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_emission_angle_enabled')
  bind_audiostreamplayer3d_set_emission_angle_filter_attenuation_db = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_emission_angle_filter_attenuation_db')
  bind_audiostreamplayer3d_set_max_db = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_max_db')
  bind_audiostreamplayer3d_set_max_distance = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_max_distance')
  bind_audiostreamplayer3d_set_out_of_range_mode = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_out_of_range_mode')
  bind_audiostreamplayer3d_set_pitch_scale = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_pitch_scale')
  bind_audiostreamplayer3d_set_stream = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_stream')
  bind_audiostreamplayer3d_set_stream_paused = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_stream_paused')
  bind_audiostreamplayer3d_set_unit_db = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_unit_db')
  bind_audiostreamplayer3d_set_unit_size = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'set_unit_size')
  bind_audiostreamplayer3d_stop = api_core.godot_method_bind_get_method('AudioStreamPlayer3D', 'stop')

############################Generated class###################################
cdef class AudioStreamPlayer3D(classes.Spatial.Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioStreamPlayer3D")())
##################################Generated Properties#########################################
  @property
  def area_mask(self): 
    return self.get_area_mask()
  @area_mask.setter 
  def area_mask(self,value): 
    self.set_area_mask(value)
  @property
  def attenuation_filter_cutoff_hz(self): 
    return self.get_attenuation_filter_cutoff_hz()
  @attenuation_filter_cutoff_hz.setter 
  def attenuation_filter_cutoff_hz(self,value): 
    self.set_attenuation_filter_cutoff_hz(value)
  @property
  def attenuation_filter_db(self): 
    return self.get_attenuation_filter_db()
  @attenuation_filter_db.setter 
  def attenuation_filter_db(self,value): 
    self.set_attenuation_filter_db(value)
  @property
  def attenuation_model(self): 
    return self.get_attenuation_model()
  @attenuation_model.setter 
  def attenuation_model(self,value): 
    self.set_attenuation_model(value)
  @property
  def autoplay(self): 
    return self.get_autoplay()
  @autoplay.setter 
  def autoplay(self,value): 
    self.set_autoplay(value)
  @property
  def bus(self): 
    return self.get_bus()
  @bus.setter 
  def bus(self,value): 
    self.set_bus(value)
  @property
  def doppler_tracking(self): 
    return self.get_doppler_tracking()
  @doppler_tracking.setter 
  def doppler_tracking(self,value): 
    self.set_doppler_tracking(value)
  @property
  def emission_angle_degrees(self): 
    return self.get_emission_angle_degrees()
  @emission_angle_degrees.setter 
  def emission_angle_degrees(self,value): 
    self.set_emission_angle_degrees(value)
  @property
  def emission_angle_enabled(self): 
    return self.get_emission_angle_enabled()
  @emission_angle_enabled.setter 
  def emission_angle_enabled(self,value): 
    self.set_emission_angle_enabled(value)
  @property
  def emission_angle_filter_attenuation_db(self): 
    return self.get_emission_angle_filter_attenuation_db()
  @emission_angle_filter_attenuation_db.setter 
  def emission_angle_filter_attenuation_db(self,value): 
    self.set_emission_angle_filter_attenuation_db(value)
  @property
  def max_db(self): 
    return self.get_max_db()
  @max_db.setter 
  def max_db(self,value): 
    self.set_max_db(value)
  @property
  def max_distance(self): 
    return self.get_max_distance()
  @max_distance.setter 
  def max_distance(self,value): 
    self.set_max_distance(value)
  @property
  def out_of_range_mode(self): 
    return self.get_out_of_range_mode()
  @out_of_range_mode.setter 
  def out_of_range_mode(self,value): 
    self.set_out_of_range_mode(value)
  @property
  def pitch_scale(self): 
    return self.get_pitch_scale()
  @pitch_scale.setter 
  def pitch_scale(self,value): 
    self.set_pitch_scale(value)
  @property
  def playing(self): 
    return self.get_playing()
  @playing.setter 
  def playing(self,value): 
    self.set_playing(value)
  @property
  def stream(self): 
    return self.get_stream()
  @stream.setter 
  def stream(self,value): 
    self.set_stream(value)
  @property
  def stream_paused(self): 
    return self.get_stream_paused()
  @stream_paused.setter 
  def stream_paused(self,value): 
    self.set_stream_paused(value)
  @property
  def unit_db(self): 
    return self.get_unit_db()
  @unit_db.setter 
  def unit_db(self,value): 
    self.set_unit_db(value)
  @property
  def unit_size(self): 
    return self.get_unit_size()
  @unit_size.setter 
  def unit_size(self,value): 
    self.set_unit_size(value)

##################################Generated Methods#########################################
  def  _bus_layout_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d__bus_layout_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _is_active(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d__is_active,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _set_playing(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d__set_playing,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_area_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_area_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_attenuation_filter_cutoff_hz(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_attenuation_filter_cutoff_hz,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_attenuation_filter_db(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_attenuation_filter_db,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_attenuation_model(self):
    cdef godot_object *_owner = self.godot_owner

    cdef AudioStreamPlayer3D_AttenuationModel* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_attenuation_model,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bus(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_bus,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_doppler_tracking(self):
    cdef godot_object *_owner = self.godot_owner

    cdef AudioStreamPlayer3D_DopplerTracking* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_doppler_tracking,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_emission_angle(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_emission_angle,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_emission_angle_filter_attenuation_db(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_emission_angle_filter_attenuation_db,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_max_db(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_max_db,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_max_distance(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_max_distance,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_out_of_range_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef AudioStreamPlayer3D_OutOfRangeMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_out_of_range_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_pitch_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_pitch_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_playback_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_playback_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_stream(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_stream,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_stream_paused(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_stream_paused,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_stream_playback(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_stream_playback,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_unit_db(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_unit_db,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_unit_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_get_unit_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_autoplay_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_is_autoplay_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_emission_angle_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_is_emission_angle_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_playing(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_is_playing,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  play(self,  float from_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &from_position
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_play,self.godot_owner,args,NULL)
    hello('hallo2')
  def  seek(self,  float to_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &to_position
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_seek,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_area_mask(self,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_area_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_attenuation_filter_cutoff_hz(self,  float degrees):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &degrees
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_attenuation_filter_cutoff_hz,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_attenuation_filter_db(self,  float db):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &db
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_attenuation_filter_db,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_attenuation_model(self,  int model):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &model
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_attenuation_model,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_autoplay(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_autoplay,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bus(self,  String bus):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bus._native
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_bus,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_doppler_tracking(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_doppler_tracking,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_emission_angle(self,  float degrees):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &degrees
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_emission_angle,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_emission_angle_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_emission_angle_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_emission_angle_filter_attenuation_db(self,  float db):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &db
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_emission_angle_filter_attenuation_db,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_max_db(self,  float max_db):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &max_db
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_max_db,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_max_distance(self,  float metres):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &metres
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_max_distance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_out_of_range_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_out_of_range_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pitch_scale(self,  float pitch_scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pitch_scale
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_pitch_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_stream(self,  classes.AudioStream.AudioStream stream):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = stream.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_stream,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_stream_paused(self,  bool pause):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pause
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_stream_paused,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_unit_db(self,  float unit_db):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &unit_db
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_unit_db,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_unit_size(self,  float unit_size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &unit_size
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_set_unit_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  stop(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer3d_stop,self.godot_owner,NULL,NULL)
    hello('hallo2')
