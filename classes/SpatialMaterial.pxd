
from enum import *
from godot_api.binding_external cimport *
cimport classes.Material
cdef class SpatialMaterial(classes.Material.Material):
    pass
ctypedef enum SpatialMaterial_EmissionOperator :EMISSION_OP_ADD, EMISSION_OP_MULTIPLY, 
ctypedef enum SpatialMaterial_DiffuseMode :DIFFUSE_BURLEY, DIFFUSE_LAMBERT, DIFFUSE_LAMBERT_WRAP, DIFFUSE_OREN_NAYAR, DIFFUSE_TOON, 
ctypedef enum SpatialMaterial_SpecularMode :SPECULAR_SCHLICK_GGX, SPECULAR_BLINN, SPECULAR_PHONG, SPECULAR_TOON, SPECULAR_DISABLED, 
ctypedef enum SpatialMaterial_Feature :FEATURE_TRANSPARENT, FEATURE_EMISSION, FEATURE_NORMAL_MAPPING, FEATURE_RIM, FEATURE_CLEARCOAT, FEATURE_ANISOTROPY, FEATURE_AMBIENT_OCCLUSION, FEATURE_DEPTH_MAPPING, FEATURE_SUBSURACE_SCATTERING, FEATURE_TRANSMISSION, FEATURE_REFRACTION, FEATURE_DETAIL, FEATURE_MAX, 
ctypedef enum SpatialMaterial_Flags :FLAG_UNSHADED, FLAG_USE_VERTEX_LIGHTING, FLAG_DISABLE_DEPTH_TEST, FLAG_ALBEDO_FROM_VERTEX_COLOR, FLAG_SRGB_VERTEX_COLOR, FLAG_USE_POINT_SIZE, FLAG_FIXED_SIZE, FLAG_BILLBOARD_KEEP_SCALE, FLAG_UV1_USE_TRIPLANAR, FLAG_UV2_USE_TRIPLANAR, FLAG_TRIPLANAR_USE_WORLD, FLAG_AO_ON_UV2, FLAG_EMISSION_ON_UV2, FLAG_USE_ALPHA_SCISSOR, FLAG_ALBEDO_TEXTURE_FORCE_SRGB, FLAG_DONT_RECEIVE_SHADOWS, FLAG_ENSURE_CORRECT_NORMALS, FLAG_DISABLE_AMBIENT_LIGHT, FLAG_USE_SHADOW_TO_OPACITY, FLAG_MAX, 
ctypedef enum SpatialMaterial_CullMode :CULL_BACK, CULL_FRONT, CULL_DISABLED, 
ctypedef enum SpatialMaterial_DetailUV :DETAIL_UV_1, DETAIL_UV_2, 
ctypedef enum SpatialMaterial_DistanceFadeMode :DISTANCE_FADE_DISABLED, DISTANCE_FADE_PIXEL_ALPHA, DISTANCE_FADE_PIXEL_DITHER, DISTANCE_FADE_OBJECT_DITHER, 
ctypedef enum SpatialMaterial_BillboardMode :BILLBOARD_DISABLED, BILLBOARD_ENABLED, BILLBOARD_FIXED_Y, BILLBOARD_PARTICLES, 
ctypedef enum SpatialMaterial_DepthDrawMode :DEPTH_DRAW_OPAQUE_ONLY, DEPTH_DRAW_ALWAYS, DEPTH_DRAW_DISABLED, DEPTH_DRAW_ALPHA_OPAQUE_PREPASS, 
ctypedef enum SpatialMaterial_TextureChannel :TEXTURE_CHANNEL_RED, TEXTURE_CHANNEL_GREEN, TEXTURE_CHANNEL_BLUE, TEXTURE_CHANNEL_ALPHA, TEXTURE_CHANNEL_GRAYSCALE, 
ctypedef enum SpatialMaterial_BlendMode :BLEND_MODE_MIX, BLEND_MODE_ADD, BLEND_MODE_SUB, BLEND_MODE_MUL, 
ctypedef enum SpatialMaterial_TextureParam :TEXTURE_ALBEDO, TEXTURE_METALLIC, TEXTURE_ROUGHNESS, TEXTURE_EMISSION, TEXTURE_NORMAL, TEXTURE_RIM, TEXTURE_CLEARCOAT, TEXTURE_FLOWMAP, TEXTURE_AMBIENT_OCCLUSION, TEXTURE_DEPTH, TEXTURE_SUBSURFACE_SCATTERING, TEXTURE_TRANSMISSION, TEXTURE_REFRACTION, TEXTURE_DETAIL_MASK, TEXTURE_DETAIL_ALBEDO, TEXTURE_DETAIL_NORMAL, TEXTURE_MAX, 
