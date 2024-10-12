
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from macros import hint, warning, newLit, getSize

#from os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

type
  enum_ConfigFlags_520094297* {.size: sizeof(cuint).} = enum
    FLAG_FULLSCREEN_MODE = 2, FLAG_WINDOW_RESIZABLE = 4,
    FLAG_WINDOW_UNDECORATED = 8, FLAG_WINDOW_TRANSPARENT = 16,
    FLAG_MSAA_4X_HINT = 32, FLAG_VSYNC_HINT = 64, FLAG_WINDOW_HIDDEN = 128,
    FLAG_WINDOW_ALWAYS_RUN = 256, FLAG_WINDOW_MINIMIZED = 512,
    FLAG_WINDOW_MAXIMIZED = 1024, FLAG_WINDOW_UNFOCUSED = 2048,
    FLAG_WINDOW_TOPMOST = 4096, FLAG_WINDOW_HIGHDPI = 8192,
    FLAG_WINDOW_MOUSE_PASSTHROUGH = 16384,
    FLAG_BORDERLESS_WINDOWED_MODE = 32768, FLAG_INTERLACED_HINT = 65536
type
  enum_TraceLogLevel_520094301* {.size: sizeof(cuint).} = enum
    LOG_ALL = 0, LOG_TRACE = 1, LOG_DEBUG = 2, LOG_INFO = 3, LOG_WARNING = 4,
    LOG_ERROR = 5, LOG_FATAL = 6, LOG_NONE = 7
type
  enum_KeyboardKey_520094305* {.size: sizeof(cuint).} = enum
    KEY_NULL = 0, KEY_BACK = 4, KEY_MENU = 5, KEY_VOLUME_UP = 24,
    KEY_VOLUME_DOWN = 25, KEY_SPACE = 32, KEY_APOSTROPHE = 39, KEY_COMMA = 44,
    KEY_MINUS = 45, KEY_PERIOD = 46, KEY_SLASH = 47, KEY_ZERO = 48,
    KEY_ONE = 49, KEY_TWO = 50, KEY_THREE = 51, KEY_FOUR = 52, KEY_FIVE = 53,
    KEY_SIX = 54, KEY_SEVEN = 55, KEY_EIGHT = 56, KEY_NINE = 57,
    KEY_SEMICOLON = 59, KEY_EQUAL = 61, KEY_A = 65, KEY_B = 66, KEY_C = 67,
    KEY_D = 68, KEY_E = 69, KEY_F = 70, KEY_G = 71, KEY_H = 72, KEY_I = 73,
    KEY_J = 74, KEY_K = 75, KEY_L = 76, KEY_M = 77, KEY_N = 78, KEY_O = 79,
    KEY_P = 80, KEY_Q = 81, KEY_R = 82, KEY_S = 83, KEY_T = 84, KEY_U = 85,
    KEY_V = 86, KEY_W = 87, KEY_X = 88, KEY_Y = 89, KEY_Z = 90,
    KEY_LEFT_BRACKET = 91, KEY_BACKSLASH = 92, KEY_RIGHT_BRACKET = 93,
    KEY_GRAVE = 96, KEY_ESCAPE = 256, KEY_ENTER = 257, KEY_TAB = 258,
    KEY_BACKSPACE = 259, KEY_INSERT = 260, KEY_DELETE = 261, KEY_RIGHT = 262,
    KEY_LEFT = 263, KEY_DOWN = 264, KEY_UP = 265, KEY_PAGE_UP = 266,
    KEY_PAGE_DOWN = 267, KEY_HOME = 268, KEY_END = 269, KEY_CAPS_LOCK = 280,
    KEY_SCROLL_LOCK = 281, KEY_NUM_LOCK = 282, KEY_PRINT_SCREEN = 283,
    KEY_PAUSE = 284, KEY_F1 = 290, KEY_F2 = 291, KEY_F3 = 292, KEY_F4 = 293,
    KEY_F5 = 294, KEY_F6 = 295, KEY_F7 = 296, KEY_F8 = 297, KEY_F9 = 298,
    KEY_F10 = 299, KEY_F11 = 300, KEY_F12 = 301, KEY_KP_0 = 320, KEY_KP_1 = 321,
    KEY_KP_2 = 322, KEY_KP_3 = 323, KEY_KP_4 = 324, KEY_KP_5 = 325,
    KEY_KP_6 = 326, KEY_KP_7 = 327, KEY_KP_8 = 328, KEY_KP_9 = 329,
    KEY_KP_DECIMAL = 330, KEY_KP_DIVIDE = 331, KEY_KP_MULTIPLY = 332,
    KEY_KP_SUBTRACT = 333, KEY_KP_ADD = 334, KEY_KP_ENTER = 335,
    KEY_KP_EQUAL = 336, KEY_LEFT_SHIFT = 340, KEY_LEFT_CONTROL = 341,
    KEY_LEFT_ALT = 342, KEY_LEFT_SUPER = 343, KEY_RIGHT_SHIFT = 344,
    KEY_RIGHT_CONTROL = 345, KEY_RIGHT_ALT = 346, KEY_RIGHT_SUPER = 347,
    KEY_KB_MENU = 348
type
  enum_MouseButton_520094309* {.size: sizeof(cuint).} = enum
    MOUSE_BUTTON_LEFT = 0, MOUSE_BUTTON_RIGHT = 1, MOUSE_BUTTON_MIDDLE = 2,
    MOUSE_BUTTON_SIDE = 3, MOUSE_BUTTON_EXTRA = 4, MOUSE_BUTTON_FORWARD = 5,
    MOUSE_BUTTON_BACK = 6
type
  enum_MouseCursor_520094313* {.size: sizeof(cuint).} = enum
    MOUSE_CURSOR_DEFAULT = 0, MOUSE_CURSOR_ARROW = 1, MOUSE_CURSOR_IBEAM = 2,
    MOUSE_CURSOR_CROSSHAIR = 3, MOUSE_CURSOR_POINTING_HAND = 4,
    MOUSE_CURSOR_RESIZE_EW = 5, MOUSE_CURSOR_RESIZE_NS = 6,
    MOUSE_CURSOR_RESIZE_NWSE = 7, MOUSE_CURSOR_RESIZE_NESW = 8,
    MOUSE_CURSOR_RESIZE_ALL = 9, MOUSE_CURSOR_NOT_ALLOWED = 10
type
  enum_GamepadButton_520094317* {.size: sizeof(cuint).} = enum
    GAMEPAD_BUTTON_UNKNOWN = 0, GAMEPAD_BUTTON_LEFT_FACE_UP = 1,
    GAMEPAD_BUTTON_LEFT_FACE_RIGHT = 2, GAMEPAD_BUTTON_LEFT_FACE_DOWN = 3,
    GAMEPAD_BUTTON_LEFT_FACE_LEFT = 4, GAMEPAD_BUTTON_RIGHT_FACE_UP = 5,
    GAMEPAD_BUTTON_RIGHT_FACE_RIGHT = 6, GAMEPAD_BUTTON_RIGHT_FACE_DOWN = 7,
    GAMEPAD_BUTTON_RIGHT_FACE_LEFT = 8, GAMEPAD_BUTTON_LEFT_TRIGGER_1 = 9,
    GAMEPAD_BUTTON_LEFT_TRIGGER_2 = 10, GAMEPAD_BUTTON_RIGHT_TRIGGER_1 = 11,
    GAMEPAD_BUTTON_RIGHT_TRIGGER_2 = 12, GAMEPAD_BUTTON_MIDDLE_LEFT = 13,
    GAMEPAD_BUTTON_MIDDLE = 14, GAMEPAD_BUTTON_MIDDLE_RIGHT = 15,
    GAMEPAD_BUTTON_LEFT_THUMB = 16, GAMEPAD_BUTTON_RIGHT_THUMB = 17
type
  enum_GamepadAxis_520094321* {.size: sizeof(cuint).} = enum
    GAMEPAD_AXIS_LEFT_X = 0, GAMEPAD_AXIS_LEFT_Y = 1, GAMEPAD_AXIS_RIGHT_X = 2,
    GAMEPAD_AXIS_RIGHT_Y = 3, GAMEPAD_AXIS_LEFT_TRIGGER = 4,
    GAMEPAD_AXIS_RIGHT_TRIGGER = 5
type
  enum_MaterialMapIndex_520094325* {.size: sizeof(cuint).} = enum
    MATERIAL_MAP_ALBEDO = 0, MATERIAL_MAP_METALNESS = 1,
    MATERIAL_MAP_NORMAL = 2, MATERIAL_MAP_ROUGHNESS = 3,
    MATERIAL_MAP_OCCLUSION = 4, MATERIAL_MAP_EMISSION = 5,
    MATERIAL_MAP_HEIGHT = 6, MATERIAL_MAP_CUBEMAP = 7,
    MATERIAL_MAP_IRRADIANCE = 8, MATERIAL_MAP_PREFILTER = 9,
    MATERIAL_MAP_BRDF = 10
type
  enum_ShaderLocationIndex_520094329* {.size: sizeof(cuint).} = enum
    SHADER_LOC_VERTEX_POSITION = 0, SHADER_LOC_VERTEX_TEXCOORD01 = 1,
    SHADER_LOC_VERTEX_TEXCOORD02 = 2, SHADER_LOC_VERTEX_NORMAL = 3,
    SHADER_LOC_VERTEX_TANGENT = 4, SHADER_LOC_VERTEX_COLOR = 5,
    SHADER_LOC_MATRIX_MVP = 6, SHADER_LOC_MATRIX_VIEW = 7,
    SHADER_LOC_MATRIX_PROJECTION = 8, SHADER_LOC_MATRIX_MODEL = 9,
    SHADER_LOC_MATRIX_NORMAL = 10, SHADER_LOC_VECTOR_VIEW = 11,
    SHADER_LOC_COLOR_DIFFUSE = 12, SHADER_LOC_COLOR_SPECULAR = 13,
    SHADER_LOC_COLOR_AMBIENT = 14, SHADER_LOC_MAP_ALBEDO = 15,
    SHADER_LOC_MAP_METALNESS = 16, SHADER_LOC_MAP_NORMAL = 17,
    SHADER_LOC_MAP_ROUGHNESS = 18, SHADER_LOC_MAP_OCCLUSION = 19,
    SHADER_LOC_MAP_EMISSION = 20, SHADER_LOC_MAP_HEIGHT = 21,
    SHADER_LOC_MAP_CUBEMAP = 22, SHADER_LOC_MAP_IRRADIANCE = 23,
    SHADER_LOC_MAP_PREFILTER = 24, SHADER_LOC_MAP_BRDF = 25
type
  enum_ShaderUniformDataType_520094333* {.size: sizeof(cuint).} = enum
    SHADER_UNIFORM_FLOAT = 0, SHADER_UNIFORM_VEC2 = 1, SHADER_UNIFORM_VEC3 = 2,
    SHADER_UNIFORM_VEC4 = 3, SHADER_UNIFORM_INT = 4, SHADER_UNIFORM_IVEC2 = 5,
    SHADER_UNIFORM_IVEC3 = 6, SHADER_UNIFORM_IVEC4 = 7,
    SHADER_UNIFORM_SAMPLER2D = 8
type
  enum_ShaderAttributeDataType_520094337* {.size: sizeof(cuint).} = enum
    SHADER_ATTRIB_FLOAT = 0, SHADER_ATTRIB_VEC2 = 1, SHADER_ATTRIB_VEC3 = 2,
    SHADER_ATTRIB_VEC4 = 3
type
  enum_PixelFormat_520094341* {.size: sizeof(cuint).} = enum
    PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = 1,
    PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA = 2,
    PIXELFORMAT_UNCOMPRESSED_R5G6B5 = 3, PIXELFORMAT_UNCOMPRESSED_R8G8B8 = 4,
    PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 = 5,
    PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 = 6,
    PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 = 7, PIXELFORMAT_UNCOMPRESSED_R32 = 8,
    PIXELFORMAT_UNCOMPRESSED_R32G32B32 = 9,
    PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 = 10,
    PIXELFORMAT_UNCOMPRESSED_R16 = 11, PIXELFORMAT_UNCOMPRESSED_R16G16B16 = 12,
    PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 = 13,
    PIXELFORMAT_COMPRESSED_DXT1_RGB = 14, PIXELFORMAT_COMPRESSED_DXT1_RGBA = 15,
    PIXELFORMAT_COMPRESSED_DXT3_RGBA = 16,
    PIXELFORMAT_COMPRESSED_DXT5_RGBA = 17, PIXELFORMAT_COMPRESSED_ETC1_RGB = 18,
    PIXELFORMAT_COMPRESSED_ETC2_RGB = 19,
    PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA = 20,
    PIXELFORMAT_COMPRESSED_PVRT_RGB = 21, PIXELFORMAT_COMPRESSED_PVRT_RGBA = 22,
    PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA = 23,
    PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA = 24
type
  enum_TextureFilter_520094345* {.size: sizeof(cuint).} = enum
    TEXTURE_FILTER_POINT = 0, TEXTURE_FILTER_BILINEAR = 1,
    TEXTURE_FILTER_TRILINEAR = 2, TEXTURE_FILTER_ANISOTROPIC_4X = 3,
    TEXTURE_FILTER_ANISOTROPIC_8X = 4, TEXTURE_FILTER_ANISOTROPIC_16X = 5
type
  enum_TextureWrap_520094349* {.size: sizeof(cuint).} = enum
    TEXTURE_WRAP_REPEAT = 0, TEXTURE_WRAP_CLAMP = 1,
    TEXTURE_WRAP_MIRROR_REPEAT = 2, TEXTURE_WRAP_MIRROR_CLAMP = 3
type
  enum_CubemapLayout_520094353* {.size: sizeof(cuint).} = enum
    CUBEMAP_LAYOUT_AUTO_DETECT = 0, CUBEMAP_LAYOUT_LINE_VERTICAL = 1,
    CUBEMAP_LAYOUT_LINE_HORIZONTAL = 2, CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR = 3,
    CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE = 4, CUBEMAP_LAYOUT_PANORAMA = 5
type
  enum_FontType_520094357* {.size: sizeof(cuint).} = enum
    FONT_DEFAULT = 0, FONT_BITMAP = 1, FONT_SDF = 2
type
  enum_BlendMode_520094361* {.size: sizeof(cuint).} = enum
    BLEND_ALPHA = 0, BLEND_ADDITIVE = 1, BLEND_MULTIPLIED = 2,
    BLEND_ADD_COLORS = 3, BLEND_SUBTRACT_COLORS = 4,
    BLEND_ALPHA_PREMULTIPLY = 5, BLEND_CUSTOM = 6, BLEND_CUSTOM_SEPARATE = 7
type
  enum_Gesture_520094365* {.size: sizeof(cuint).} = enum
    GESTURE_NONE = 0, GESTURE_TAP = 1, GESTURE_DOUBLETAP = 2, GESTURE_HOLD = 4,
    GESTURE_DRAG = 8, GESTURE_SWIPE_RIGHT = 16, GESTURE_SWIPE_LEFT = 32,
    GESTURE_SWIPE_UP = 64, GESTURE_SWIPE_DOWN = 128, GESTURE_PINCH_IN = 256,
    GESTURE_PINCH_OUT = 512
type
  enum_CameraMode_520094369* {.size: sizeof(cuint).} = enum
    CAMERA_CUSTOM = 0, CAMERA_FREE = 1, CAMERA_ORBITAL = 2,
    CAMERA_FIRST_PERSON = 3, CAMERA_THIRD_PERSON = 4
type
  enum_CameraProjection_520094373* {.size: sizeof(cuint).} = enum
    CAMERA_PERSPECTIVE = 0, CAMERA_ORTHOGRAPHIC = 1
type
  enum_NPatchLayout_520094377* {.size: sizeof(cuint).} = enum
    NPATCH_NINE_PATCH = 0, NPATCH_THREE_PATCH_VERTICAL = 1,
    NPATCH_THREE_PATCH_HORIZONTAL = 2
type
  enum_rlGlVersion_520094557* {.size: sizeof(cuint).} = enum
    RL_OPENGL_11 = 1, RL_OPENGL_21 = 2, RL_OPENGL_33 = 3, RL_OPENGL_43 = 4,
    RL_OPENGL_ES_20 = 5, RL_OPENGL_ES_30 = 6
type
  enum_rlTraceLogLevel_520094561* {.size: sizeof(cuint).} = enum
    RL_LOG_ALL = 0, RL_LOG_TRACE = 1, RL_LOG_DEBUG = 2, RL_LOG_INFO = 3,
    RL_LOG_WARNING = 4, RL_LOG_ERROR = 5, RL_LOG_FATAL = 6, RL_LOG_NONE = 7
type
  enum_rlPixelFormat_520094565* {.size: sizeof(cuint).} = enum
    RL_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = 1,
    RL_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA = 2,
    RL_PIXELFORMAT_UNCOMPRESSED_R5G6B5 = 3,
    RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8 = 4,
    RL_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 = 5,
    RL_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 = 6,
    RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 = 7,
    RL_PIXELFORMAT_UNCOMPRESSED_R32 = 8,
    RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32 = 9,
    RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 = 10,
    RL_PIXELFORMAT_UNCOMPRESSED_R16 = 11,
    RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16 = 12,
    RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 = 13,
    RL_PIXELFORMAT_COMPRESSED_DXT1_RGB = 14,
    RL_PIXELFORMAT_COMPRESSED_DXT1_RGBA = 15,
    RL_PIXELFORMAT_COMPRESSED_DXT3_RGBA = 16,
    RL_PIXELFORMAT_COMPRESSED_DXT5_RGBA = 17,
    RL_PIXELFORMAT_COMPRESSED_ETC1_RGB = 18,
    RL_PIXELFORMAT_COMPRESSED_ETC2_RGB = 19,
    RL_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA = 20,
    RL_PIXELFORMAT_COMPRESSED_PVRT_RGB = 21,
    RL_PIXELFORMAT_COMPRESSED_PVRT_RGBA = 22,
    RL_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA = 23,
    RL_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA = 24
type
  enum_rlTextureFilter_520094569* {.size: sizeof(cuint).} = enum
    RL_TEXTURE_FILTER_POINT = 0, RL_TEXTURE_FILTER_BILINEAR = 1,
    RL_TEXTURE_FILTER_TRILINEAR = 2, RL_TEXTURE_FILTER_ANISOTROPIC_4X = 3,
    RL_TEXTURE_FILTER_ANISOTROPIC_8X = 4, RL_TEXTURE_FILTER_ANISOTROPIC_16X = 5
type
  enum_rlBlendMode_520094573* {.size: sizeof(cuint).} = enum
    RL_BLEND_ALPHA = 0, RL_BLEND_ADDITIVE = 1, RL_BLEND_MULTIPLIED = 2,
    RL_BLEND_ADD_COLORS = 3, RL_BLEND_SUBTRACT_COLORS = 4,
    RL_BLEND_ALPHA_PREMULTIPLY = 5, RL_BLEND_CUSTOM = 6,
    RL_BLEND_CUSTOM_SEPARATE = 7
type
  enum_rlShaderLocationIndex_520094577* {.size: sizeof(cuint).} = enum
    RL_SHADER_LOC_VERTEX_POSITION = 0, RL_SHADER_LOC_VERTEX_TEXCOORD01 = 1,
    RL_SHADER_LOC_VERTEX_TEXCOORD02 = 2, RL_SHADER_LOC_VERTEX_NORMAL = 3,
    RL_SHADER_LOC_VERTEX_TANGENT = 4, RL_SHADER_LOC_VERTEX_COLOR = 5,
    RL_SHADER_LOC_MATRIX_MVP = 6, RL_SHADER_LOC_MATRIX_VIEW = 7,
    RL_SHADER_LOC_MATRIX_PROJECTION = 8, RL_SHADER_LOC_MATRIX_MODEL = 9,
    RL_SHADER_LOC_MATRIX_NORMAL = 10, RL_SHADER_LOC_VECTOR_VIEW = 11,
    RL_SHADER_LOC_COLOR_DIFFUSE = 12, RL_SHADER_LOC_COLOR_SPECULAR = 13,
    RL_SHADER_LOC_COLOR_AMBIENT = 14, RL_SHADER_LOC_MAP_ALBEDO = 15,
    RL_SHADER_LOC_MAP_METALNESS = 16, RL_SHADER_LOC_MAP_NORMAL = 17,
    RL_SHADER_LOC_MAP_ROUGHNESS = 18, RL_SHADER_LOC_MAP_OCCLUSION = 19,
    RL_SHADER_LOC_MAP_EMISSION = 20, RL_SHADER_LOC_MAP_HEIGHT = 21,
    RL_SHADER_LOC_MAP_CUBEMAP = 22, RL_SHADER_LOC_MAP_IRRADIANCE = 23,
    RL_SHADER_LOC_MAP_PREFILTER = 24, RL_SHADER_LOC_MAP_BRDF = 25
type
  enum_rlShaderUniformDataType_520094581* {.size: sizeof(cuint).} = enum
    RL_SHADER_UNIFORM_FLOAT = 0, RL_SHADER_UNIFORM_VEC2 = 1,
    RL_SHADER_UNIFORM_VEC3 = 2, RL_SHADER_UNIFORM_VEC4 = 3,
    RL_SHADER_UNIFORM_INT = 4, RL_SHADER_UNIFORM_IVEC2 = 5,
    RL_SHADER_UNIFORM_IVEC3 = 6, RL_SHADER_UNIFORM_IVEC4 = 7,
    RL_SHADER_UNIFORM_SAMPLER2D = 8
type
  enum_rlShaderAttributeDataType_520094585* {.size: sizeof(cuint).} = enum
    RL_SHADER_ATTRIB_FLOAT = 0, RL_SHADER_ATTRIB_VEC2 = 1,
    RL_SHADER_ATTRIB_VEC3 = 2, RL_SHADER_ATTRIB_VEC4 = 3
type
  enum_rlFramebufferAttachType_520094589* {.size: sizeof(cuint).} = enum
    RL_ATTACHMENT_COLOR_CHANNEL0 = 0, RL_ATTACHMENT_COLOR_CHANNEL1 = 1,
    RL_ATTACHMENT_COLOR_CHANNEL2 = 2, RL_ATTACHMENT_COLOR_CHANNEL3 = 3,
    RL_ATTACHMENT_COLOR_CHANNEL4 = 4, RL_ATTACHMENT_COLOR_CHANNEL5 = 5,
    RL_ATTACHMENT_COLOR_CHANNEL6 = 6, RL_ATTACHMENT_COLOR_CHANNEL7 = 7,
    RL_ATTACHMENT_DEPTH = 100, RL_ATTACHMENT_STENCIL = 200
type
  enum_rlFramebufferAttachTextureType_520094593* {.size: sizeof(cuint).} = enum
    RL_ATTACHMENT_CUBEMAP_POSITIVE_X = 0, RL_ATTACHMENT_CUBEMAP_NEGATIVE_X = 1,
    RL_ATTACHMENT_CUBEMAP_POSITIVE_Y = 2, RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y = 3,
    RL_ATTACHMENT_CUBEMAP_POSITIVE_Z = 4, RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z = 5,
    RL_ATTACHMENT_TEXTURE2D = 100, RL_ATTACHMENT_RENDERBUFFER = 200
type
  enum_rlCullMode_520094597* {.size: sizeof(cuint).} = enum
    RL_CULL_FACE_FRONT = 0, RL_CULL_FACE_BACK = 1
when not declared(long):
  type
    long* = object
else:
  static :
    hint("Declaration of " & "long" & " already exists, not redeclaring")
when not declared(struct_locale_t):
  type
    struct_locale_t* = object
else:
  static :
    hint("Declaration of " & "struct_locale_t" &
        " already exists, not redeclaring")
when not declared(struct_rAudioProcessor):
  type
    struct_rAudioProcessor* = object
else:
  static :
    hint("Declaration of " & "struct_rAudioProcessor" &
        " already exists, not redeclaring")
when not declared(volatile):
  type
    volatile* = object
else:
  static :
    hint("Declaration of " & "volatile" & " already exists, not redeclaring")
when not declared(compiler_INT_MAX_private):
  type
    compiler_INT_MAX_private* = object
else:
  static :
    hint("Declaration of " & "compiler_INT_MAX_private" &
        " already exists, not redeclaring")
when not declared(struct_rAudioBuffer):
  type
    struct_rAudioBuffer* = object
else:
  static :
    hint("Declaration of " & "struct_rAudioBuffer" &
        " already exists, not redeclaring")
when not declared(compiler_builtin_va_list):
  type
    compiler_builtin_va_list* = object
else:
  static :
    hint("Declaration of " & "compiler_builtin_va_list" &
        " already exists, not redeclaring")
when not declared(inline):
  type
    inline* = object
else:
  static :
    hint("Declaration of " & "inline" & " already exists, not redeclaring")
when not declared(compiler_FLT_EVAL_METHOD_private):
  type
    compiler_FLT_EVAL_METHOD_private* = object
else:
  static :
    hint("Declaration of " & "compiler_FLT_EVAL_METHOD_private" &
        " already exists, not redeclaring")
when not declared(restrict):
  type
    restrict* = object
else:
  static :
    hint("Declaration of " & "restrict" & " already exists, not redeclaring")
when not declared(signed):
  type
    signed* = object
else:
  static :
    hint("Declaration of " & "signed" & " already exists, not redeclaring")
type
  struct_Vector2_520094140 {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:209:16
    y*: cfloat
  Vector2_520094142 = struct_Vector2_520094141 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:212:3
  struct_Vector3_520094144 {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:215:16
    y*: cfloat
    z*: cfloat
  Vector3_520094146 = struct_Vector3_520094145 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:219:3
  struct_Vector4_520094148 {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:222:16
    y*: cfloat
    z*: cfloat
    w*: cfloat
  Vector4_520094150 = struct_Vector4_520094149 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:227:3
  Quaternion_520094152 = Vector4_520094151 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:230:17
  struct_Matrix_520094154 {.pure, inheritable, bycopy.} = object
    m0*: cfloat              ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:233:16
    m4*: cfloat
    m8*: cfloat
    m12*: cfloat
    m1*: cfloat
    m5*: cfloat
    m9*: cfloat
    m13*: cfloat
    m2*: cfloat
    m6*: cfloat
    m10*: cfloat
    m14*: cfloat
    m3*: cfloat
    m7*: cfloat
    m11*: cfloat
    m15*: cfloat
  Matrix_520094156 = struct_Matrix_520094155 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:238:3
  struct_Color_520094158 {.pure, inheritable, bycopy.} = object
    r*: uint8                ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:241:16
    g*: uint8
    b*: uint8
    a*: uint8
  Color_520094160 = struct_Color_520094159 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:246:3
  struct_Rectangle_520094162 {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:249:16
    y*: cfloat
    width*: cfloat
    height*: cfloat
  Rectangle_520094164 = struct_Rectangle_520094163 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:254:3
  struct_Image_520094166 {.pure, inheritable, bycopy.} = object
    data*: pointer           ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:257:16
    width*: cint
    height*: cint
    mipmaps*: cint
    format*: cint
  Image_520094168 = struct_Image_520094167 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:263:3
  struct_Texture_520094170 {.pure, inheritable, bycopy.} = object
    id*: cuint               ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:266:16
    width*: cint
    height*: cint
    mipmaps*: cint
    format*: cint
  Texture_520094172 = struct_Texture_520094171 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:272:3
  Texture2D_520094174 = Texture_520094173 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:275:17
  TextureCubemap_520094176 = Texture_520094173 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:278:17
  struct_RenderTexture_520094178 {.pure, inheritable, bycopy.} = object
    id*: cuint               ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:281:16
    texture*: Texture_520094173
    depth*: Texture_520094173
  RenderTexture_520094180 = struct_RenderTexture_520094179 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:285:3
  RenderTexture2D_520094182 = RenderTexture_520094181 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:288:23
  struct_NPatchInfo_520094184 {.pure, inheritable, bycopy.} = object
    source*: Rectangle_520094165 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:291:16
    left*: cint
    top*: cint
    right*: cint
    bottom*: cint
    layout*: cint
  NPatchInfo_520094186 = struct_NPatchInfo_520094185 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:298:3
  struct_GlyphInfo_520094188 {.pure, inheritable, bycopy.} = object
    value*: cint             ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:301:16
    offsetX*: cint
    offsetY*: cint
    advanceX*: cint
    image*: Image_520094169
  GlyphInfo_520094190 = struct_GlyphInfo_520094189 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:307:3
  struct_Font_520094199 {.pure, inheritable, bycopy.} = object
    baseSize*: cint          ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:310:16
    glyphCount*: cint
    glyphPadding*: cint
    texture*: Texture2D_520094175
    recs*: ptr Rectangle_520094165
    glyphs*: ptr GlyphInfo_520094191
  Font_520094201 = struct_Font_520094200 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:317:3
  struct_Camera3D_520094203 {.pure, inheritable, bycopy.} = object
    position*: Vector3_520094147 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:320:16
    target*: Vector3_520094147
    up*: Vector3_520094147
    fovy*: cfloat
    projection*: cint
  Camera3D_520094205 = struct_Camera3D_520094204 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:326:3
  Camera_520094207 = Camera3D_520094206 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:328:18
  struct_Camera2D_520094209 {.pure, inheritable, bycopy.} = object
    offset*: Vector2_520094143 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:331:16
    target*: Vector2_520094143
    rotation*: cfloat
    zoom*: cfloat
  Camera2D_520094211 = struct_Camera2D_520094210 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:336:3
  struct_Mesh_520094213 {.pure, inheritable, bycopy.} = object
    vertexCount*: cint       ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:339:16
    triangleCount*: cint
    vertices*: ptr cfloat
    texcoords*: ptr cfloat
    texcoords2*: ptr cfloat
    normals*: ptr cfloat
    tangents*: ptr cfloat
    colors*: ptr uint8
    indices*: ptr cushort
    animVertices*: ptr cfloat
    animNormals*: ptr cfloat
    boneIds*: ptr uint8
    boneWeights*: ptr cfloat
    vaoId*: cuint
    vboId*: ptr cuint
  Mesh_520094215 = struct_Mesh_520094214 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:361:3
  struct_Shader_520094217 {.pure, inheritable, bycopy.} = object
    id*: cuint               ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:364:16
    locs*: ptr cint
  Shader_520094219 = struct_Shader_520094218 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:367:3
  struct_MaterialMap_520094221 {.pure, inheritable, bycopy.} = object
    texture*: Texture2D_520094175 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:370:16
    color*: Color_520094161
    value*: cfloat
  MaterialMap_520094223 = struct_MaterialMap_520094222 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:374:3
  struct_Material_520094225 {.pure, inheritable, bycopy.} = object
    shader*: Shader_520094220 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:377:16
    maps*: ptr MaterialMap_520094224
    params*: array[4'i64, cfloat]
  Material_520094227 = struct_Material_520094226 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:381:3
  struct_Transform_520094229 {.pure, inheritable, bycopy.} = object
    translation*: Vector3_520094147 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:384:16
    rotation*: Quaternion_520094153
    scale*: Vector3_520094147
  Transform_520094231 = struct_Transform_520094230 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:388:3
  struct_BoneInfo_520094233 {.pure, inheritable, bycopy.} = object
    name*: array[32'i64, cschar] ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:391:16
    parent*: cint
  BoneInfo_520094235 = struct_BoneInfo_520094234 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:394:3
  struct_Model_520094237 {.pure, inheritable, bycopy.} = object
    transform*: Matrix_520094157 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:397:16
    meshCount*: cint
    materialCount*: cint
    meshes*: ptr Mesh_520094216
    materials*: ptr Material_520094228
    meshMaterial*: ptr cint
    boneCount*: cint
    bones*: ptr BoneInfo_520094236
    bindPose*: ptr Transform_520094232
  Model_520094239 = struct_Model_520094238 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:410:3
  struct_ModelAnimation_520094241 {.pure, inheritable, bycopy.} = object
    boneCount*: cint         ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:413:16
    frameCount*: cint
    bones*: ptr BoneInfo_520094236
    framePoses*: ptr ptr Transform_520094232
    name*: array[32'i64, cschar]
  ModelAnimation_520094243 = struct_ModelAnimation_520094242 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:419:3
  struct_Ray_520094245 {.pure, inheritable, bycopy.} = object
    position*: Vector3_520094147 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:422:16
    direction*: Vector3_520094147
  Ray_520094247 = struct_Ray_520094246 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:425:3
  struct_RayCollision_520094249 {.pure, inheritable, bycopy.} = object
    hit*: bool               ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:428:16
    distance*: cfloat
    point*: Vector3_520094147
    normal*: Vector3_520094147
  RayCollision_520094251 = struct_RayCollision_520094250 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:433:3
  struct_BoundingBox_520094253 {.pure, inheritable, bycopy.} = object
    min*: Vector3_520094147  ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:436:16
    max*: Vector3_520094147
  BoundingBox_520094255 = struct_BoundingBox_520094254 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:439:3
  struct_Wave_520094257 {.pure, inheritable, bycopy.} = object
    frameCount*: cuint       ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:442:16
    sampleRate*: cuint
    sampleSize*: cuint
    channels*: cuint
    data*: pointer
  Wave_520094259 = struct_Wave_520094258 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:448:3
  rAudioBuffer_520094261 = struct_rAudioBuffer ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:452:29
  rAudioProcessor_520094263 = struct_rAudioProcessor ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:453:32
  struct_AudioStream_520094265 {.pure, inheritable, bycopy.} = object
    buffer*: ptr rAudioBuffer_520094262 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:456:16
    processor*: ptr rAudioProcessor_520094264
    sampleRate*: cuint
    sampleSize*: cuint
    channels*: cuint
  AudioStream_520094267 = struct_AudioStream_520094266 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:463:3
  struct_Sound_520094269 {.pure, inheritable, bycopy.} = object
    stream*: AudioStream_520094268 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:466:16
    frameCount*: cuint
  Sound_520094271 = struct_Sound_520094270 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:469:3
  struct_Music_520094273 {.pure, inheritable, bycopy.} = object
    stream*: AudioStream_520094268 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:472:16
    frameCount*: cuint
    looping*: bool
    ctxType*: cint
    ctxData*: pointer
  Music_520094275 = struct_Music_520094274 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:479:3
  struct_VrDeviceInfo_520094277 {.pure, inheritable, bycopy.} = object
    hResolution*: cint       ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:482:16
    vResolution*: cint
    hScreenSize*: cfloat
    vScreenSize*: cfloat
    eyeToScreenDistance*: cfloat
    lensSeparationDistance*: cfloat
    interpupillaryDistance*: cfloat
    lensDistortionValues*: array[4'i64, cfloat]
    chromaAbCorrection*: array[4'i64, cfloat]
  VrDeviceInfo_520094279 = struct_VrDeviceInfo_520094278 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:492:3
  struct_VrStereoConfig_520094281 {.pure, inheritable, bycopy.} = object
    projection*: array[2'i64, Matrix_520094157] ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:495:16
    viewOffset*: array[2'i64, Matrix_520094157]
    leftLensCenter*: array[2'i64, cfloat]
    rightLensCenter*: array[2'i64, cfloat]
    leftScreenCenter*: array[2'i64, cfloat]
    rightScreenCenter*: array[2'i64, cfloat]
    scale*: array[2'i64, cfloat]
    scaleIn*: array[2'i64, cfloat]
  VrStereoConfig_520094283 = struct_VrStereoConfig_520094282 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:504:3
  struct_FilePathList_520094285 {.pure, inheritable, bycopy.} = object
    capacity*: cuint         ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:507:16
    count*: cuint
    paths*: ptr cstring
  FilePathList_520094287 = struct_FilePathList_520094286 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:511:3
  struct_AutomationEvent_520094289 {.pure, inheritable, bycopy.} = object
    frame*: cuint            ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:514:16
    type_field*: cuint
    params*: array[4'i64, cint]
  AutomationEvent_520094291 = struct_AutomationEvent_520094290 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:518:3
  struct_AutomationEventList_520094293 {.pure, inheritable, bycopy.} = object
    capacity*: cuint         ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:521:16
    count*: cuint
    events*: ptr AutomationEvent_520094292
  AutomationEventList_520094295 = struct_AutomationEventList_520094294 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:525:3
  ConfigFlags_520094299 = enum_ConfigFlags_520094298 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:550:3
  TraceLogLevel_520094303 = enum_TraceLogLevel_520094302 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:563:3
  KeyboardKey_520094307 = enum_KeyboardKey_520094306 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:683:3
  MouseButton_520094311 = enum_MouseButton_520094310 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:699:3
  MouseCursor_520094315 = enum_MouseCursor_520094314 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:714:3
  GamepadButton_520094319 = enum_GamepadButton_520094318 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:736:3
  GamepadAxis_520094323 = enum_GamepadAxis_520094322 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:746:3
  MaterialMapIndex_520094327 = enum_MaterialMapIndex_520094326 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:761:3
  ShaderLocationIndex_520094331 = enum_ShaderLocationIndex_520094330 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:794:3
  ShaderUniformDataType_520094335 = enum_ShaderUniformDataType_520094334 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:810:3
  ShaderAttributeDataType_520094339 = enum_ShaderAttributeDataType_520094338 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:818:3
  PixelFormat_520094343 = enum_PixelFormat_520094342 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:847:3
  TextureFilter_520094347 = enum_TextureFilter_520094346 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:859:3
  TextureWrap_520094351 = enum_TextureWrap_520094350 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:867:3
  CubemapLayout_520094355 = enum_CubemapLayout_520094354 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:877:3
  FontType_520094359 = enum_FontType_520094358 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:884:3
  BlendMode_520094363 = enum_BlendMode_520094362 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:896:3
  Gesture_520094367 = enum_Gesture_520094366 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:912:3
  CameraMode_520094371 = enum_CameraMode_520094370 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:921:3
  CameraProjection_520094375 = enum_CameraProjection_520094374 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:927:3
  NPatchLayout_520094379 = enum_NPatchLayout_520094378 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:934:3
  TraceLogCallback_520094381 = proc (a0: cint; a1: cstring): void {.cdecl,
      varargs.}              ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:938:16
  LoadFileDataCallback_520094383 = proc (a0: cstring; a1: ptr cint): ptr uint8 {.
      cdecl.}                ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:939:26
  SaveFileDataCallback_520094385 = proc (a0: cstring; a1: pointer; a2: cint): bool {.
      cdecl.}                ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:940:16
  LoadFileTextCallback_520094387 = proc (a0: cstring): cstring {.cdecl.} ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:941:17
  SaveFileTextCallback_520094389 = proc (a0: cstring; a1: cstring): bool {.cdecl.} ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:942:16
  AudioCallback_520094391 = proc (a0: pointer; a1: cuint): void {.cdecl.} ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:1589:16
  struct_float3_520094393 {.pure, inheritable, bycopy.} = object
    v*: array[3'i64, cfloat] ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:160:16
  float3_520094395 = struct_float3_520094394 ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:162:3
  struct_float16_520094397 {.pure, inheritable, bycopy.} = object
    v*: array[16'i64, cfloat] ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:164:16
  float16_520094399 = struct_float16_520094398 ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:166:3
  compiler_int8_t_520094401 = cschar ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:41:23
  compiler_uint8_t_520094403 = uint8 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:43:24
  compiler_int16_t_520094405 = cshort ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:55:24
  compiler_uint16_t_520094407 = cushort ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:57:25
  compiler_int32_t_520094409 = cint ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:77:24
  compiler_uint32_t_520094411 = cuint ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:79:25
  compiler_int64_t_520094413 = clong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:103:24
  compiler_uint64_t_520094415 = culong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:105:25
  compiler_int_least8_t_520094417 = cschar ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:134:29
  compiler_uint_least8_t_520094419 = uint8 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:136:30
  compiler_int_least16_t_520094421 = cshort ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:160:30
  compiler_uint_least16_t_520094423 = cushort ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:162:31
  compiler_int_least32_t_520094425 = cint ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:182:30
  compiler_uint_least32_t_520094427 = cuint ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:184:31
  compiler_int_least64_t_520094429 = clong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:200:30
  compiler_uint_least64_t_520094431 = culong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:202:31
  compiler_intmax_t_520094433 = clong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:214:25
  compiler_uintmax_t_520094435 = culong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:222:26
  compiler_intptr_t_520094437 = clong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:230:25
  compiler_uintptr_t_520094439 = culong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:232:26
  compiler_blkcnt_t_520094441 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:30:14
  compiler_blksize_t_520094443 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:34:14
  compiler_fsblkcnt_t_520094445 = compiler_uint64_t_520094416 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:38:20
  compiler_fsfilcnt_t_520094447 = compiler_uint32_t_520094412 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:42:20
  internal_off_t_520094449 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:46:14
  compiler_pid_t_520094451 = cint ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:52:13
  compiler_dev_t_520094453 = cshort ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:56:15
  compiler_uid_t_520094455 = cushort ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:60:24
  compiler_gid_t_520094457 = cushort ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:63:24
  compiler_id_t_520094459 = compiler_uint32_t_520094412 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:67:20
  compiler_ino_t_520094461 = cushort ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:75:24
  compiler_mode_t_520094463 = compiler_uint32_t_520094412 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:90:20
  internal_off64_t_520094465 = clonglong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:96:33
  compiler_off_t_520094467 = internal_off_t_520094450 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:102:16
  compiler_loff_t_520094469 = internal_off64_t_520094466 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:105:18
  compiler_key_t_520094471 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:108:14
  internal_fpos_t_520094473 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:116:14
  compiler_size_t_520094475 = culong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:131:23
  internal_ssize_t_520094477 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:147:23
  compiler_ssize_t_520094479 = internal_ssize_t_520094478 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:158:18
  struct_mbstate_t_compiler_value_t {.union, bycopy.} = object
    compiler_wch*: wint_t_520094484
    compiler_wchb*: array[4'i64, uint8]
  struct_mbstate_t_520094481 {.pure, inheritable, bycopy.} = object
    compiler_count*: cint    ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:162:9
    compiler_value*: struct_mbstate_t_compiler_value_t
  wint_t_520094483 = cuint   ## Generated based on /usr/include/clang/18.1.3/include/__stddef_wint_t.h:13:23
  internal_mbstate_t_520094485 = struct_mbstate_t_520094482 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:170:3
  internal_iconv_t_520094487 = pointer ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:175:15
  compiler_clock_t_520094489 = culong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:182:19
  compiler_time_t_520094491 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:189:18
  compiler_clockid_t_520094493 = culong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:195:21
  compiler_daddr_t_520094495 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:198:15
  compiler_timer_t_520094497 = culong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:202:19
  compiler_sa_family_t_520094499 = compiler_uint8_t_520094404 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:205:19
  compiler_socklen_t_520094501 = compiler_uint32_t_520094412 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:209:20
  compiler_nl_item_520094503 = cint ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:212:14
  compiler_nlink_t_520094505 = cushort ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:213:24
  compiler_suseconds_t_520094507 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:214:15
  compiler_useconds_t_520094509 = culong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:215:23
  compiler_va_list_520094511 = compiler_builtin_va_list ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:223:27
  compiler_ULong_520094513 = cuint ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:26:25
  internal_LOCK_T_520094515 = cint ## Generated based on /opt/libdragon/mips64-elf/include/sys/lock.h:11:13
  internal_LOCK_RECURSIVE_T_520094517 = cint ## Generated based on /opt/libdragon/mips64-elf/include/sys/lock.h:12:13
  internal_flock_t_520094519 = internal_LOCK_RECURSIVE_T_520094518 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:36:27
  struct_Bigint_520094521 {.pure, inheritable, bycopy.} = object
    internal_next*: ptr struct_Bigint_520094522 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:53:8
    internal_k*: cint
    internal_maxwds*: cint
    internal_sign*: cint
    internal_wds*: cint
    internal_x*: array[1'i64, compiler_ULong_520094514]
  struct_tm_520094523 {.pure, inheritable, bycopy.} = object
    compiler_tm_sec*: cint   ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:61:8
    compiler_tm_min*: cint
    compiler_tm_hour*: cint
    compiler_tm_mday*: cint
    compiler_tm_mon*: cint
    compiler_tm_year*: cint
    compiler_tm_wday*: cint
    compiler_tm_yday*: cint
    compiler_tm_isdst*: cint
  struct_on_exit_args_520094525 {.pure, inheritable, bycopy.} = object
    internal_fnargs*: array[32'i64, pointer] ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:80:8
    internal_dso_handle*: array[32'i64, pointer]
    internal_fntypes*: compiler_ULong_520094514
    internal_is_cxa*: compiler_ULong_520094514
  struct_atexit_520094527 {.pure, inheritable, bycopy.} = object
    internal_next*: ptr struct_atexit_520094528 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:99:8
    internal_ind*: cint
    internal_fns*: array[32'i64, proc (): void {.cdecl.}]
    internal_on_exit_args*: struct_on_exit_args_520094526
  struct_sbuf_520094529 {.pure, inheritable, bycopy.} = object
    internal_base*: ptr uint8 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:116:8
    internal_size*: cint
  struct_sFILE_520094531 {.pure, inheritable, bycopy.} = object
    internal_p*: ptr uint8   ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:153:8
    internal_r*: cint
    internal_w*: cint
    internal_flags*: cshort
    internal_file*: cshort
    internal_bf*: struct_sbuf_520094530
    internal_lbfsize*: cint
    internal_cookie*: pointer
    internal_read*: proc (a0: ptr struct_reent_520094534; a1: pointer;
                          a2: cstring; a3: cint): cint {.cdecl.}
    internal_write*: proc (a0: ptr struct_reent_520094534; a1: pointer;
                           a2: cstring; a3: cint): cint {.cdecl.}
    internal_seek*: proc (a0: ptr struct_reent_520094534; a1: pointer;
                          a2: internal_fpos_t_520094474; a3: cint): internal_fpos_t_520094474 {.
        cdecl.}
    internal_close*: proc (a0: ptr struct_reent_520094534; a1: pointer): cint {.
        cdecl.}
    internal_ub*: struct_sbuf_520094530
    internal_up*: ptr uint8
    internal_ur*: cint
    internal_ubuf*: array[3'i64, uint8]
    internal_nbuf*: array[1'i64, uint8]
    internal_lb*: struct_sbuf_520094530
    internal_blksize*: cint
    internal_offset*: internal_off_t_520094450
    internal_data*: ptr struct_reent_520094534
    internal_lock*: internal_flock_t_520094520
    internal_mbstate*: internal_mbstate_t_520094486
    internal_flags2*: cint
  struct_reent_internal_new_t_internal_reent_t {.pure, inheritable, bycopy.} = object
    internal_strtok_last*: cstring
    internal_asctime_buf*: array[26'i64, cschar]
    internal_localtime_buf*: struct_tm_520094524
    internal_gamma_signgam*: cint
    internal_rand_next*: culonglong
    internal_r48*: struct_rand48_520094540
    internal_mblen_state*: internal_mbstate_t_520094486
    internal_mbtowc_state*: internal_mbstate_t_520094486
    internal_wctomb_state*: internal_mbstate_t_520094486
    internal_l64a_buf*: array[8'i64, cschar]
    internal_signal_buf*: array[24'i64, cschar]
    internal_getdate_err*: cint
    internal_mbrlen_state*: internal_mbstate_t_520094486
    internal_mbrtowc_state*: internal_mbstate_t_520094486
    internal_mbsrtowcs_state*: internal_mbstate_t_520094486
    internal_wcrtomb_state*: internal_mbstate_t_520094486
    internal_wcsrtombs_state*: internal_mbstate_t_520094486
    internal_h_errno*: cint
  struct_reent_internal_new_t {.union, bycopy.} = object
    internal_reent*: struct_reent_internal_new_t_internal_reent_t
  struct_reent_520094533 {.pure, inheritable, bycopy.} = object
    internal_errno*: cint    ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:568:8
    internal_stdin*: ptr compiler_FILE_520094536
    internal_stdout*: ptr compiler_FILE_520094536
    internal_stderr*: ptr compiler_FILE_520094536
    internal_inc*: cint
    internal_emergency*: array[25'i64, cschar]
    internal_locale*: ptr struct_locale_t
    compiler_cleanup*: proc (a0: ptr struct_reent_520094534): void {.cdecl.}
    internal_result*: ptr struct_Bigint_520094522
    internal_result_k*: cint
    internal_p5s*: ptr struct_Bigint_520094522
    internal_freelist*: ptr ptr struct_Bigint_520094522
    internal_cvtlen*: cint
    internal_cvtbuf*: cstring
    internal_new*: struct_reent_internal_new_t
    internal_sig_func*: proc (a0: cint): void {.cdecl.}
  compiler_FILE_520094535 = struct_sFILE_520094532 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:270:26
  struct_glue_520094537 {.pure, inheritable, bycopy.} = object
    internal_next*: ptr struct_glue_520094538 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:276:8
    internal_niobs*: cint
    internal_iobs*: ptr compiler_FILE_520094536
  struct_rand48_520094539 {.pure, inheritable, bycopy.} = object
    internal_seed*: array[3'i64, cushort] ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:306:8
    internal_mult*: array[3'i64, cushort]
    internal_add*: cushort
  float_t_520094541 = cfloat ## Generated based on /opt/libdragon/mips64-elf/include/math.h:160:20
  double_t_520094543 = cdouble ## Generated based on /opt/libdragon/mips64-elf/include/math.h:161:20
  struct_rlVertexBuffer_520094545 {.pure, inheritable, bycopy.} = object
    elementCount*: cint      ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:348:16
    vertices*: ptr cfloat
    texcoords*: ptr cfloat
    colors*: ptr uint8
    indices*: ptr cuint
    vaoId*: cuint
    vboId*: array[4'i64, cuint]
  rlVertexBuffer_520094547 = struct_rlVertexBuffer_520094546 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:362:3
  struct_rlDrawCall_520094549 {.pure, inheritable, bycopy.} = object
    mode*: cint              ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:368:16
    vertexCount*: cint
    vertexAlignment*: cint
    textureId*: cuint
  rlDrawCall_520094551 = struct_rlDrawCall_520094550 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:378:3
  struct_rlRenderBatch_520094553 {.pure, inheritable, bycopy.} = object
    bufferCount*: cint       ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:381:16
    currentBuffer*: cint
    vertexBuffer*: ptr rlVertexBuffer_520094548
    draws*: ptr rlDrawCall_520094552
    drawCounter*: cint
    currentDepth*: cfloat
  rlRenderBatch_520094555 = struct_rlRenderBatch_520094554 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:389:3
  rlGlVersion_520094559 = enum_rlGlVersion_520094558 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:399:3
  rlTraceLogLevel_520094563 = enum_rlTraceLogLevel_520094562 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:412:3
  rlPixelFormat_520094567 = enum_rlPixelFormat_520094566 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:441:3
  rlTextureFilter_520094571 = enum_rlTextureFilter_520094570 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:453:3
  rlBlendMode_520094575 = enum_rlBlendMode_520094574 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:465:3
  rlShaderLocationIndex_520094579 = enum_rlShaderLocationIndex_520094578 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:495:3
  rlShaderUniformDataType_520094583 = enum_rlShaderUniformDataType_520094582 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:511:3
  rlShaderAttributeDataType_520094587 = enum_rlShaderAttributeDataType_520094586 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:519:3
  rlFramebufferAttachType_520094591 = enum_rlFramebufferAttachType_520094590 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:534:3
  rlFramebufferAttachTextureType_520094595 = enum_rlFramebufferAttachTextureType_520094594 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:546:3
  rlCullMode_520094599 = enum_rlCullMode_520094598 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:552:3
  struct_Transform_520094230 = (when declared(struct_Transform):
    when ownSizeof(struct_Transform) != ownSizeof(struct_Transform_520094229):
      static :
        warning("Declaration of " & "struct_Transform" &
            " exists but with different size")
    struct_Transform
   else:
    struct_Transform_520094229)
  RayCollision_520094252 = (when declared(RayCollision):
    when ownSizeof(RayCollision) != ownSizeof(RayCollision_520094251):
      static :
        warning("Declaration of " & "RayCollision" &
            " exists but with different size")
    RayCollision
   else:
    RayCollision_520094251)
  NPatchInfo_520094187 = (when declared(NPatchInfo):
    when ownSizeof(NPatchInfo) != ownSizeof(NPatchInfo_520094186):
      static :
        warning("Declaration of " & "NPatchInfo" &
            " exists but with different size")
    NPatchInfo
   else:
    NPatchInfo_520094186)
  internal_ssize_t_520094478 = (when declared(internal_ssize_t):
    when ownSizeof(internal_ssize_t) != ownSizeof(internal_ssize_t_520094477):
      static :
        warning("Declaration of " & "internal_ssize_t" &
            " exists but with different size")
    internal_ssize_t
   else:
    internal_ssize_t_520094477)
  Transform_520094232 = (when declared(Transform):
    when ownSizeof(Transform) != ownSizeof(Transform_520094231):
      static :
        warning("Declaration of " & "Transform" &
            " exists but with different size")
    Transform
   else:
    Transform_520094231)
  struct_BoneInfo_520094234 = (when declared(struct_BoneInfo):
    when ownSizeof(struct_BoneInfo) != ownSizeof(struct_BoneInfo_520094233):
      static :
        warning("Declaration of " & "struct_BoneInfo" &
            " exists but with different size")
    struct_BoneInfo
   else:
    struct_BoneInfo_520094233)
  SaveFileDataCallback_520094386 = (when declared(SaveFileDataCallback):
    when ownSizeof(SaveFileDataCallback) != ownSizeof(SaveFileDataCallback_520094385):
      static :
        warning("Declaration of " & "SaveFileDataCallback" &
            " exists but with different size")
    SaveFileDataCallback
   else:
    SaveFileDataCallback_520094385)
  rlFramebufferAttachTextureType_520094596 = (when declared(
      rlFramebufferAttachTextureType):
    when ownSizeof(rlFramebufferAttachTextureType) !=
        ownSizeof(rlFramebufferAttachTextureType_520094595):
      static :
        warning("Declaration of " & "rlFramebufferAttachTextureType" &
            " exists but with different size")
    rlFramebufferAttachTextureType
   else:
    rlFramebufferAttachTextureType_520094595)
  wint_t_520094484 = (when declared(wint_t):
    when ownSizeof(wint_t) != ownSizeof(wint_t_520094483):
      static :
        warning("Declaration of " & "wint_t" & " exists but with different size")
    wint_t
   else:
    wint_t_520094483)
  MaterialMap_520094224 = (when declared(MaterialMap):
    when ownSizeof(MaterialMap) != ownSizeof(MaterialMap_520094223):
      static :
        warning("Declaration of " & "MaterialMap" &
            " exists but with different size")
    MaterialMap
   else:
    MaterialMap_520094223)
  compiler_uint64_t_520094416 = (when declared(compiler_uint64_t):
    when ownSizeof(compiler_uint64_t) != ownSizeof(compiler_uint64_t_520094415):
      static :
        warning("Declaration of " & "compiler_uint64_t" &
            " exists but with different size")
    compiler_uint64_t
   else:
    compiler_uint64_t_520094415)
  struct_tm_520094524 = (when declared(struct_tm):
    when ownSizeof(struct_tm) != ownSizeof(struct_tm_520094523):
      static :
        warning("Declaration of " & "struct_tm" &
            " exists but with different size")
    struct_tm
   else:
    struct_tm_520094523)
  compiler_sa_family_t_520094500 = (when declared(compiler_sa_family_t):
    when ownSizeof(compiler_sa_family_t) != ownSizeof(compiler_sa_family_t_520094499):
      static :
        warning("Declaration of " & "compiler_sa_family_t" &
            " exists but with different size")
    compiler_sa_family_t
   else:
    compiler_sa_family_t_520094499)
  struct_Sound_520094270 = (when declared(struct_Sound):
    when ownSizeof(struct_Sound) != ownSizeof(struct_Sound_520094269):
      static :
        warning("Declaration of " & "struct_Sound" &
            " exists but with different size")
    struct_Sound
   else:
    struct_Sound_520094269)
  struct_Font_520094200 = (when declared(struct_Font):
    when ownSizeof(struct_Font) != ownSizeof(struct_Font_520094199):
      static :
        warning("Declaration of " & "struct_Font" &
            " exists but with different size")
    struct_Font
   else:
    struct_Font_520094199)
  compiler_uint_least16_t_520094424 = (when declared(compiler_uint_least16_t):
    when ownSizeof(compiler_uint_least16_t) !=
        ownSizeof(compiler_uint_least16_t_520094423):
      static :
        warning("Declaration of " & "compiler_uint_least16_t" &
            " exists but with different size")
    compiler_uint_least16_t
   else:
    compiler_uint_least16_t_520094423)
  GamepadAxis_520094324 = (when declared(GamepadAxis):
    when ownSizeof(GamepadAxis) != ownSizeof(GamepadAxis_520094323):
      static :
        warning("Declaration of " & "GamepadAxis" &
            " exists but with different size")
    GamepadAxis
   else:
    GamepadAxis_520094323)
  compiler_ULong_520094514 = (when declared(compiler_ULong):
    when ownSizeof(compiler_ULong) != ownSizeof(compiler_ULong_520094513):
      static :
        warning("Declaration of " & "compiler_ULong" &
            " exists but with different size")
    compiler_ULong
   else:
    compiler_ULong_520094513)
  struct_Shader_520094218 = (when declared(struct_Shader):
    when ownSizeof(struct_Shader) != ownSizeof(struct_Shader_520094217):
      static :
        warning("Declaration of " & "struct_Shader" &
            " exists but with different size")
    struct_Shader
   else:
    struct_Shader_520094217)
  compiler_suseconds_t_520094508 = (when declared(compiler_suseconds_t):
    when ownSizeof(compiler_suseconds_t) != ownSizeof(compiler_suseconds_t_520094507):
      static :
        warning("Declaration of " & "compiler_suseconds_t" &
            " exists but with different size")
    compiler_suseconds_t
   else:
    compiler_suseconds_t_520094507)
  rlFramebufferAttachType_520094592 = (when declared(rlFramebufferAttachType):
    when ownSizeof(rlFramebufferAttachType) !=
        ownSizeof(rlFramebufferAttachType_520094591):
      static :
        warning("Declaration of " & "rlFramebufferAttachType" &
            " exists but with different size")
    rlFramebufferAttachType
   else:
    rlFramebufferAttachType_520094591)
  struct_NPatchInfo_520094185 = (when declared(struct_NPatchInfo):
    when ownSizeof(struct_NPatchInfo) != ownSizeof(struct_NPatchInfo_520094184):
      static :
        warning("Declaration of " & "struct_NPatchInfo" &
            " exists but with different size")
    struct_NPatchInfo
   else:
    struct_NPatchInfo_520094184)
  compiler_clock_t_520094490 = (when declared(compiler_clock_t):
    when ownSizeof(compiler_clock_t) != ownSizeof(compiler_clock_t_520094489):
      static :
        warning("Declaration of " & "compiler_clock_t" &
            " exists but with different size")
    compiler_clock_t
   else:
    compiler_clock_t_520094489)
  PixelFormat_520094344 = (when declared(PixelFormat):
    when ownSizeof(PixelFormat) != ownSizeof(PixelFormat_520094343):
      static :
        warning("Declaration of " & "PixelFormat" &
            " exists but with different size")
    PixelFormat
   else:
    PixelFormat_520094343)
  internal_mbstate_t_520094486 = (when declared(internal_mbstate_t):
    when ownSizeof(internal_mbstate_t) != ownSizeof(internal_mbstate_t_520094485):
      static :
        warning("Declaration of " & "internal_mbstate_t" &
            " exists but with different size")
    internal_mbstate_t
   else:
    internal_mbstate_t_520094485)
  compiler_ino_t_520094462 = (when declared(compiler_ino_t):
    when ownSizeof(compiler_ino_t) != ownSizeof(compiler_ino_t_520094461):
      static :
        warning("Declaration of " & "compiler_ino_t" &
            " exists but with different size")
    compiler_ino_t
   else:
    compiler_ino_t_520094461)
  float3_520094396 = (when declared(float3):
    when ownSizeof(float3) != ownSizeof(float3_520094395):
      static :
        warning("Declaration of " & "float3" & " exists but with different size")
    float3
   else:
    float3_520094395)
  AutomationEvent_520094292 = (when declared(AutomationEvent):
    when ownSizeof(AutomationEvent) != ownSizeof(AutomationEvent_520094291):
      static :
        warning("Declaration of " & "AutomationEvent" &
            " exists but with different size")
    AutomationEvent
   else:
    AutomationEvent_520094291)
  Sound_520094272 = (when declared(Sound):
    when ownSizeof(Sound) != ownSizeof(Sound_520094271):
      static :
        warning("Declaration of " & "Sound" & " exists but with different size")
    Sound
   else:
    Sound_520094271)
  rlBlendMode_520094576 = (when declared(rlBlendMode):
    when ownSizeof(rlBlendMode) != ownSizeof(rlBlendMode_520094575):
      static :
        warning("Declaration of " & "rlBlendMode" &
            " exists but with different size")
    rlBlendMode
   else:
    rlBlendMode_520094575)
  double_t_520094544 = (when declared(double_t):
    when ownSizeof(double_t) != ownSizeof(double_t_520094543):
      static :
        warning("Declaration of " & "double_t" &
            " exists but with different size")
    double_t
   else:
    double_t_520094543)
  struct_Texture_520094171 = (when declared(struct_Texture):
    when ownSizeof(struct_Texture) != ownSizeof(struct_Texture_520094170):
      static :
        warning("Declaration of " & "struct_Texture" &
            " exists but with different size")
    struct_Texture
   else:
    struct_Texture_520094170)
  Font_520094202 = (when declared(Font):
    when ownSizeof(Font) != ownSizeof(Font_520094201):
      static :
        warning("Declaration of " & "Font" & " exists but with different size")
    Font
   else:
    Font_520094201)
  float_t_520094542 = (when declared(float_t):
    when ownSizeof(float_t) != ownSizeof(float_t_520094541):
      static :
        warning("Declaration of " & "float_t" &
            " exists but with different size")
    float_t
   else:
    float_t_520094541)
  compiler_int64_t_520094414 = (when declared(compiler_int64_t):
    when ownSizeof(compiler_int64_t) != ownSizeof(compiler_int64_t_520094413):
      static :
        warning("Declaration of " & "compiler_int64_t" &
            " exists but with different size")
    compiler_int64_t
   else:
    compiler_int64_t_520094413)
  compiler_int_least64_t_520094430 = (when declared(compiler_int_least64_t):
    when ownSizeof(compiler_int_least64_t) != ownSizeof(compiler_int_least64_t_520094429):
      static :
        warning("Declaration of " & "compiler_int_least64_t" &
            " exists but with different size")
    compiler_int_least64_t
   else:
    compiler_int_least64_t_520094429)
  Camera2D_520094212 = (when declared(Camera2D):
    when ownSizeof(Camera2D) != ownSizeof(Camera2D_520094211):
      static :
        warning("Declaration of " & "Camera2D" &
            " exists but with different size")
    Camera2D
   else:
    Camera2D_520094211)
  struct_rlRenderBatch_520094554 = (when declared(struct_rlRenderBatch):
    when ownSizeof(struct_rlRenderBatch) != ownSizeof(struct_rlRenderBatch_520094553):
      static :
        warning("Declaration of " & "struct_rlRenderBatch" &
            " exists but with different size")
    struct_rlRenderBatch
   else:
    struct_rlRenderBatch_520094553)
  enum_rlTextureFilter_520094570 = (when declared(enum_rlTextureFilter):
    when ownSizeof(enum_rlTextureFilter) != ownSizeof(enum_rlTextureFilter_520094569):
      static :
        warning("Declaration of " & "enum_rlTextureFilter" &
            " exists but with different size")
    enum_rlTextureFilter
   else:
    enum_rlTextureFilter_520094569)
  compiler_socklen_t_520094502 = (when declared(compiler_socklen_t):
    when ownSizeof(compiler_socklen_t) != ownSizeof(compiler_socklen_t_520094501):
      static :
        warning("Declaration of " & "compiler_socklen_t" &
            " exists but with different size")
    compiler_socklen_t
   else:
    compiler_socklen_t_520094501)
  struct_Mesh_520094214 = (when declared(struct_Mesh):
    when ownSizeof(struct_Mesh) != ownSizeof(struct_Mesh_520094213):
      static :
        warning("Declaration of " & "struct_Mesh" &
            " exists but with different size")
    struct_Mesh
   else:
    struct_Mesh_520094213)
  Gesture_520094368 = (when declared(Gesture):
    when ownSizeof(Gesture) != ownSizeof(Gesture_520094367):
      static :
        warning("Declaration of " & "Gesture" &
            " exists but with different size")
    Gesture
   else:
    Gesture_520094367)
  struct_AutomationEvent_520094290 = (when declared(struct_AutomationEvent):
    when ownSizeof(struct_AutomationEvent) != ownSizeof(struct_AutomationEvent_520094289):
      static :
        warning("Declaration of " & "struct_AutomationEvent" &
            " exists but with different size")
    struct_AutomationEvent
   else:
    struct_AutomationEvent_520094289)
  enum_GamepadButton_520094318 = (when declared(enum_GamepadButton):
    when ownSizeof(enum_GamepadButton) != ownSizeof(enum_GamepadButton_520094317):
      static :
        warning("Declaration of " & "enum_GamepadButton" &
            " exists but with different size")
    enum_GamepadButton
   else:
    enum_GamepadButton_520094317)
  compiler_size_t_520094476 = (when declared(compiler_size_t):
    when ownSizeof(compiler_size_t) != ownSizeof(compiler_size_t_520094475):
      static :
        warning("Declaration of " & "compiler_size_t" &
            " exists but with different size")
    compiler_size_t
   else:
    compiler_size_t_520094475)
  enum_KeyboardKey_520094306 = (when declared(enum_KeyboardKey):
    when ownSizeof(enum_KeyboardKey) != ownSizeof(enum_KeyboardKey_520094305):
      static :
        warning("Declaration of " & "enum_KeyboardKey" &
            " exists but with different size")
    enum_KeyboardKey
   else:
    enum_KeyboardKey_520094305)
  struct_BoundingBox_520094254 = (when declared(struct_BoundingBox):
    when ownSizeof(struct_BoundingBox) != ownSizeof(struct_BoundingBox_520094253):
      static :
        warning("Declaration of " & "struct_BoundingBox" &
            " exists but with different size")
    struct_BoundingBox
   else:
    struct_BoundingBox_520094253)
  struct_sbuf_520094530 = (when declared(struct_sbuf):
    when ownSizeof(struct_sbuf) != ownSizeof(struct_sbuf_520094529):
      static :
        warning("Declaration of " & "struct_sbuf" &
            " exists but with different size")
    struct_sbuf
   else:
    struct_sbuf_520094529)
  struct_Music_520094274 = (when declared(struct_Music):
    when ownSizeof(struct_Music) != ownSizeof(struct_Music_520094273):
      static :
        warning("Declaration of " & "struct_Music" &
            " exists but with different size")
    struct_Music
   else:
    struct_Music_520094273)
  compiler_loff_t_520094470 = (when declared(compiler_loff_t):
    when ownSizeof(compiler_loff_t) != ownSizeof(compiler_loff_t_520094469):
      static :
        warning("Declaration of " & "compiler_loff_t" &
            " exists but with different size")
    compiler_loff_t
   else:
    compiler_loff_t_520094469)
  ModelAnimation_520094244 = (when declared(ModelAnimation):
    when ownSizeof(ModelAnimation) != ownSizeof(ModelAnimation_520094243):
      static :
        warning("Declaration of " & "ModelAnimation" &
            " exists but with different size")
    ModelAnimation
   else:
    ModelAnimation_520094243)
  Quaternion_520094153 = (when declared(Quaternion):
    when ownSizeof(Quaternion) != ownSizeof(Quaternion_520094152):
      static :
        warning("Declaration of " & "Quaternion" &
            " exists but with different size")
    Quaternion
   else:
    Quaternion_520094152)
  Texture2D_520094175 = (when declared(Texture2D):
    when ownSizeof(Texture2D) != ownSizeof(Texture2D_520094174):
      static :
        warning("Declaration of " & "Texture2D" &
            " exists but with different size")
    Texture2D
   else:
    Texture2D_520094174)
  compiler_uint16_t_520094408 = (when declared(compiler_uint16_t):
    when ownSizeof(compiler_uint16_t) != ownSizeof(compiler_uint16_t_520094407):
      static :
        warning("Declaration of " & "compiler_uint16_t" &
            " exists but with different size")
    compiler_uint16_t
   else:
    compiler_uint16_t_520094407)
  Wave_520094260 = (when declared(Wave):
    when ownSizeof(Wave) != ownSizeof(Wave_520094259):
      static :
        warning("Declaration of " & "Wave" & " exists but with different size")
    Wave
   else:
    Wave_520094259)
  compiler_daddr_t_520094496 = (when declared(compiler_daddr_t):
    when ownSizeof(compiler_daddr_t) != ownSizeof(compiler_daddr_t_520094495):
      static :
        warning("Declaration of " & "compiler_daddr_t" &
            " exists but with different size")
    compiler_daddr_t
   else:
    compiler_daddr_t_520094495)
  struct_Wave_520094258 = (when declared(struct_Wave):
    when ownSizeof(struct_Wave) != ownSizeof(struct_Wave_520094257):
      static :
        warning("Declaration of " & "struct_Wave" &
            " exists but with different size")
    struct_Wave
   else:
    struct_Wave_520094257)
  rAudioBuffer_520094262 = (when declared(rAudioBuffer):
    when ownSizeof(rAudioBuffer) != ownSizeof(rAudioBuffer_520094261):
      static :
        warning("Declaration of " & "rAudioBuffer" &
            " exists but with different size")
    rAudioBuffer
   else:
    rAudioBuffer_520094261)
  ShaderLocationIndex_520094332 = (when declared(ShaderLocationIndex):
    when ownSizeof(ShaderLocationIndex) != ownSizeof(ShaderLocationIndex_520094331):
      static :
        warning("Declaration of " & "ShaderLocationIndex" &
            " exists but with different size")
    ShaderLocationIndex
   else:
    ShaderLocationIndex_520094331)
  SaveFileTextCallback_520094390 = (when declared(SaveFileTextCallback):
    when ownSizeof(SaveFileTextCallback) != ownSizeof(SaveFileTextCallback_520094389):
      static :
        warning("Declaration of " & "SaveFileTextCallback" &
            " exists but with different size")
    SaveFileTextCallback
   else:
    SaveFileTextCallback_520094389)
  AudioCallback_520094392 = (when declared(AudioCallback):
    when ownSizeof(AudioCallback) != ownSizeof(AudioCallback_520094391):
      static :
        warning("Declaration of " & "AudioCallback" &
            " exists but with different size")
    AudioCallback
   else:
    AudioCallback_520094391)
  compiler_int32_t_520094410 = (when declared(compiler_int32_t):
    when ownSizeof(compiler_int32_t) != ownSizeof(compiler_int32_t_520094409):
      static :
        warning("Declaration of " & "compiler_int32_t" &
            " exists but with different size")
    compiler_int32_t
   else:
    compiler_int32_t_520094409)
  Mesh_520094216 = (when declared(Mesh):
    when ownSizeof(Mesh) != ownSizeof(Mesh_520094215):
      static :
        warning("Declaration of " & "Mesh" & " exists but with different size")
    Mesh
   else:
    Mesh_520094215)
  enum_NPatchLayout_520094378 = (when declared(enum_NPatchLayout):
    when ownSizeof(enum_NPatchLayout) != ownSizeof(enum_NPatchLayout_520094377):
      static :
        warning("Declaration of " & "enum_NPatchLayout" &
            " exists but with different size")
    enum_NPatchLayout
   else:
    enum_NPatchLayout_520094377)
  struct_glue_520094538 = (when declared(struct_glue):
    when ownSizeof(struct_glue) != ownSizeof(struct_glue_520094537):
      static :
        warning("Declaration of " & "struct_glue" &
            " exists but with different size")
    struct_glue
   else:
    struct_glue_520094537)
  struct_rlDrawCall_520094550 = (when declared(struct_rlDrawCall):
    when ownSizeof(struct_rlDrawCall) != ownSizeof(struct_rlDrawCall_520094549):
      static :
        warning("Declaration of " & "struct_rlDrawCall" &
            " exists but with different size")
    struct_rlDrawCall
   else:
    struct_rlDrawCall_520094549)
  TextureWrap_520094352 = (when declared(TextureWrap):
    when ownSizeof(TextureWrap) != ownSizeof(TextureWrap_520094351):
      static :
        warning("Declaration of " & "TextureWrap" &
            " exists but with different size")
    TextureWrap
   else:
    TextureWrap_520094351)
  compiler_uint_least64_t_520094432 = (when declared(compiler_uint_least64_t):
    when ownSizeof(compiler_uint_least64_t) !=
        ownSizeof(compiler_uint_least64_t_520094431):
      static :
        warning("Declaration of " & "compiler_uint_least64_t" &
            " exists but with different size")
    compiler_uint_least64_t
   else:
    compiler_uint_least64_t_520094431)
  enum_MouseCursor_520094314 = (when declared(enum_MouseCursor):
    when ownSizeof(enum_MouseCursor) != ownSizeof(enum_MouseCursor_520094313):
      static :
        warning("Declaration of " & "enum_MouseCursor" &
            " exists but with different size")
    enum_MouseCursor
   else:
    enum_MouseCursor_520094313)
  enum_TextureWrap_520094350 = (when declared(enum_TextureWrap):
    when ownSizeof(enum_TextureWrap) != ownSizeof(enum_TextureWrap_520094349):
      static :
        warning("Declaration of " & "enum_TextureWrap" &
            " exists but with different size")
    enum_TextureWrap
   else:
    enum_TextureWrap_520094349)
  enum_rlFramebufferAttachTextureType_520094594 = (when declared(
      enum_rlFramebufferAttachTextureType):
    when ownSizeof(enum_rlFramebufferAttachTextureType) !=
        ownSizeof(enum_rlFramebufferAttachTextureType_520094593):
      static :
        warning("Declaration of " & "enum_rlFramebufferAttachTextureType" &
            " exists but with different size")
    enum_rlFramebufferAttachTextureType
   else:
    enum_rlFramebufferAttachTextureType_520094593)
  struct_on_exit_args_520094526 = (when declared(struct_on_exit_args):
    when ownSizeof(struct_on_exit_args) != ownSizeof(struct_on_exit_args_520094525):
      static :
        warning("Declaration of " & "struct_on_exit_args" &
            " exists but with different size")
    struct_on_exit_args
   else:
    struct_on_exit_args_520094525)
  struct_Material_520094226 = (when declared(struct_Material):
    when ownSizeof(struct_Material) != ownSizeof(struct_Material_520094225):
      static :
        warning("Declaration of " & "struct_Material" &
            " exists but with different size")
    struct_Material
   else:
    struct_Material_520094225)
  rlVertexBuffer_520094548 = (when declared(rlVertexBuffer):
    when ownSizeof(rlVertexBuffer) != ownSizeof(rlVertexBuffer_520094547):
      static :
        warning("Declaration of " & "rlVertexBuffer" &
            " exists but with different size")
    rlVertexBuffer
   else:
    rlVertexBuffer_520094547)
  struct_Matrix_520094155 = (when declared(struct_Matrix):
    when ownSizeof(struct_Matrix) != ownSizeof(struct_Matrix_520094154):
      static :
        warning("Declaration of " & "struct_Matrix" &
            " exists but with different size")
    struct_Matrix
   else:
    struct_Matrix_520094154)
  enum_TraceLogLevel_520094302 = (when declared(enum_TraceLogLevel):
    when ownSizeof(enum_TraceLogLevel) != ownSizeof(enum_TraceLogLevel_520094301):
      static :
        warning("Declaration of " & "enum_TraceLogLevel" &
            " exists but with different size")
    enum_TraceLogLevel
   else:
    enum_TraceLogLevel_520094301)
  compiler_dev_t_520094454 = (when declared(compiler_dev_t):
    when ownSizeof(compiler_dev_t) != ownSizeof(compiler_dev_t_520094453):
      static :
        warning("Declaration of " & "compiler_dev_t" &
            " exists but with different size")
    compiler_dev_t
   else:
    compiler_dev_t_520094453)
  compiler_ssize_t_520094480 = (when declared(compiler_ssize_t):
    when ownSizeof(compiler_ssize_t) != ownSizeof(compiler_ssize_t_520094479):
      static :
        warning("Declaration of " & "compiler_ssize_t" &
            " exists but with different size")
    compiler_ssize_t
   else:
    compiler_ssize_t_520094479)
  MouseButton_520094312 = (when declared(MouseButton):
    when ownSizeof(MouseButton) != ownSizeof(MouseButton_520094311):
      static :
        warning("Declaration of " & "MouseButton" &
            " exists but with different size")
    MouseButton
   else:
    MouseButton_520094311)
  CubemapLayout_520094356 = (when declared(CubemapLayout):
    when ownSizeof(CubemapLayout) != ownSizeof(CubemapLayout_520094355):
      static :
        warning("Declaration of " & "CubemapLayout" &
            " exists but with different size")
    CubemapLayout
   else:
    CubemapLayout_520094355)
  enum_FontType_520094358 = (when declared(enum_FontType):
    when ownSizeof(enum_FontType) != ownSizeof(enum_FontType_520094357):
      static :
        warning("Declaration of " & "enum_FontType" &
            " exists but with different size")
    enum_FontType
   else:
    enum_FontType_520094357)
  compiler_intmax_t_520094434 = (when declared(compiler_intmax_t):
    when ownSizeof(compiler_intmax_t) != ownSizeof(compiler_intmax_t_520094433):
      static :
        warning("Declaration of " & "compiler_intmax_t" &
            " exists but with different size")
    compiler_intmax_t
   else:
    compiler_intmax_t_520094433)
  struct_VrDeviceInfo_520094278 = (when declared(struct_VrDeviceInfo):
    when ownSizeof(struct_VrDeviceInfo) != ownSizeof(struct_VrDeviceInfo_520094277):
      static :
        warning("Declaration of " & "struct_VrDeviceInfo" &
            " exists but with different size")
    struct_VrDeviceInfo
   else:
    struct_VrDeviceInfo_520094277)
  LoadFileDataCallback_520094384 = (when declared(LoadFileDataCallback):
    when ownSizeof(LoadFileDataCallback) != ownSizeof(LoadFileDataCallback_520094383):
      static :
        warning("Declaration of " & "LoadFileDataCallback" &
            " exists but with different size")
    LoadFileDataCallback
   else:
    LoadFileDataCallback_520094383)
  compiler_int8_t_520094402 = (when declared(compiler_int8_t):
    when ownSizeof(compiler_int8_t) != ownSizeof(compiler_int8_t_520094401):
      static :
        warning("Declaration of " & "compiler_int8_t" &
            " exists but with different size")
    compiler_int8_t
   else:
    compiler_int8_t_520094401)
  GlyphInfo_520094191 = (when declared(GlyphInfo):
    when ownSizeof(GlyphInfo) != ownSizeof(GlyphInfo_520094190):
      static :
        warning("Declaration of " & "GlyphInfo" &
            " exists but with different size")
    GlyphInfo
   else:
    GlyphInfo_520094190)
  compiler_gid_t_520094458 = (when declared(compiler_gid_t):
    when ownSizeof(compiler_gid_t) != ownSizeof(compiler_gid_t_520094457):
      static :
        warning("Declaration of " & "compiler_gid_t" &
            " exists but with different size")
    compiler_gid_t
   else:
    compiler_gid_t_520094457)
  enum_MouseButton_520094310 = (when declared(enum_MouseButton):
    when ownSizeof(enum_MouseButton) != ownSizeof(enum_MouseButton_520094309):
      static :
        warning("Declaration of " & "enum_MouseButton" &
            " exists but with different size")
    enum_MouseButton
   else:
    enum_MouseButton_520094309)
  compiler_nl_item_520094504 = (when declared(compiler_nl_item):
    when ownSizeof(compiler_nl_item) != ownSizeof(compiler_nl_item_520094503):
      static :
        warning("Declaration of " & "compiler_nl_item" &
            " exists but with different size")
    compiler_nl_item
   else:
    compiler_nl_item_520094503)
  struct_Vector3_520094145 = (when declared(struct_Vector3):
    when ownSizeof(struct_Vector3) != ownSizeof(struct_Vector3_520094144):
      static :
        warning("Declaration of " & "struct_Vector3" &
            " exists but with different size")
    struct_Vector3
   else:
    struct_Vector3_520094144)
  struct_Ray_520094246 = (when declared(struct_Ray):
    when ownSizeof(struct_Ray) != ownSizeof(struct_Ray_520094245):
      static :
        warning("Declaration of " & "struct_Ray" &
            " exists but with different size")
    struct_Ray
   else:
    struct_Ray_520094245)
  compiler_FILE_520094536 = (when declared(compiler_FILE):
    when ownSizeof(compiler_FILE) != ownSizeof(compiler_FILE_520094535):
      static :
        warning("Declaration of " & "compiler_FILE" &
            " exists but with different size")
    compiler_FILE
   else:
    compiler_FILE_520094535)
  Color_520094161 = (when declared(Color):
    when ownSizeof(Color) != ownSizeof(Color_520094160):
      static :
        warning("Declaration of " & "Color" & " exists but with different size")
    Color
   else:
    Color_520094160)
  struct_AudioStream_520094266 = (when declared(struct_AudioStream):
    when ownSizeof(struct_AudioStream) != ownSizeof(struct_AudioStream_520094265):
      static :
        warning("Declaration of " & "struct_AudioStream" &
            " exists but with different size")
    struct_AudioStream
   else:
    struct_AudioStream_520094265)
  FilePathList_520094288 = (when declared(FilePathList):
    when ownSizeof(FilePathList) != ownSizeof(FilePathList_520094287):
      static :
        warning("Declaration of " & "FilePathList" &
            " exists but with different size")
    FilePathList
   else:
    FilePathList_520094287)
  struct_AutomationEventList_520094294 = (when declared(
      struct_AutomationEventList):
    when ownSizeof(struct_AutomationEventList) !=
        ownSizeof(struct_AutomationEventList_520094293):
      static :
        warning("Declaration of " & "struct_AutomationEventList" &
            " exists but with different size")
    struct_AutomationEventList
   else:
    struct_AutomationEventList_520094293)
  enum_rlBlendMode_520094574 = (when declared(enum_rlBlendMode):
    when ownSizeof(enum_rlBlendMode) != ownSizeof(enum_rlBlendMode_520094573):
      static :
        warning("Declaration of " & "enum_rlBlendMode" &
            " exists but with different size")
    enum_rlBlendMode
   else:
    enum_rlBlendMode_520094573)
  Music_520094276 = (when declared(Music):
    when ownSizeof(Music) != ownSizeof(Music_520094275):
      static :
        warning("Declaration of " & "Music" & " exists but with different size")
    Music
   else:
    Music_520094275)
  GamepadButton_520094320 = (when declared(GamepadButton):
    when ownSizeof(GamepadButton) != ownSizeof(GamepadButton_520094319):
      static :
        warning("Declaration of " & "GamepadButton" &
            " exists but with different size")
    GamepadButton
   else:
    GamepadButton_520094319)
  RenderTexture2D_520094183 = (when declared(RenderTexture2D):
    when ownSizeof(RenderTexture2D) != ownSizeof(RenderTexture2D_520094182):
      static :
        warning("Declaration of " & "RenderTexture2D" &
            " exists but with different size")
    RenderTexture2D
   else:
    RenderTexture2D_520094182)
  MaterialMapIndex_520094328 = (when declared(MaterialMapIndex):
    when ownSizeof(MaterialMapIndex) != ownSizeof(MaterialMapIndex_520094327):
      static :
        warning("Declaration of " & "MaterialMapIndex" &
            " exists but with different size")
    MaterialMapIndex
   else:
    MaterialMapIndex_520094327)
  enum_CameraMode_520094370 = (when declared(enum_CameraMode):
    when ownSizeof(enum_CameraMode) != ownSizeof(enum_CameraMode_520094369):
      static :
        warning("Declaration of " & "enum_CameraMode" &
            " exists but with different size")
    enum_CameraMode
   else:
    enum_CameraMode_520094369)
  compiler_fsblkcnt_t_520094446 = (when declared(compiler_fsblkcnt_t):
    when ownSizeof(compiler_fsblkcnt_t) != ownSizeof(compiler_fsblkcnt_t_520094445):
      static :
        warning("Declaration of " & "compiler_fsblkcnt_t" &
            " exists but with different size")
    compiler_fsblkcnt_t
   else:
    compiler_fsblkcnt_t_520094445)
  enum_rlShaderAttributeDataType_520094586 = (when declared(
      enum_rlShaderAttributeDataType):
    when ownSizeof(enum_rlShaderAttributeDataType) !=
        ownSizeof(enum_rlShaderAttributeDataType_520094585):
      static :
        warning("Declaration of " & "enum_rlShaderAttributeDataType" &
            " exists but with different size")
    enum_rlShaderAttributeDataType
   else:
    enum_rlShaderAttributeDataType_520094585)
  float16_520094400 = (when declared(float16):
    when ownSizeof(float16) != ownSizeof(float16_520094399):
      static :
        warning("Declaration of " & "float16" &
            " exists but with different size")
    float16
   else:
    float16_520094399)
  rlShaderUniformDataType_520094584 = (when declared(rlShaderUniformDataType):
    when ownSizeof(rlShaderUniformDataType) !=
        ownSizeof(rlShaderUniformDataType_520094583):
      static :
        warning("Declaration of " & "rlShaderUniformDataType" &
            " exists but with different size")
    rlShaderUniformDataType
   else:
    rlShaderUniformDataType_520094583)
  compiler_id_t_520094460 = (when declared(compiler_id_t):
    when ownSizeof(compiler_id_t) != ownSizeof(compiler_id_t_520094459):
      static :
        warning("Declaration of " & "compiler_id_t" &
            " exists but with different size")
    compiler_id_t
   else:
    compiler_id_t_520094459)
  struct_mbstate_t_520094482 = (when declared(struct_mbstate_t):
    when ownSizeof(struct_mbstate_t) != ownSizeof(struct_mbstate_t_520094481):
      static :
        warning("Declaration of " & "struct_mbstate_t" &
            " exists but with different size")
    struct_mbstate_t
   else:
    struct_mbstate_t_520094481)
  enum_rlCullMode_520094598 = (when declared(enum_rlCullMode):
    when ownSizeof(enum_rlCullMode) != ownSizeof(enum_rlCullMode_520094597):
      static :
        warning("Declaration of " & "enum_rlCullMode" &
            " exists but with different size")
    enum_rlCullMode
   else:
    enum_rlCullMode_520094597)
  internal_iconv_t_520094488 = (when declared(internal_iconv_t):
    when ownSizeof(internal_iconv_t) != ownSizeof(internal_iconv_t_520094487):
      static :
        warning("Declaration of " & "internal_iconv_t" &
            " exists but with different size")
    internal_iconv_t
   else:
    internal_iconv_t_520094487)
  enum_ConfigFlags_520094298 = (when declared(enum_ConfigFlags):
    when ownSizeof(enum_ConfigFlags) != ownSizeof(enum_ConfigFlags_520094297):
      static :
        warning("Declaration of " & "enum_ConfigFlags" &
            " exists but with different size")
    enum_ConfigFlags
   else:
    enum_ConfigFlags_520094297)
  compiler_timer_t_520094498 = (when declared(compiler_timer_t):
    when ownSizeof(compiler_timer_t) != ownSizeof(compiler_timer_t_520094497):
      static :
        warning("Declaration of " & "compiler_timer_t" &
            " exists but with different size")
    compiler_timer_t
   else:
    compiler_timer_t_520094497)
  BlendMode_520094364 = (when declared(BlendMode):
    when ownSizeof(BlendMode) != ownSizeof(BlendMode_520094363):
      static :
        warning("Declaration of " & "BlendMode" &
            " exists but with different size")
    BlendMode
   else:
    BlendMode_520094363)
  struct_GlyphInfo_520094189 = (when declared(struct_GlyphInfo):
    when ownSizeof(struct_GlyphInfo) != ownSizeof(struct_GlyphInfo_520094188):
      static :
        warning("Declaration of " & "struct_GlyphInfo" &
            " exists but with different size")
    struct_GlyphInfo
   else:
    struct_GlyphInfo_520094188)
  KeyboardKey_520094308 = (when declared(KeyboardKey):
    when ownSizeof(KeyboardKey) != ownSizeof(KeyboardKey_520094307):
      static :
        warning("Declaration of " & "KeyboardKey" &
            " exists but with different size")
    KeyboardKey
   else:
    KeyboardKey_520094307)
  rlTextureFilter_520094572 = (when declared(rlTextureFilter):
    when ownSizeof(rlTextureFilter) != ownSizeof(rlTextureFilter_520094571):
      static :
        warning("Declaration of " & "rlTextureFilter" &
            " exists but with different size")
    rlTextureFilter
   else:
    rlTextureFilter_520094571)
  Image_520094169 = (when declared(Image):
    when ownSizeof(Image) != ownSizeof(Image_520094168):
      static :
        warning("Declaration of " & "Image" & " exists but with different size")
    Image
   else:
    Image_520094168)
  enum_rlShaderUniformDataType_520094582 = (when declared(
      enum_rlShaderUniformDataType):
    when ownSizeof(enum_rlShaderUniformDataType) !=
        ownSizeof(enum_rlShaderUniformDataType_520094581):
      static :
        warning("Declaration of " & "enum_rlShaderUniformDataType" &
            " exists but with different size")
    enum_rlShaderUniformDataType
   else:
    enum_rlShaderUniformDataType_520094581)
  enum_TextureFilter_520094346 = (when declared(enum_TextureFilter):
    when ownSizeof(enum_TextureFilter) != ownSizeof(enum_TextureFilter_520094345):
      static :
        warning("Declaration of " & "enum_TextureFilter" &
            " exists but with different size")
    enum_TextureFilter
   else:
    enum_TextureFilter_520094345)
  struct_Camera2D_520094210 = (when declared(struct_Camera2D):
    when ownSizeof(struct_Camera2D) != ownSizeof(struct_Camera2D_520094209):
      static :
        warning("Declaration of " & "struct_Camera2D" &
            " exists but with different size")
    struct_Camera2D
   else:
    struct_Camera2D_520094209)
  struct_FilePathList_520094286 = (when declared(struct_FilePathList):
    when ownSizeof(struct_FilePathList) != ownSizeof(struct_FilePathList_520094285):
      static :
        warning("Declaration of " & "struct_FilePathList" &
            " exists but with different size")
    struct_FilePathList
   else:
    struct_FilePathList_520094285)
  struct_ModelAnimation_520094242 = (when declared(struct_ModelAnimation):
    when ownSizeof(struct_ModelAnimation) != ownSizeof(struct_ModelAnimation_520094241):
      static :
        warning("Declaration of " & "struct_ModelAnimation" &
            " exists but with different size")
    struct_ModelAnimation
   else:
    struct_ModelAnimation_520094241)
  compiler_mode_t_520094464 = (when declared(compiler_mode_t):
    when ownSizeof(compiler_mode_t) != ownSizeof(compiler_mode_t_520094463):
      static :
        warning("Declaration of " & "compiler_mode_t" &
            " exists but with different size")
    compiler_mode_t
   else:
    compiler_mode_t_520094463)
  struct_Camera3D_520094204 = (when declared(struct_Camera3D):
    when ownSizeof(struct_Camera3D) != ownSizeof(struct_Camera3D_520094203):
      static :
        warning("Declaration of " & "struct_Camera3D" &
            " exists but with different size")
    struct_Camera3D
   else:
    struct_Camera3D_520094203)
  compiler_uid_t_520094456 = (when declared(compiler_uid_t):
    when ownSizeof(compiler_uid_t) != ownSizeof(compiler_uid_t_520094455):
      static :
        warning("Declaration of " & "compiler_uid_t" &
            " exists but with different size")
    compiler_uid_t
   else:
    compiler_uid_t_520094455)
  struct_rand48_520094540 = (when declared(struct_rand48):
    when ownSizeof(struct_rand48) != ownSizeof(struct_rand48_520094539):
      static :
        warning("Declaration of " & "struct_rand48" &
            " exists but with different size")
    struct_rand48
   else:
    struct_rand48_520094539)
  compiler_uint_least32_t_520094428 = (when declared(compiler_uint_least32_t):
    when ownSizeof(compiler_uint_least32_t) !=
        ownSizeof(compiler_uint_least32_t_520094427):
      static :
        warning("Declaration of " & "compiler_uint_least32_t" &
            " exists but with different size")
    compiler_uint_least32_t
   else:
    compiler_uint_least32_t_520094427)
  rlShaderAttributeDataType_520094588 = (when declared(rlShaderAttributeDataType):
    when ownSizeof(rlShaderAttributeDataType) !=
        ownSizeof(rlShaderAttributeDataType_520094587):
      static :
        warning("Declaration of " & "rlShaderAttributeDataType" &
            " exists but with different size")
    rlShaderAttributeDataType
   else:
    rlShaderAttributeDataType_520094587)
  internal_off_t_520094450 = (when declared(internal_off_t):
    when ownSizeof(internal_off_t) != ownSizeof(internal_off_t_520094449):
      static :
        warning("Declaration of " & "internal_off_t" &
            " exists but with different size")
    internal_off_t
   else:
    internal_off_t_520094449)
  TraceLogLevel_520094304 = (when declared(TraceLogLevel):
    when ownSizeof(TraceLogLevel) != ownSizeof(TraceLogLevel_520094303):
      static :
        warning("Declaration of " & "TraceLogLevel" &
            " exists but with different size")
    TraceLogLevel
   else:
    TraceLogLevel_520094303)
  struct_float16_520094398 = (when declared(struct_float16):
    when ownSizeof(struct_float16) != ownSizeof(struct_float16_520094397):
      static :
        warning("Declaration of " & "struct_float16" &
            " exists but with different size")
    struct_float16
   else:
    struct_float16_520094397)
  rlGlVersion_520094560 = (when declared(rlGlVersion):
    when ownSizeof(rlGlVersion) != ownSizeof(rlGlVersion_520094559):
      static :
        warning("Declaration of " & "rlGlVersion" &
            " exists but with different size")
    rlGlVersion
   else:
    rlGlVersion_520094559)
  ShaderUniformDataType_520094336 = (when declared(ShaderUniformDataType):
    when ownSizeof(ShaderUniformDataType) != ownSizeof(ShaderUniformDataType_520094335):
      static :
        warning("Declaration of " & "ShaderUniformDataType" &
            " exists but with different size")
    ShaderUniformDataType
   else:
    ShaderUniformDataType_520094335)
  Vector3_520094147 = (when declared(Vector3):
    when ownSizeof(Vector3) != ownSizeof(Vector3_520094146):
      static :
        warning("Declaration of " & "Vector3" &
            " exists but with different size")
    Vector3
   else:
    Vector3_520094146)
  Vector4_520094151 = (when declared(Vector4):
    when ownSizeof(Vector4) != ownSizeof(Vector4_520094150):
      static :
        warning("Declaration of " & "Vector4" &
            " exists but with different size")
    Vector4
   else:
    Vector4_520094150)
  AudioStream_520094268 = (when declared(AudioStream):
    when ownSizeof(AudioStream) != ownSizeof(AudioStream_520094267):
      static :
        warning("Declaration of " & "AudioStream" &
            " exists but with different size")
    AudioStream
   else:
    AudioStream_520094267)
  struct_VrStereoConfig_520094282 = (when declared(struct_VrStereoConfig):
    when ownSizeof(struct_VrStereoConfig) != ownSizeof(struct_VrStereoConfig_520094281):
      static :
        warning("Declaration of " & "struct_VrStereoConfig" &
            " exists but with different size")
    struct_VrStereoConfig
   else:
    struct_VrStereoConfig_520094281)
  enum_rlPixelFormat_520094566 = (when declared(enum_rlPixelFormat):
    when ownSizeof(enum_rlPixelFormat) != ownSizeof(enum_rlPixelFormat_520094565):
      static :
        warning("Declaration of " & "enum_rlPixelFormat" &
            " exists but with different size")
    enum_rlPixelFormat
   else:
    enum_rlPixelFormat_520094565)
  compiler_uintptr_t_520094440 = (when declared(compiler_uintptr_t):
    when ownSizeof(compiler_uintptr_t) != ownSizeof(compiler_uintptr_t_520094439):
      static :
        warning("Declaration of " & "compiler_uintptr_t" &
            " exists but with different size")
    compiler_uintptr_t
   else:
    compiler_uintptr_t_520094439)
  rlDrawCall_520094552 = (when declared(rlDrawCall):
    when ownSizeof(rlDrawCall) != ownSizeof(rlDrawCall_520094551):
      static :
        warning("Declaration of " & "rlDrawCall" &
            " exists but with different size")
    rlDrawCall
   else:
    rlDrawCall_520094551)
  TextureCubemap_520094177 = (when declared(TextureCubemap):
    when ownSizeof(TextureCubemap) != ownSizeof(TextureCubemap_520094176):
      static :
        warning("Declaration of " & "TextureCubemap" &
            " exists but with different size")
    TextureCubemap
   else:
    TextureCubemap_520094176)
  internal_flock_t_520094520 = (when declared(internal_flock_t):
    when ownSizeof(internal_flock_t) != ownSizeof(internal_flock_t_520094519):
      static :
        warning("Declaration of " & "internal_flock_t" &
            " exists but with different size")
    internal_flock_t
   else:
    internal_flock_t_520094519)
  struct_Image_520094167 = (when declared(struct_Image):
    when ownSizeof(struct_Image) != ownSizeof(struct_Image_520094166):
      static :
        warning("Declaration of " & "struct_Image" &
            " exists but with different size")
    struct_Image
   else:
    struct_Image_520094166)
  ShaderAttributeDataType_520094340 = (when declared(ShaderAttributeDataType):
    when ownSizeof(ShaderAttributeDataType) !=
        ownSizeof(ShaderAttributeDataType_520094339):
      static :
        warning("Declaration of " & "ShaderAttributeDataType" &
            " exists but with different size")
    ShaderAttributeDataType
   else:
    ShaderAttributeDataType_520094339)
  Model_520094240 = (when declared(Model):
    when ownSizeof(Model) != ownSizeof(Model_520094239):
      static :
        warning("Declaration of " & "Model" & " exists but with different size")
    Model
   else:
    Model_520094239)
  compiler_int16_t_520094406 = (when declared(compiler_int16_t):
    when ownSizeof(compiler_int16_t) != ownSizeof(compiler_int16_t_520094405):
      static :
        warning("Declaration of " & "compiler_int16_t" &
            " exists but with different size")
    compiler_int16_t
   else:
    compiler_int16_t_520094405)
  enum_CameraProjection_520094374 = (when declared(enum_CameraProjection):
    when ownSizeof(enum_CameraProjection) != ownSizeof(enum_CameraProjection_520094373):
      static :
        warning("Declaration of " & "enum_CameraProjection" &
            " exists but with different size")
    enum_CameraProjection
   else:
    enum_CameraProjection_520094373)
  struct_Bigint_520094522 = (when declared(struct_Bigint):
    when ownSizeof(struct_Bigint) != ownSizeof(struct_Bigint_520094521):
      static :
        warning("Declaration of " & "struct_Bigint" &
            " exists but with different size")
    struct_Bigint
   else:
    struct_Bigint_520094521)
  BoneInfo_520094236 = (when declared(BoneInfo):
    when ownSizeof(BoneInfo) != ownSizeof(BoneInfo_520094235):
      static :
        warning("Declaration of " & "BoneInfo" &
            " exists but with different size")
    BoneInfo
   else:
    BoneInfo_520094235)
  struct_RenderTexture_520094179 = (when declared(struct_RenderTexture):
    when ownSizeof(struct_RenderTexture) != ownSizeof(struct_RenderTexture_520094178):
      static :
        warning("Declaration of " & "struct_RenderTexture" &
            " exists but with different size")
    struct_RenderTexture
   else:
    struct_RenderTexture_520094178)
  enum_Gesture_520094366 = (when declared(enum_Gesture):
    when ownSizeof(enum_Gesture) != ownSizeof(enum_Gesture_520094365):
      static :
        warning("Declaration of " & "enum_Gesture" &
            " exists but with different size")
    enum_Gesture
   else:
    enum_Gesture_520094365)
  compiler_nlink_t_520094506 = (when declared(compiler_nlink_t):
    when ownSizeof(compiler_nlink_t) != ownSizeof(compiler_nlink_t_520094505):
      static :
        warning("Declaration of " & "compiler_nlink_t" &
            " exists but with different size")
    compiler_nlink_t
   else:
    compiler_nlink_t_520094505)
  struct_MaterialMap_520094222 = (when declared(struct_MaterialMap):
    when ownSizeof(struct_MaterialMap) != ownSizeof(struct_MaterialMap_520094221):
      static :
        warning("Declaration of " & "struct_MaterialMap" &
            " exists but with different size")
    struct_MaterialMap
   else:
    struct_MaterialMap_520094221)
  enum_ShaderUniformDataType_520094334 = (when declared(
      enum_ShaderUniformDataType):
    when ownSizeof(enum_ShaderUniformDataType) !=
        ownSizeof(enum_ShaderUniformDataType_520094333):
      static :
        warning("Declaration of " & "enum_ShaderUniformDataType" &
            " exists but with different size")
    enum_ShaderUniformDataType
   else:
    enum_ShaderUniformDataType_520094333)
  VrStereoConfig_520094284 = (when declared(VrStereoConfig):
    when ownSizeof(VrStereoConfig) != ownSizeof(VrStereoConfig_520094283):
      static :
        warning("Declaration of " & "VrStereoConfig" &
            " exists but with different size")
    VrStereoConfig
   else:
    VrStereoConfig_520094283)
  compiler_clockid_t_520094494 = (when declared(compiler_clockid_t):
    when ownSizeof(compiler_clockid_t) != ownSizeof(compiler_clockid_t_520094493):
      static :
        warning("Declaration of " & "compiler_clockid_t" &
            " exists but with different size")
    compiler_clockid_t
   else:
    compiler_clockid_t_520094493)
  enum_BlendMode_520094362 = (when declared(enum_BlendMode):
    when ownSizeof(enum_BlendMode) != ownSizeof(enum_BlendMode_520094361):
      static :
        warning("Declaration of " & "enum_BlendMode" &
            " exists but with different size")
    enum_BlendMode
   else:
    enum_BlendMode_520094361)
  compiler_blkcnt_t_520094442 = (when declared(compiler_blkcnt_t):
    when ownSizeof(compiler_blkcnt_t) != ownSizeof(compiler_blkcnt_t_520094441):
      static :
        warning("Declaration of " & "compiler_blkcnt_t" &
            " exists but with different size")
    compiler_blkcnt_t
   else:
    compiler_blkcnt_t_520094441)
  struct_Vector4_520094149 = (when declared(struct_Vector4):
    when ownSizeof(struct_Vector4) != ownSizeof(struct_Vector4_520094148):
      static :
        warning("Declaration of " & "struct_Vector4" &
            " exists but with different size")
    struct_Vector4
   else:
    struct_Vector4_520094148)
  CameraMode_520094372 = (when declared(CameraMode):
    when ownSizeof(CameraMode) != ownSizeof(CameraMode_520094371):
      static :
        warning("Declaration of " & "CameraMode" &
            " exists but with different size")
    CameraMode
   else:
    CameraMode_520094371)
  NPatchLayout_520094380 = (when declared(NPatchLayout):
    when ownSizeof(NPatchLayout) != ownSizeof(NPatchLayout_520094379):
      static :
        warning("Declaration of " & "NPatchLayout" &
            " exists but with different size")
    NPatchLayout
   else:
    NPatchLayout_520094379)
  enum_rlShaderLocationIndex_520094578 = (when declared(
      enum_rlShaderLocationIndex):
    when ownSizeof(enum_rlShaderLocationIndex) !=
        ownSizeof(enum_rlShaderLocationIndex_520094577):
      static :
        warning("Declaration of " & "enum_rlShaderLocationIndex" &
            " exists but with different size")
    enum_rlShaderLocationIndex
   else:
    enum_rlShaderLocationIndex_520094577)
  Shader_520094220 = (when declared(Shader):
    when ownSizeof(Shader) != ownSizeof(Shader_520094219):
      static :
        warning("Declaration of " & "Shader" & " exists but with different size")
    Shader
   else:
    Shader_520094219)
  compiler_blksize_t_520094444 = (when declared(compiler_blksize_t):
    when ownSizeof(compiler_blksize_t) != ownSizeof(compiler_blksize_t_520094443):
      static :
        warning("Declaration of " & "compiler_blksize_t" &
            " exists but with different size")
    compiler_blksize_t
   else:
    compiler_blksize_t_520094443)
  Material_520094228 = (when declared(Material):
    when ownSizeof(Material) != ownSizeof(Material_520094227):
      static :
        warning("Declaration of " & "Material" &
            " exists but with different size")
    Material
   else:
    Material_520094227)
  compiler_intptr_t_520094438 = (when declared(compiler_intptr_t):
    when ownSizeof(compiler_intptr_t) != ownSizeof(compiler_intptr_t_520094437):
      static :
        warning("Declaration of " & "compiler_intptr_t" &
            " exists but with different size")
    compiler_intptr_t
   else:
    compiler_intptr_t_520094437)
  struct_Model_520094238 = (when declared(struct_Model):
    when ownSizeof(struct_Model) != ownSizeof(struct_Model_520094237):
      static :
        warning("Declaration of " & "struct_Model" &
            " exists but with different size")
    struct_Model
   else:
    struct_Model_520094237)
  enum_PixelFormat_520094342 = (when declared(enum_PixelFormat):
    when ownSizeof(enum_PixelFormat) != ownSizeof(enum_PixelFormat_520094341):
      static :
        warning("Declaration of " & "enum_PixelFormat" &
            " exists but with different size")
    enum_PixelFormat
   else:
    enum_PixelFormat_520094341)
  rlPixelFormat_520094568 = (when declared(rlPixelFormat):
    when ownSizeof(rlPixelFormat) != ownSizeof(rlPixelFormat_520094567):
      static :
        warning("Declaration of " & "rlPixelFormat" &
            " exists but with different size")
    rlPixelFormat
   else:
    rlPixelFormat_520094567)
  Vector2_520094143 = (when declared(Vector2):
    when ownSizeof(Vector2) != ownSizeof(Vector2_520094142):
      static :
        warning("Declaration of " & "Vector2" &
            " exists but with different size")
    Vector2
   else:
    Vector2_520094142)
  compiler_off_t_520094468 = (when declared(compiler_off_t):
    when ownSizeof(compiler_off_t) != ownSizeof(compiler_off_t_520094467):
      static :
        warning("Declaration of " & "compiler_off_t" &
            " exists but with different size")
    compiler_off_t
   else:
    compiler_off_t_520094467)
  enum_GamepadAxis_520094322 = (when declared(enum_GamepadAxis):
    when ownSizeof(enum_GamepadAxis) != ownSizeof(enum_GamepadAxis_520094321):
      static :
        warning("Declaration of " & "enum_GamepadAxis" &
            " exists but with different size")
    enum_GamepadAxis
   else:
    enum_GamepadAxis_520094321)
  CameraProjection_520094376 = (when declared(CameraProjection):
    when ownSizeof(CameraProjection) != ownSizeof(CameraProjection_520094375):
      static :
        warning("Declaration of " & "CameraProjection" &
            " exists but with different size")
    CameraProjection
   else:
    CameraProjection_520094375)
  struct_rlVertexBuffer_520094546 = (when declared(struct_rlVertexBuffer):
    when ownSizeof(struct_rlVertexBuffer) != ownSizeof(struct_rlVertexBuffer_520094545):
      static :
        warning("Declaration of " & "struct_rlVertexBuffer" &
            " exists but with different size")
    struct_rlVertexBuffer
   else:
    struct_rlVertexBuffer_520094545)
  rlTraceLogLevel_520094564 = (when declared(rlTraceLogLevel):
    when ownSizeof(rlTraceLogLevel) != ownSizeof(rlTraceLogLevel_520094563):
      static :
        warning("Declaration of " & "rlTraceLogLevel" &
            " exists but with different size")
    rlTraceLogLevel
   else:
    rlTraceLogLevel_520094563)
  compiler_int_least32_t_520094426 = (when declared(compiler_int_least32_t):
    when ownSizeof(compiler_int_least32_t) != ownSizeof(compiler_int_least32_t_520094425):
      static :
        warning("Declaration of " & "compiler_int_least32_t" &
            " exists but with different size")
    compiler_int_least32_t
   else:
    compiler_int_least32_t_520094425)
  internal_fpos_t_520094474 = (when declared(internal_fpos_t):
    when ownSizeof(internal_fpos_t) != ownSizeof(internal_fpos_t_520094473):
      static :
        warning("Declaration of " & "internal_fpos_t" &
            " exists but with different size")
    internal_fpos_t
   else:
    internal_fpos_t_520094473)
  internal_LOCK_T_520094516 = (when declared(internal_LOCK_T):
    when ownSizeof(internal_LOCK_T) != ownSizeof(internal_LOCK_T_520094515):
      static :
        warning("Declaration of " & "internal_LOCK_T" &
            " exists but with different size")
    internal_LOCK_T
   else:
    internal_LOCK_T_520094515)
  struct_reent_520094534 = (when declared(struct_reent):
    when ownSizeof(struct_reent) != ownSizeof(struct_reent_520094533):
      static :
        warning("Declaration of " & "struct_reent" &
            " exists but with different size")
    struct_reent
   else:
    struct_reent_520094533)
  enum_ShaderAttributeDataType_520094338 = (when declared(
      enum_ShaderAttributeDataType):
    when ownSizeof(enum_ShaderAttributeDataType) !=
        ownSizeof(enum_ShaderAttributeDataType_520094337):
      static :
        warning("Declaration of " & "enum_ShaderAttributeDataType" &
            " exists but with different size")
    enum_ShaderAttributeDataType
   else:
    enum_ShaderAttributeDataType_520094337)
  struct_float3_520094394 = (when declared(struct_float3):
    when ownSizeof(struct_float3) != ownSizeof(struct_float3_520094393):
      static :
        warning("Declaration of " & "struct_float3" &
            " exists but with different size")
    struct_float3
   else:
    struct_float3_520094393)
  struct_atexit_520094528 = (when declared(struct_atexit):
    when ownSizeof(struct_atexit) != ownSizeof(struct_atexit_520094527):
      static :
        warning("Declaration of " & "struct_atexit" &
            " exists but with different size")
    struct_atexit
   else:
    struct_atexit_520094527)
  struct_RayCollision_520094250 = (when declared(struct_RayCollision):
    when ownSizeof(struct_RayCollision) != ownSizeof(struct_RayCollision_520094249):
      static :
        warning("Declaration of " & "struct_RayCollision" &
            " exists but with different size")
    struct_RayCollision
   else:
    struct_RayCollision_520094249)
  compiler_fsfilcnt_t_520094448 = (when declared(compiler_fsfilcnt_t):
    when ownSizeof(compiler_fsfilcnt_t) != ownSizeof(compiler_fsfilcnt_t_520094447):
      static :
        warning("Declaration of " & "compiler_fsfilcnt_t" &
            " exists but with different size")
    compiler_fsfilcnt_t
   else:
    compiler_fsfilcnt_t_520094447)
  rlRenderBatch_520094556 = (when declared(rlRenderBatch):
    when ownSizeof(rlRenderBatch) != ownSizeof(rlRenderBatch_520094555):
      static :
        warning("Declaration of " & "rlRenderBatch" &
            " exists but with different size")
    rlRenderBatch
   else:
    rlRenderBatch_520094555)
  compiler_useconds_t_520094510 = (when declared(compiler_useconds_t):
    when ownSizeof(compiler_useconds_t) != ownSizeof(compiler_useconds_t_520094509):
      static :
        warning("Declaration of " & "compiler_useconds_t" &
            " exists but with different size")
    compiler_useconds_t
   else:
    compiler_useconds_t_520094509)
  enum_rlGlVersion_520094558 = (when declared(enum_rlGlVersion):
    when ownSizeof(enum_rlGlVersion) != ownSizeof(enum_rlGlVersion_520094557):
      static :
        warning("Declaration of " & "enum_rlGlVersion" &
            " exists but with different size")
    enum_rlGlVersion
   else:
    enum_rlGlVersion_520094557)
  rlCullMode_520094600 = (when declared(rlCullMode):
    when ownSizeof(rlCullMode) != ownSizeof(rlCullMode_520094599):
      static :
        warning("Declaration of " & "rlCullMode" &
            " exists but with different size")
    rlCullMode
   else:
    rlCullMode_520094599)
  enum_CubemapLayout_520094354 = (when declared(enum_CubemapLayout):
    when ownSizeof(enum_CubemapLayout) != ownSizeof(enum_CubemapLayout_520094353):
      static :
        warning("Declaration of " & "enum_CubemapLayout" &
            " exists but with different size")
    enum_CubemapLayout
   else:
    enum_CubemapLayout_520094353)
  compiler_uint8_t_520094404 = (when declared(compiler_uint8_t):
    when ownSizeof(compiler_uint8_t) != ownSizeof(compiler_uint8_t_520094403):
      static :
        warning("Declaration of " & "compiler_uint8_t" &
            " exists but with different size")
    compiler_uint8_t
   else:
    compiler_uint8_t_520094403)
  compiler_int_least16_t_520094422 = (when declared(compiler_int_least16_t):
    when ownSizeof(compiler_int_least16_t) != ownSizeof(compiler_int_least16_t_520094421):
      static :
        warning("Declaration of " & "compiler_int_least16_t" &
            " exists but with different size")
    compiler_int_least16_t
   else:
    compiler_int_least16_t_520094421)
  TraceLogCallback_520094382 = (when declared(TraceLogCallback):
    when ownSizeof(TraceLogCallback) != ownSizeof(TraceLogCallback_520094381):
      static :
        warning("Declaration of " & "TraceLogCallback" &
            " exists but with different size")
    TraceLogCallback
   else:
    TraceLogCallback_520094381)
  internal_off64_t_520094466 = (when declared(internal_off64_t):
    when ownSizeof(internal_off64_t) != ownSizeof(internal_off64_t_520094465):
      static :
        warning("Declaration of " & "internal_off64_t" &
            " exists but with different size")
    internal_off64_t
   else:
    internal_off64_t_520094465)
  VrDeviceInfo_520094280 = (when declared(VrDeviceInfo):
    when ownSizeof(VrDeviceInfo) != ownSizeof(VrDeviceInfo_520094279):
      static :
        warning("Declaration of " & "VrDeviceInfo" &
            " exists but with different size")
    VrDeviceInfo
   else:
    VrDeviceInfo_520094279)
  enum_ShaderLocationIndex_520094330 = (when declared(enum_ShaderLocationIndex):
    when ownSizeof(enum_ShaderLocationIndex) !=
        ownSizeof(enum_ShaderLocationIndex_520094329):
      static :
        warning("Declaration of " & "enum_ShaderLocationIndex" &
            " exists but with different size")
    enum_ShaderLocationIndex
   else:
    enum_ShaderLocationIndex_520094329)
  rlShaderLocationIndex_520094580 = (when declared(rlShaderLocationIndex):
    when ownSizeof(rlShaderLocationIndex) != ownSizeof(rlShaderLocationIndex_520094579):
      static :
        warning("Declaration of " & "rlShaderLocationIndex" &
            " exists but with different size")
    rlShaderLocationIndex
   else:
    rlShaderLocationIndex_520094579)
  AutomationEventList_520094296 = (when declared(AutomationEventList):
    when ownSizeof(AutomationEventList) != ownSizeof(AutomationEventList_520094295):
      static :
        warning("Declaration of " & "AutomationEventList" &
            " exists but with different size")
    AutomationEventList
   else:
    AutomationEventList_520094295)
  struct_sFILE_520094532 = (when declared(struct_sFILE):
    when ownSizeof(struct_sFILE) != ownSizeof(struct_sFILE_520094531):
      static :
        warning("Declaration of " & "struct_sFILE" &
            " exists but with different size")
    struct_sFILE
   else:
    struct_sFILE_520094531)
  BoundingBox_520094256 = (when declared(BoundingBox):
    when ownSizeof(BoundingBox) != ownSizeof(BoundingBox_520094255):
      static :
        warning("Declaration of " & "BoundingBox" &
            " exists but with different size")
    BoundingBox
   else:
    BoundingBox_520094255)
  enum_rlFramebufferAttachType_520094590 = (when declared(
      enum_rlFramebufferAttachType):
    when ownSizeof(enum_rlFramebufferAttachType) !=
        ownSizeof(enum_rlFramebufferAttachType_520094589):
      static :
        warning("Declaration of " & "enum_rlFramebufferAttachType" &
            " exists but with different size")
    enum_rlFramebufferAttachType
   else:
    enum_rlFramebufferAttachType_520094589)
  compiler_uintmax_t_520094436 = (when declared(compiler_uintmax_t):
    when ownSizeof(compiler_uintmax_t) != ownSizeof(compiler_uintmax_t_520094435):
      static :
        warning("Declaration of " & "compiler_uintmax_t" &
            " exists but with different size")
    compiler_uintmax_t
   else:
    compiler_uintmax_t_520094435)
  RenderTexture_520094181 = (when declared(RenderTexture):
    when ownSizeof(RenderTexture) != ownSizeof(RenderTexture_520094180):
      static :
        warning("Declaration of " & "RenderTexture" &
            " exists but with different size")
    RenderTexture
   else:
    RenderTexture_520094180)
  compiler_int_least8_t_520094418 = (when declared(compiler_int_least8_t):
    when ownSizeof(compiler_int_least8_t) != ownSizeof(compiler_int_least8_t_520094417):
      static :
        warning("Declaration of " & "compiler_int_least8_t" &
            " exists but with different size")
    compiler_int_least8_t
   else:
    compiler_int_least8_t_520094417)
  struct_Vector2_520094141 = (when declared(struct_Vector2):
    when ownSizeof(struct_Vector2) != ownSizeof(struct_Vector2_520094140):
      static :
        warning("Declaration of " & "struct_Vector2" &
            " exists but with different size")
    struct_Vector2
   else:
    struct_Vector2_520094140)
  internal_LOCK_RECURSIVE_T_520094518 = (when declared(internal_LOCK_RECURSIVE_T):
    when ownSizeof(internal_LOCK_RECURSIVE_T) !=
        ownSizeof(internal_LOCK_RECURSIVE_T_520094517):
      static :
        warning("Declaration of " & "internal_LOCK_RECURSIVE_T" &
            " exists but with different size")
    internal_LOCK_RECURSIVE_T
   else:
    internal_LOCK_RECURSIVE_T_520094517)
  enum_MaterialMapIndex_520094326 = (when declared(enum_MaterialMapIndex):
    when ownSizeof(enum_MaterialMapIndex) != ownSizeof(enum_MaterialMapIndex_520094325):
      static :
        warning("Declaration of " & "enum_MaterialMapIndex" &
            " exists but with different size")
    enum_MaterialMapIndex
   else:
    enum_MaterialMapIndex_520094325)
  enum_rlTraceLogLevel_520094562 = (when declared(enum_rlTraceLogLevel):
    when ownSizeof(enum_rlTraceLogLevel) != ownSizeof(enum_rlTraceLogLevel_520094561):
      static :
        warning("Declaration of " & "enum_rlTraceLogLevel" &
            " exists but with different size")
    enum_rlTraceLogLevel
   else:
    enum_rlTraceLogLevel_520094561)
  struct_Rectangle_520094163 = (when declared(struct_Rectangle):
    when ownSizeof(struct_Rectangle) != ownSizeof(struct_Rectangle_520094162):
      static :
        warning("Declaration of " & "struct_Rectangle" &
            " exists but with different size")
    struct_Rectangle
   else:
    struct_Rectangle_520094162)
  LoadFileTextCallback_520094388 = (when declared(LoadFileTextCallback):
    when ownSizeof(LoadFileTextCallback) != ownSizeof(LoadFileTextCallback_520094387):
      static :
        warning("Declaration of " & "LoadFileTextCallback" &
            " exists but with different size")
    LoadFileTextCallback
   else:
    LoadFileTextCallback_520094387)
  Camera_520094208 = (when declared(Camera):
    when ownSizeof(Camera) != ownSizeof(Camera_520094207):
      static :
        warning("Declaration of " & "Camera" & " exists but with different size")
    Camera
   else:
    Camera_520094207)
  Texture_520094173 = (when declared(Texture):
    when ownSizeof(Texture) != ownSizeof(Texture_520094172):
      static :
        warning("Declaration of " & "Texture" &
            " exists but with different size")
    Texture
   else:
    Texture_520094172)
  Ray_520094248 = (when declared(Ray):
    when ownSizeof(Ray) != ownSizeof(Ray_520094247):
      static :
        warning("Declaration of " & "Ray" & " exists but with different size")
    Ray
   else:
    Ray_520094247)
  ConfigFlags_520094300 = (when declared(ConfigFlags):
    when ownSizeof(ConfigFlags) != ownSizeof(ConfigFlags_520094299):
      static :
        warning("Declaration of " & "ConfigFlags" &
            " exists but with different size")
    ConfigFlags
   else:
    ConfigFlags_520094299)
  compiler_uint32_t_520094412 = (when declared(compiler_uint32_t):
    when ownSizeof(compiler_uint32_t) != ownSizeof(compiler_uint32_t_520094411):
      static :
        warning("Declaration of " & "compiler_uint32_t" &
            " exists but with different size")
    compiler_uint32_t
   else:
    compiler_uint32_t_520094411)
  MouseCursor_520094316 = (when declared(MouseCursor):
    when ownSizeof(MouseCursor) != ownSizeof(MouseCursor_520094315):
      static :
        warning("Declaration of " & "MouseCursor" &
            " exists but with different size")
    MouseCursor
   else:
    MouseCursor_520094315)
  compiler_va_list_520094512 = (when declared(compiler_va_list):
    when ownSizeof(compiler_va_list) != ownSizeof(compiler_va_list_520094511):
      static :
        warning("Declaration of " & "compiler_va_list" &
            " exists but with different size")
    compiler_va_list
   else:
    compiler_va_list_520094511)
  compiler_key_t_520094472 = (when declared(compiler_key_t):
    when ownSizeof(compiler_key_t) != ownSizeof(compiler_key_t_520094471):
      static :
        warning("Declaration of " & "compiler_key_t" &
            " exists but with different size")
    compiler_key_t
   else:
    compiler_key_t_520094471)
  Camera3D_520094206 = (when declared(Camera3D):
    when ownSizeof(Camera3D) != ownSizeof(Camera3D_520094205):
      static :
        warning("Declaration of " & "Camera3D" &
            " exists but with different size")
    Camera3D
   else:
    Camera3D_520094205)
  compiler_pid_t_520094452 = (when declared(compiler_pid_t):
    when ownSizeof(compiler_pid_t) != ownSizeof(compiler_pid_t_520094451):
      static :
        warning("Declaration of " & "compiler_pid_t" &
            " exists but with different size")
    compiler_pid_t
   else:
    compiler_pid_t_520094451)
  compiler_time_t_520094492 = (when declared(compiler_time_t):
    when ownSizeof(compiler_time_t) != ownSizeof(compiler_time_t_520094491):
      static :
        warning("Declaration of " & "compiler_time_t" &
            " exists but with different size")
    compiler_time_t
   else:
    compiler_time_t_520094491)
  Matrix_520094157 = (when declared(Matrix):
    when ownSizeof(Matrix) != ownSizeof(Matrix_520094156):
      static :
        warning("Declaration of " & "Matrix" & " exists but with different size")
    Matrix
   else:
    Matrix_520094156)
  rAudioProcessor_520094264 = (when declared(rAudioProcessor):
    when ownSizeof(rAudioProcessor) != ownSizeof(rAudioProcessor_520094263):
      static :
        warning("Declaration of " & "rAudioProcessor" &
            " exists but with different size")
    rAudioProcessor
   else:
    rAudioProcessor_520094263)
  TextureFilter_520094348 = (when declared(TextureFilter):
    when ownSizeof(TextureFilter) != ownSizeof(TextureFilter_520094347):
      static :
        warning("Declaration of " & "TextureFilter" &
            " exists but with different size")
    TextureFilter
   else:
    TextureFilter_520094347)
  compiler_uint_least8_t_520094420 = (when declared(compiler_uint_least8_t):
    when ownSizeof(compiler_uint_least8_t) != ownSizeof(compiler_uint_least8_t_520094419):
      static :
        warning("Declaration of " & "compiler_uint_least8_t" &
            " exists but with different size")
    compiler_uint_least8_t
   else:
    compiler_uint_least8_t_520094419)
  struct_Color_520094159 = (when declared(struct_Color):
    when ownSizeof(struct_Color) != ownSizeof(struct_Color_520094158):
      static :
        warning("Declaration of " & "struct_Color" &
            " exists but with different size")
    struct_Color
   else:
    struct_Color_520094158)
  FontType_520094360 = (when declared(FontType):
    when ownSizeof(FontType) != ownSizeof(FontType_520094359):
      static :
        warning("Declaration of " & "FontType" &
            " exists but with different size")
    FontType
   else:
    FontType_520094359)
  Rectangle_520094165 = (when declared(Rectangle):
    when ownSizeof(Rectangle) != ownSizeof(Rectangle_520094164):
      static :
        warning("Declaration of " & "Rectangle" &
            " exists but with different size")
    Rectangle
   else:
    Rectangle_520094164)
when not declared(struct_Transform):
  type
    struct_Transform* = struct_Transform_520094229
else:
  static :
    hint("Declaration of " & "struct_Transform" &
        " already exists, not redeclaring")
when not declared(RayCollision):
  type
    RayCollision* = RayCollision_520094251
else:
  static :
    hint("Declaration of " & "RayCollision" & " already exists, not redeclaring")
when not declared(NPatchInfo):
  type
    NPatchInfo* = NPatchInfo_520094186
else:
  static :
    hint("Declaration of " & "NPatchInfo" & " already exists, not redeclaring")
when not declared(internal_ssize_t):
  type
    internal_ssize_t* = internal_ssize_t_520094477
else:
  static :
    hint("Declaration of " & "internal_ssize_t" &
        " already exists, not redeclaring")
when not declared(Transform):
  type
    Transform* = Transform_520094231
else:
  static :
    hint("Declaration of " & "Transform" & " already exists, not redeclaring")
when not declared(struct_BoneInfo):
  type
    struct_BoneInfo* = struct_BoneInfo_520094233
else:
  static :
    hint("Declaration of " & "struct_BoneInfo" &
        " already exists, not redeclaring")
when not declared(SaveFileDataCallback):
  type
    SaveFileDataCallback* = SaveFileDataCallback_520094385
else:
  static :
    hint("Declaration of " & "SaveFileDataCallback" &
        " already exists, not redeclaring")
when not declared(rlFramebufferAttachTextureType):
  type
    rlFramebufferAttachTextureType* = rlFramebufferAttachTextureType_520094595
else:
  static :
    hint("Declaration of " & "rlFramebufferAttachTextureType" &
        " already exists, not redeclaring")
when not declared(wint_t):
  type
    wint_t* = wint_t_520094483
else:
  static :
    hint("Declaration of " & "wint_t" & " already exists, not redeclaring")
when not declared(MaterialMap):
  type
    MaterialMap* = MaterialMap_520094223
else:
  static :
    hint("Declaration of " & "MaterialMap" & " already exists, not redeclaring")
when not declared(compiler_uint64_t):
  type
    compiler_uint64_t* = compiler_uint64_t_520094415
else:
  static :
    hint("Declaration of " & "compiler_uint64_t" &
        " already exists, not redeclaring")
when not declared(struct_tm):
  type
    struct_tm* = struct_tm_520094523
else:
  static :
    hint("Declaration of " & "struct_tm" & " already exists, not redeclaring")
when not declared(compiler_sa_family_t):
  type
    compiler_sa_family_t* = compiler_sa_family_t_520094499
else:
  static :
    hint("Declaration of " & "compiler_sa_family_t" &
        " already exists, not redeclaring")
when not declared(struct_Sound):
  type
    struct_Sound* = struct_Sound_520094269
else:
  static :
    hint("Declaration of " & "struct_Sound" & " already exists, not redeclaring")
when not declared(struct_Font):
  type
    struct_Font* = struct_Font_520094199
else:
  static :
    hint("Declaration of " & "struct_Font" & " already exists, not redeclaring")
when not declared(compiler_uint_least16_t):
  type
    compiler_uint_least16_t* = compiler_uint_least16_t_520094423
else:
  static :
    hint("Declaration of " & "compiler_uint_least16_t" &
        " already exists, not redeclaring")
when not declared(GamepadAxis):
  type
    GamepadAxis* = GamepadAxis_520094323
else:
  static :
    hint("Declaration of " & "GamepadAxis" & " already exists, not redeclaring")
when not declared(compiler_ULong):
  type
    compiler_ULong* = compiler_ULong_520094513
else:
  static :
    hint("Declaration of " & "compiler_ULong" &
        " already exists, not redeclaring")
when not declared(struct_Shader):
  type
    struct_Shader* = struct_Shader_520094217
else:
  static :
    hint("Declaration of " & "struct_Shader" &
        " already exists, not redeclaring")
when not declared(compiler_suseconds_t):
  type
    compiler_suseconds_t* = compiler_suseconds_t_520094507
else:
  static :
    hint("Declaration of " & "compiler_suseconds_t" &
        " already exists, not redeclaring")
when not declared(rlFramebufferAttachType):
  type
    rlFramebufferAttachType* = rlFramebufferAttachType_520094591
else:
  static :
    hint("Declaration of " & "rlFramebufferAttachType" &
        " already exists, not redeclaring")
when not declared(struct_NPatchInfo):
  type
    struct_NPatchInfo* = struct_NPatchInfo_520094184
else:
  static :
    hint("Declaration of " & "struct_NPatchInfo" &
        " already exists, not redeclaring")
when not declared(compiler_clock_t):
  type
    compiler_clock_t* = compiler_clock_t_520094489
else:
  static :
    hint("Declaration of " & "compiler_clock_t" &
        " already exists, not redeclaring")
when not declared(PixelFormat):
  type
    PixelFormat* = PixelFormat_520094343
else:
  static :
    hint("Declaration of " & "PixelFormat" & " already exists, not redeclaring")
when not declared(internal_mbstate_t):
  type
    internal_mbstate_t* = internal_mbstate_t_520094485
else:
  static :
    hint("Declaration of " & "internal_mbstate_t" &
        " already exists, not redeclaring")
when not declared(compiler_ino_t):
  type
    compiler_ino_t* = compiler_ino_t_520094461
else:
  static :
    hint("Declaration of " & "compiler_ino_t" &
        " already exists, not redeclaring")
when not declared(float3):
  type
    float3* = float3_520094395
else:
  static :
    hint("Declaration of " & "float3" & " already exists, not redeclaring")
when not declared(AutomationEvent):
  type
    AutomationEvent* = AutomationEvent_520094291
else:
  static :
    hint("Declaration of " & "AutomationEvent" &
        " already exists, not redeclaring")
when not declared(Sound):
  type
    Sound* = Sound_520094271
else:
  static :
    hint("Declaration of " & "Sound" & " already exists, not redeclaring")
when not declared(rlBlendMode):
  type
    rlBlendMode* = rlBlendMode_520094575
else:
  static :
    hint("Declaration of " & "rlBlendMode" & " already exists, not redeclaring")
when not declared(double_t):
  type
    double_t* = double_t_520094543
else:
  static :
    hint("Declaration of " & "double_t" & " already exists, not redeclaring")
when not declared(struct_Texture):
  type
    struct_Texture* = struct_Texture_520094170
else:
  static :
    hint("Declaration of " & "struct_Texture" &
        " already exists, not redeclaring")
when not declared(Font):
  type
    Font* = Font_520094201
else:
  static :
    hint("Declaration of " & "Font" & " already exists, not redeclaring")
when not declared(float_t):
  type
    float_t* = float_t_520094541
else:
  static :
    hint("Declaration of " & "float_t" & " already exists, not redeclaring")
when not declared(compiler_int64_t):
  type
    compiler_int64_t* = compiler_int64_t_520094413
else:
  static :
    hint("Declaration of " & "compiler_int64_t" &
        " already exists, not redeclaring")
when not declared(compiler_int_least64_t):
  type
    compiler_int_least64_t* = compiler_int_least64_t_520094429
else:
  static :
    hint("Declaration of " & "compiler_int_least64_t" &
        " already exists, not redeclaring")
when not declared(Camera2D):
  type
    Camera2D* = Camera2D_520094211
else:
  static :
    hint("Declaration of " & "Camera2D" & " already exists, not redeclaring")
when not declared(struct_rlRenderBatch):
  type
    struct_rlRenderBatch* = struct_rlRenderBatch_520094553
else:
  static :
    hint("Declaration of " & "struct_rlRenderBatch" &
        " already exists, not redeclaring")
when not declared(enum_rlTextureFilter):
  type
    enum_rlTextureFilter* = enum_rlTextureFilter_520094569
else:
  static :
    hint("Declaration of " & "enum_rlTextureFilter" &
        " already exists, not redeclaring")
when not declared(compiler_socklen_t):
  type
    compiler_socklen_t* = compiler_socklen_t_520094501
else:
  static :
    hint("Declaration of " & "compiler_socklen_t" &
        " already exists, not redeclaring")
when not declared(struct_Mesh):
  type
    struct_Mesh* = struct_Mesh_520094213
else:
  static :
    hint("Declaration of " & "struct_Mesh" & " already exists, not redeclaring")
when not declared(Gesture):
  type
    Gesture* = Gesture_520094367
else:
  static :
    hint("Declaration of " & "Gesture" & " already exists, not redeclaring")
when not declared(struct_AutomationEvent):
  type
    struct_AutomationEvent* = struct_AutomationEvent_520094289
else:
  static :
    hint("Declaration of " & "struct_AutomationEvent" &
        " already exists, not redeclaring")
when not declared(enum_GamepadButton):
  type
    enum_GamepadButton* = enum_GamepadButton_520094317
else:
  static :
    hint("Declaration of " & "enum_GamepadButton" &
        " already exists, not redeclaring")
when not declared(compiler_size_t):
  type
    compiler_size_t* = compiler_size_t_520094475
else:
  static :
    hint("Declaration of " & "compiler_size_t" &
        " already exists, not redeclaring")
when not declared(enum_KeyboardKey):
  type
    enum_KeyboardKey* = enum_KeyboardKey_520094305
else:
  static :
    hint("Declaration of " & "enum_KeyboardKey" &
        " already exists, not redeclaring")
when not declared(struct_BoundingBox):
  type
    struct_BoundingBox* = struct_BoundingBox_520094253
else:
  static :
    hint("Declaration of " & "struct_BoundingBox" &
        " already exists, not redeclaring")
when not declared(struct_sbuf):
  type
    struct_sbuf* = struct_sbuf_520094529
else:
  static :
    hint("Declaration of " & "struct_sbuf" & " already exists, not redeclaring")
when not declared(struct_Music):
  type
    struct_Music* = struct_Music_520094273
else:
  static :
    hint("Declaration of " & "struct_Music" & " already exists, not redeclaring")
when not declared(compiler_loff_t):
  type
    compiler_loff_t* = compiler_loff_t_520094469
else:
  static :
    hint("Declaration of " & "compiler_loff_t" &
        " already exists, not redeclaring")
when not declared(ModelAnimation):
  type
    ModelAnimation* = ModelAnimation_520094243
else:
  static :
    hint("Declaration of " & "ModelAnimation" &
        " already exists, not redeclaring")
when not declared(Quaternion):
  type
    Quaternion* = Quaternion_520094152
else:
  static :
    hint("Declaration of " & "Quaternion" & " already exists, not redeclaring")
when not declared(Texture2D):
  type
    Texture2D* = Texture2D_520094174
else:
  static :
    hint("Declaration of " & "Texture2D" & " already exists, not redeclaring")
when not declared(compiler_uint16_t):
  type
    compiler_uint16_t* = compiler_uint16_t_520094407
else:
  static :
    hint("Declaration of " & "compiler_uint16_t" &
        " already exists, not redeclaring")
when not declared(Wave):
  type
    Wave* = Wave_520094259
else:
  static :
    hint("Declaration of " & "Wave" & " already exists, not redeclaring")
when not declared(compiler_daddr_t):
  type
    compiler_daddr_t* = compiler_daddr_t_520094495
else:
  static :
    hint("Declaration of " & "compiler_daddr_t" &
        " already exists, not redeclaring")
when not declared(struct_Wave):
  type
    struct_Wave* = struct_Wave_520094257
else:
  static :
    hint("Declaration of " & "struct_Wave" & " already exists, not redeclaring")
when not declared(rAudioBuffer):
  type
    rAudioBuffer* = rAudioBuffer_520094261
else:
  static :
    hint("Declaration of " & "rAudioBuffer" & " already exists, not redeclaring")
when not declared(ShaderLocationIndex):
  type
    ShaderLocationIndex* = ShaderLocationIndex_520094331
else:
  static :
    hint("Declaration of " & "ShaderLocationIndex" &
        " already exists, not redeclaring")
when not declared(SaveFileTextCallback):
  type
    SaveFileTextCallback* = SaveFileTextCallback_520094389
else:
  static :
    hint("Declaration of " & "SaveFileTextCallback" &
        " already exists, not redeclaring")
when not declared(AudioCallback):
  type
    AudioCallback* = AudioCallback_520094391
else:
  static :
    hint("Declaration of " & "AudioCallback" &
        " already exists, not redeclaring")
when not declared(compiler_int32_t):
  type
    compiler_int32_t* = compiler_int32_t_520094409
else:
  static :
    hint("Declaration of " & "compiler_int32_t" &
        " already exists, not redeclaring")
when not declared(Mesh):
  type
    Mesh* = Mesh_520094215
else:
  static :
    hint("Declaration of " & "Mesh" & " already exists, not redeclaring")
when not declared(enum_NPatchLayout):
  type
    enum_NPatchLayout* = enum_NPatchLayout_520094377
else:
  static :
    hint("Declaration of " & "enum_NPatchLayout" &
        " already exists, not redeclaring")
when not declared(struct_glue):
  type
    struct_glue* = struct_glue_520094537
else:
  static :
    hint("Declaration of " & "struct_glue" & " already exists, not redeclaring")
when not declared(struct_rlDrawCall):
  type
    struct_rlDrawCall* = struct_rlDrawCall_520094549
else:
  static :
    hint("Declaration of " & "struct_rlDrawCall" &
        " already exists, not redeclaring")
when not declared(TextureWrap):
  type
    TextureWrap* = TextureWrap_520094351
else:
  static :
    hint("Declaration of " & "TextureWrap" & " already exists, not redeclaring")
when not declared(compiler_uint_least64_t):
  type
    compiler_uint_least64_t* = compiler_uint_least64_t_520094431
else:
  static :
    hint("Declaration of " & "compiler_uint_least64_t" &
        " already exists, not redeclaring")
when not declared(enum_MouseCursor):
  type
    enum_MouseCursor* = enum_MouseCursor_520094313
else:
  static :
    hint("Declaration of " & "enum_MouseCursor" &
        " already exists, not redeclaring")
when not declared(enum_TextureWrap):
  type
    enum_TextureWrap* = enum_TextureWrap_520094349
else:
  static :
    hint("Declaration of " & "enum_TextureWrap" &
        " already exists, not redeclaring")
when not declared(enum_rlFramebufferAttachTextureType):
  type
    enum_rlFramebufferAttachTextureType* = enum_rlFramebufferAttachTextureType_520094593
else:
  static :
    hint("Declaration of " & "enum_rlFramebufferAttachTextureType" &
        " already exists, not redeclaring")
when not declared(struct_on_exit_args):
  type
    struct_on_exit_args* = struct_on_exit_args_520094525
else:
  static :
    hint("Declaration of " & "struct_on_exit_args" &
        " already exists, not redeclaring")
when not declared(struct_Material):
  type
    struct_Material* = struct_Material_520094225
else:
  static :
    hint("Declaration of " & "struct_Material" &
        " already exists, not redeclaring")
when not declared(rlVertexBuffer):
  type
    rlVertexBuffer* = rlVertexBuffer_520094547
else:
  static :
    hint("Declaration of " & "rlVertexBuffer" &
        " already exists, not redeclaring")
when not declared(struct_Matrix):
  type
    struct_Matrix* = struct_Matrix_520094154
else:
  static :
    hint("Declaration of " & "struct_Matrix" &
        " already exists, not redeclaring")
when not declared(enum_TraceLogLevel):
  type
    enum_TraceLogLevel* = enum_TraceLogLevel_520094301
else:
  static :
    hint("Declaration of " & "enum_TraceLogLevel" &
        " already exists, not redeclaring")
when not declared(compiler_dev_t):
  type
    compiler_dev_t* = compiler_dev_t_520094453
else:
  static :
    hint("Declaration of " & "compiler_dev_t" &
        " already exists, not redeclaring")
when not declared(compiler_ssize_t):
  type
    compiler_ssize_t* = compiler_ssize_t_520094479
else:
  static :
    hint("Declaration of " & "compiler_ssize_t" &
        " already exists, not redeclaring")
when not declared(MouseButton):
  type
    MouseButton* = MouseButton_520094311
else:
  static :
    hint("Declaration of " & "MouseButton" & " already exists, not redeclaring")
when not declared(CubemapLayout):
  type
    CubemapLayout* = CubemapLayout_520094355
else:
  static :
    hint("Declaration of " & "CubemapLayout" &
        " already exists, not redeclaring")
when not declared(enum_FontType):
  type
    enum_FontType* = enum_FontType_520094357
else:
  static :
    hint("Declaration of " & "enum_FontType" &
        " already exists, not redeclaring")
when not declared(compiler_intmax_t):
  type
    compiler_intmax_t* = compiler_intmax_t_520094433
else:
  static :
    hint("Declaration of " & "compiler_intmax_t" &
        " already exists, not redeclaring")
when not declared(struct_VrDeviceInfo):
  type
    struct_VrDeviceInfo* = struct_VrDeviceInfo_520094277
else:
  static :
    hint("Declaration of " & "struct_VrDeviceInfo" &
        " already exists, not redeclaring")
when not declared(LoadFileDataCallback):
  type
    LoadFileDataCallback* = LoadFileDataCallback_520094383
else:
  static :
    hint("Declaration of " & "LoadFileDataCallback" &
        " already exists, not redeclaring")
when not declared(compiler_int8_t):
  type
    compiler_int8_t* = compiler_int8_t_520094401
else:
  static :
    hint("Declaration of " & "compiler_int8_t" &
        " already exists, not redeclaring")
when not declared(GlyphInfo):
  type
    GlyphInfo* = GlyphInfo_520094190
else:
  static :
    hint("Declaration of " & "GlyphInfo" & " already exists, not redeclaring")
when not declared(compiler_gid_t):
  type
    compiler_gid_t* = compiler_gid_t_520094457
else:
  static :
    hint("Declaration of " & "compiler_gid_t" &
        " already exists, not redeclaring")
when not declared(enum_MouseButton):
  type
    enum_MouseButton* = enum_MouseButton_520094309
else:
  static :
    hint("Declaration of " & "enum_MouseButton" &
        " already exists, not redeclaring")
when not declared(compiler_nl_item):
  type
    compiler_nl_item* = compiler_nl_item_520094503
else:
  static :
    hint("Declaration of " & "compiler_nl_item" &
        " already exists, not redeclaring")
when not declared(struct_Vector3):
  type
    struct_Vector3* = struct_Vector3_520094144
else:
  static :
    hint("Declaration of " & "struct_Vector3" &
        " already exists, not redeclaring")
when not declared(struct_Ray):
  type
    struct_Ray* = struct_Ray_520094245
else:
  static :
    hint("Declaration of " & "struct_Ray" & " already exists, not redeclaring")
when not declared(compiler_FILE):
  type
    compiler_FILE* = compiler_FILE_520094535
else:
  static :
    hint("Declaration of " & "compiler_FILE" &
        " already exists, not redeclaring")
when not declared(Color):
  type
    Color* = Color_520094160
else:
  static :
    hint("Declaration of " & "Color" & " already exists, not redeclaring")
when not declared(struct_AudioStream):
  type
    struct_AudioStream* = struct_AudioStream_520094265
else:
  static :
    hint("Declaration of " & "struct_AudioStream" &
        " already exists, not redeclaring")
when not declared(FilePathList):
  type
    FilePathList* = FilePathList_520094287
else:
  static :
    hint("Declaration of " & "FilePathList" & " already exists, not redeclaring")
when not declared(struct_AutomationEventList):
  type
    struct_AutomationEventList* = struct_AutomationEventList_520094293
else:
  static :
    hint("Declaration of " & "struct_AutomationEventList" &
        " already exists, not redeclaring")
when not declared(enum_rlBlendMode):
  type
    enum_rlBlendMode* = enum_rlBlendMode_520094573
else:
  static :
    hint("Declaration of " & "enum_rlBlendMode" &
        " already exists, not redeclaring")
when not declared(Music):
  type
    Music* = Music_520094275
else:
  static :
    hint("Declaration of " & "Music" & " already exists, not redeclaring")
when not declared(GamepadButton):
  type
    GamepadButton* = GamepadButton_520094319
else:
  static :
    hint("Declaration of " & "GamepadButton" &
        " already exists, not redeclaring")
when not declared(RenderTexture2D):
  type
    RenderTexture2D* = RenderTexture2D_520094182
else:
  static :
    hint("Declaration of " & "RenderTexture2D" &
        " already exists, not redeclaring")
when not declared(MaterialMapIndex):
  type
    MaterialMapIndex* = MaterialMapIndex_520094327
else:
  static :
    hint("Declaration of " & "MaterialMapIndex" &
        " already exists, not redeclaring")
when not declared(enum_CameraMode):
  type
    enum_CameraMode* = enum_CameraMode_520094369
else:
  static :
    hint("Declaration of " & "enum_CameraMode" &
        " already exists, not redeclaring")
when not declared(compiler_fsblkcnt_t):
  type
    compiler_fsblkcnt_t* = compiler_fsblkcnt_t_520094445
else:
  static :
    hint("Declaration of " & "compiler_fsblkcnt_t" &
        " already exists, not redeclaring")
when not declared(enum_rlShaderAttributeDataType):
  type
    enum_rlShaderAttributeDataType* = enum_rlShaderAttributeDataType_520094585
else:
  static :
    hint("Declaration of " & "enum_rlShaderAttributeDataType" &
        " already exists, not redeclaring")
when not declared(float16):
  type
    float16* = float16_520094399
else:
  static :
    hint("Declaration of " & "float16" & " already exists, not redeclaring")
when not declared(rlShaderUniformDataType):
  type
    rlShaderUniformDataType* = rlShaderUniformDataType_520094583
else:
  static :
    hint("Declaration of " & "rlShaderUniformDataType" &
        " already exists, not redeclaring")
when not declared(compiler_id_t):
  type
    compiler_id_t* = compiler_id_t_520094459
else:
  static :
    hint("Declaration of " & "compiler_id_t" &
        " already exists, not redeclaring")
when not declared(struct_mbstate_t):
  type
    struct_mbstate_t* = struct_mbstate_t_520094481
else:
  static :
    hint("Declaration of " & "struct_mbstate_t" &
        " already exists, not redeclaring")
when not declared(enum_rlCullMode):
  type
    enum_rlCullMode* = enum_rlCullMode_520094597
else:
  static :
    hint("Declaration of " & "enum_rlCullMode" &
        " already exists, not redeclaring")
when not declared(internal_iconv_t):
  type
    internal_iconv_t* = internal_iconv_t_520094487
else:
  static :
    hint("Declaration of " & "internal_iconv_t" &
        " already exists, not redeclaring")
when not declared(enum_ConfigFlags):
  type
    enum_ConfigFlags* = enum_ConfigFlags_520094297
else:
  static :
    hint("Declaration of " & "enum_ConfigFlags" &
        " already exists, not redeclaring")
when not declared(compiler_timer_t):
  type
    compiler_timer_t* = compiler_timer_t_520094497
else:
  static :
    hint("Declaration of " & "compiler_timer_t" &
        " already exists, not redeclaring")
when not declared(BlendMode):
  type
    BlendMode* = BlendMode_520094363
else:
  static :
    hint("Declaration of " & "BlendMode" & " already exists, not redeclaring")
when not declared(struct_GlyphInfo):
  type
    struct_GlyphInfo* = struct_GlyphInfo_520094188
else:
  static :
    hint("Declaration of " & "struct_GlyphInfo" &
        " already exists, not redeclaring")
when not declared(KeyboardKey):
  type
    KeyboardKey* = KeyboardKey_520094307
else:
  static :
    hint("Declaration of " & "KeyboardKey" & " already exists, not redeclaring")
when not declared(rlTextureFilter):
  type
    rlTextureFilter* = rlTextureFilter_520094571
else:
  static :
    hint("Declaration of " & "rlTextureFilter" &
        " already exists, not redeclaring")
when not declared(Image):
  type
    Image* = Image_520094168
else:
  static :
    hint("Declaration of " & "Image" & " already exists, not redeclaring")
when not declared(enum_rlShaderUniformDataType):
  type
    enum_rlShaderUniformDataType* = enum_rlShaderUniformDataType_520094581
else:
  static :
    hint("Declaration of " & "enum_rlShaderUniformDataType" &
        " already exists, not redeclaring")
when not declared(enum_TextureFilter):
  type
    enum_TextureFilter* = enum_TextureFilter_520094345
else:
  static :
    hint("Declaration of " & "enum_TextureFilter" &
        " already exists, not redeclaring")
when not declared(struct_Camera2D):
  type
    struct_Camera2D* = struct_Camera2D_520094209
else:
  static :
    hint("Declaration of " & "struct_Camera2D" &
        " already exists, not redeclaring")
when not declared(struct_FilePathList):
  type
    struct_FilePathList* = struct_FilePathList_520094285
else:
  static :
    hint("Declaration of " & "struct_FilePathList" &
        " already exists, not redeclaring")
when not declared(struct_ModelAnimation):
  type
    struct_ModelAnimation* = struct_ModelAnimation_520094241
else:
  static :
    hint("Declaration of " & "struct_ModelAnimation" &
        " already exists, not redeclaring")
when not declared(compiler_mode_t):
  type
    compiler_mode_t* = compiler_mode_t_520094463
else:
  static :
    hint("Declaration of " & "compiler_mode_t" &
        " already exists, not redeclaring")
when not declared(struct_Camera3D):
  type
    struct_Camera3D* = struct_Camera3D_520094203
else:
  static :
    hint("Declaration of " & "struct_Camera3D" &
        " already exists, not redeclaring")
when not declared(compiler_uid_t):
  type
    compiler_uid_t* = compiler_uid_t_520094455
else:
  static :
    hint("Declaration of " & "compiler_uid_t" &
        " already exists, not redeclaring")
when not declared(struct_rand48):
  type
    struct_rand48* = struct_rand48_520094539
else:
  static :
    hint("Declaration of " & "struct_rand48" &
        " already exists, not redeclaring")
when not declared(compiler_uint_least32_t):
  type
    compiler_uint_least32_t* = compiler_uint_least32_t_520094427
else:
  static :
    hint("Declaration of " & "compiler_uint_least32_t" &
        " already exists, not redeclaring")
when not declared(rlShaderAttributeDataType):
  type
    rlShaderAttributeDataType* = rlShaderAttributeDataType_520094587
else:
  static :
    hint("Declaration of " & "rlShaderAttributeDataType" &
        " already exists, not redeclaring")
when not declared(internal_off_t):
  type
    internal_off_t* = internal_off_t_520094449
else:
  static :
    hint("Declaration of " & "internal_off_t" &
        " already exists, not redeclaring")
when not declared(TraceLogLevel):
  type
    TraceLogLevel* = TraceLogLevel_520094303
else:
  static :
    hint("Declaration of " & "TraceLogLevel" &
        " already exists, not redeclaring")
when not declared(struct_float16):
  type
    struct_float16* = struct_float16_520094397
else:
  static :
    hint("Declaration of " & "struct_float16" &
        " already exists, not redeclaring")
when not declared(rlGlVersion):
  type
    rlGlVersion* = rlGlVersion_520094559
else:
  static :
    hint("Declaration of " & "rlGlVersion" & " already exists, not redeclaring")
when not declared(ShaderUniformDataType):
  type
    ShaderUniformDataType* = ShaderUniformDataType_520094335
else:
  static :
    hint("Declaration of " & "ShaderUniformDataType" &
        " already exists, not redeclaring")
when not declared(Vector3):
  type
    Vector3* = Vector3_520094146
else:
  static :
    hint("Declaration of " & "Vector3" & " already exists, not redeclaring")
when not declared(Vector4):
  type
    Vector4* = Vector4_520094150
else:
  static :
    hint("Declaration of " & "Vector4" & " already exists, not redeclaring")
when not declared(AudioStream):
  type
    AudioStream* = AudioStream_520094267
else:
  static :
    hint("Declaration of " & "AudioStream" & " already exists, not redeclaring")
when not declared(struct_VrStereoConfig):
  type
    struct_VrStereoConfig* = struct_VrStereoConfig_520094281
else:
  static :
    hint("Declaration of " & "struct_VrStereoConfig" &
        " already exists, not redeclaring")
when not declared(enum_rlPixelFormat):
  type
    enum_rlPixelFormat* = enum_rlPixelFormat_520094565
else:
  static :
    hint("Declaration of " & "enum_rlPixelFormat" &
        " already exists, not redeclaring")
when not declared(compiler_uintptr_t):
  type
    compiler_uintptr_t* = compiler_uintptr_t_520094439
else:
  static :
    hint("Declaration of " & "compiler_uintptr_t" &
        " already exists, not redeclaring")
when not declared(rlDrawCall):
  type
    rlDrawCall* = rlDrawCall_520094551
else:
  static :
    hint("Declaration of " & "rlDrawCall" & " already exists, not redeclaring")
when not declared(TextureCubemap):
  type
    TextureCubemap* = TextureCubemap_520094176
else:
  static :
    hint("Declaration of " & "TextureCubemap" &
        " already exists, not redeclaring")
when not declared(internal_flock_t):
  type
    internal_flock_t* = internal_flock_t_520094519
else:
  static :
    hint("Declaration of " & "internal_flock_t" &
        " already exists, not redeclaring")
when not declared(struct_Image):
  type
    struct_Image* = struct_Image_520094166
else:
  static :
    hint("Declaration of " & "struct_Image" & " already exists, not redeclaring")
when not declared(ShaderAttributeDataType):
  type
    ShaderAttributeDataType* = ShaderAttributeDataType_520094339
else:
  static :
    hint("Declaration of " & "ShaderAttributeDataType" &
        " already exists, not redeclaring")
when not declared(Model):
  type
    Model* = Model_520094239
else:
  static :
    hint("Declaration of " & "Model" & " already exists, not redeclaring")
when not declared(compiler_int16_t):
  type
    compiler_int16_t* = compiler_int16_t_520094405
else:
  static :
    hint("Declaration of " & "compiler_int16_t" &
        " already exists, not redeclaring")
when not declared(enum_CameraProjection):
  type
    enum_CameraProjection* = enum_CameraProjection_520094373
else:
  static :
    hint("Declaration of " & "enum_CameraProjection" &
        " already exists, not redeclaring")
when not declared(struct_Bigint):
  type
    struct_Bigint* = struct_Bigint_520094521
else:
  static :
    hint("Declaration of " & "struct_Bigint" &
        " already exists, not redeclaring")
when not declared(BoneInfo):
  type
    BoneInfo* = BoneInfo_520094235
else:
  static :
    hint("Declaration of " & "BoneInfo" & " already exists, not redeclaring")
when not declared(struct_RenderTexture):
  type
    struct_RenderTexture* = struct_RenderTexture_520094178
else:
  static :
    hint("Declaration of " & "struct_RenderTexture" &
        " already exists, not redeclaring")
when not declared(enum_Gesture):
  type
    enum_Gesture* = enum_Gesture_520094365
else:
  static :
    hint("Declaration of " & "enum_Gesture" & " already exists, not redeclaring")
when not declared(compiler_nlink_t):
  type
    compiler_nlink_t* = compiler_nlink_t_520094505
else:
  static :
    hint("Declaration of " & "compiler_nlink_t" &
        " already exists, not redeclaring")
when not declared(struct_MaterialMap):
  type
    struct_MaterialMap* = struct_MaterialMap_520094221
else:
  static :
    hint("Declaration of " & "struct_MaterialMap" &
        " already exists, not redeclaring")
when not declared(enum_ShaderUniformDataType):
  type
    enum_ShaderUniformDataType* = enum_ShaderUniformDataType_520094333
else:
  static :
    hint("Declaration of " & "enum_ShaderUniformDataType" &
        " already exists, not redeclaring")
when not declared(VrStereoConfig):
  type
    VrStereoConfig* = VrStereoConfig_520094283
else:
  static :
    hint("Declaration of " & "VrStereoConfig" &
        " already exists, not redeclaring")
when not declared(compiler_clockid_t):
  type
    compiler_clockid_t* = compiler_clockid_t_520094493
else:
  static :
    hint("Declaration of " & "compiler_clockid_t" &
        " already exists, not redeclaring")
when not declared(enum_BlendMode):
  type
    enum_BlendMode* = enum_BlendMode_520094361
else:
  static :
    hint("Declaration of " & "enum_BlendMode" &
        " already exists, not redeclaring")
when not declared(compiler_blkcnt_t):
  type
    compiler_blkcnt_t* = compiler_blkcnt_t_520094441
else:
  static :
    hint("Declaration of " & "compiler_blkcnt_t" &
        " already exists, not redeclaring")
when not declared(struct_Vector4):
  type
    struct_Vector4* = struct_Vector4_520094148
else:
  static :
    hint("Declaration of " & "struct_Vector4" &
        " already exists, not redeclaring")
when not declared(CameraMode):
  type
    CameraMode* = CameraMode_520094371
else:
  static :
    hint("Declaration of " & "CameraMode" & " already exists, not redeclaring")
when not declared(NPatchLayout):
  type
    NPatchLayout* = NPatchLayout_520094379
else:
  static :
    hint("Declaration of " & "NPatchLayout" & " already exists, not redeclaring")
when not declared(enum_rlShaderLocationIndex):
  type
    enum_rlShaderLocationIndex* = enum_rlShaderLocationIndex_520094577
else:
  static :
    hint("Declaration of " & "enum_rlShaderLocationIndex" &
        " already exists, not redeclaring")
when not declared(Shader):
  type
    Shader* = Shader_520094219
else:
  static :
    hint("Declaration of " & "Shader" & " already exists, not redeclaring")
when not declared(compiler_blksize_t):
  type
    compiler_blksize_t* = compiler_blksize_t_520094443
else:
  static :
    hint("Declaration of " & "compiler_blksize_t" &
        " already exists, not redeclaring")
when not declared(Material):
  type
    Material* = Material_520094227
else:
  static :
    hint("Declaration of " & "Material" & " already exists, not redeclaring")
when not declared(compiler_intptr_t):
  type
    compiler_intptr_t* = compiler_intptr_t_520094437
else:
  static :
    hint("Declaration of " & "compiler_intptr_t" &
        " already exists, not redeclaring")
when not declared(struct_Model):
  type
    struct_Model* = struct_Model_520094237
else:
  static :
    hint("Declaration of " & "struct_Model" & " already exists, not redeclaring")
when not declared(enum_PixelFormat):
  type
    enum_PixelFormat* = enum_PixelFormat_520094341
else:
  static :
    hint("Declaration of " & "enum_PixelFormat" &
        " already exists, not redeclaring")
when not declared(rlPixelFormat):
  type
    rlPixelFormat* = rlPixelFormat_520094567
else:
  static :
    hint("Declaration of " & "rlPixelFormat" &
        " already exists, not redeclaring")
when not declared(Vector2):
  type
    Vector2* = Vector2_520094142
else:
  static :
    hint("Declaration of " & "Vector2" & " already exists, not redeclaring")
when not declared(compiler_off_t):
  type
    compiler_off_t* = compiler_off_t_520094467
else:
  static :
    hint("Declaration of " & "compiler_off_t" &
        " already exists, not redeclaring")
when not declared(enum_GamepadAxis):
  type
    enum_GamepadAxis* = enum_GamepadAxis_520094321
else:
  static :
    hint("Declaration of " & "enum_GamepadAxis" &
        " already exists, not redeclaring")
when not declared(CameraProjection):
  type
    CameraProjection* = CameraProjection_520094375
else:
  static :
    hint("Declaration of " & "CameraProjection" &
        " already exists, not redeclaring")
when not declared(struct_rlVertexBuffer):
  type
    struct_rlVertexBuffer* = struct_rlVertexBuffer_520094545
else:
  static :
    hint("Declaration of " & "struct_rlVertexBuffer" &
        " already exists, not redeclaring")
when not declared(rlTraceLogLevel):
  type
    rlTraceLogLevel* = rlTraceLogLevel_520094563
else:
  static :
    hint("Declaration of " & "rlTraceLogLevel" &
        " already exists, not redeclaring")
when not declared(compiler_int_least32_t):
  type
    compiler_int_least32_t* = compiler_int_least32_t_520094425
else:
  static :
    hint("Declaration of " & "compiler_int_least32_t" &
        " already exists, not redeclaring")
when not declared(internal_fpos_t):
  type
    internal_fpos_t* = internal_fpos_t_520094473
else:
  static :
    hint("Declaration of " & "internal_fpos_t" &
        " already exists, not redeclaring")
when not declared(internal_LOCK_T):
  type
    internal_LOCK_T* = internal_LOCK_T_520094515
else:
  static :
    hint("Declaration of " & "internal_LOCK_T" &
        " already exists, not redeclaring")
when not declared(struct_reent):
  type
    struct_reent* = struct_reent_520094533
else:
  static :
    hint("Declaration of " & "struct_reent" & " already exists, not redeclaring")
when not declared(enum_ShaderAttributeDataType):
  type
    enum_ShaderAttributeDataType* = enum_ShaderAttributeDataType_520094337
else:
  static :
    hint("Declaration of " & "enum_ShaderAttributeDataType" &
        " already exists, not redeclaring")
when not declared(struct_float3):
  type
    struct_float3* = struct_float3_520094393
else:
  static :
    hint("Declaration of " & "struct_float3" &
        " already exists, not redeclaring")
when not declared(struct_atexit):
  type
    struct_atexit* = struct_atexit_520094527
else:
  static :
    hint("Declaration of " & "struct_atexit" &
        " already exists, not redeclaring")
when not declared(struct_RayCollision):
  type
    struct_RayCollision* = struct_RayCollision_520094249
else:
  static :
    hint("Declaration of " & "struct_RayCollision" &
        " already exists, not redeclaring")
when not declared(compiler_fsfilcnt_t):
  type
    compiler_fsfilcnt_t* = compiler_fsfilcnt_t_520094447
else:
  static :
    hint("Declaration of " & "compiler_fsfilcnt_t" &
        " already exists, not redeclaring")
when not declared(rlRenderBatch):
  type
    rlRenderBatch* = rlRenderBatch_520094555
else:
  static :
    hint("Declaration of " & "rlRenderBatch" &
        " already exists, not redeclaring")
when not declared(compiler_useconds_t):
  type
    compiler_useconds_t* = compiler_useconds_t_520094509
else:
  static :
    hint("Declaration of " & "compiler_useconds_t" &
        " already exists, not redeclaring")
when not declared(enum_rlGlVersion):
  type
    enum_rlGlVersion* = enum_rlGlVersion_520094557
else:
  static :
    hint("Declaration of " & "enum_rlGlVersion" &
        " already exists, not redeclaring")
when not declared(rlCullMode):
  type
    rlCullMode* = rlCullMode_520094599
else:
  static :
    hint("Declaration of " & "rlCullMode" & " already exists, not redeclaring")
when not declared(enum_CubemapLayout):
  type
    enum_CubemapLayout* = enum_CubemapLayout_520094353
else:
  static :
    hint("Declaration of " & "enum_CubemapLayout" &
        " already exists, not redeclaring")
when not declared(compiler_uint8_t):
  type
    compiler_uint8_t* = compiler_uint8_t_520094403
else:
  static :
    hint("Declaration of " & "compiler_uint8_t" &
        " already exists, not redeclaring")
when not declared(compiler_int_least16_t):
  type
    compiler_int_least16_t* = compiler_int_least16_t_520094421
else:
  static :
    hint("Declaration of " & "compiler_int_least16_t" &
        " already exists, not redeclaring")
when not declared(TraceLogCallback):
  type
    TraceLogCallback* = TraceLogCallback_520094381
else:
  static :
    hint("Declaration of " & "TraceLogCallback" &
        " already exists, not redeclaring")
when not declared(internal_off64_t):
  type
    internal_off64_t* = internal_off64_t_520094465
else:
  static :
    hint("Declaration of " & "internal_off64_t" &
        " already exists, not redeclaring")
when not declared(VrDeviceInfo):
  type
    VrDeviceInfo* = VrDeviceInfo_520094279
else:
  static :
    hint("Declaration of " & "VrDeviceInfo" & " already exists, not redeclaring")
when not declared(enum_ShaderLocationIndex):
  type
    enum_ShaderLocationIndex* = enum_ShaderLocationIndex_520094329
else:
  static :
    hint("Declaration of " & "enum_ShaderLocationIndex" &
        " already exists, not redeclaring")
when not declared(rlShaderLocationIndex):
  type
    rlShaderLocationIndex* = rlShaderLocationIndex_520094579
else:
  static :
    hint("Declaration of " & "rlShaderLocationIndex" &
        " already exists, not redeclaring")
when not declared(AutomationEventList):
  type
    AutomationEventList* = AutomationEventList_520094295
else:
  static :
    hint("Declaration of " & "AutomationEventList" &
        " already exists, not redeclaring")
when not declared(struct_sFILE):
  type
    struct_sFILE* = struct_sFILE_520094531
else:
  static :
    hint("Declaration of " & "struct_sFILE" & " already exists, not redeclaring")
when not declared(BoundingBox):
  type
    BoundingBox* = BoundingBox_520094255
else:
  static :
    hint("Declaration of " & "BoundingBox" & " already exists, not redeclaring")
when not declared(enum_rlFramebufferAttachType):
  type
    enum_rlFramebufferAttachType* = enum_rlFramebufferAttachType_520094589
else:
  static :
    hint("Declaration of " & "enum_rlFramebufferAttachType" &
        " already exists, not redeclaring")
when not declared(compiler_uintmax_t):
  type
    compiler_uintmax_t* = compiler_uintmax_t_520094435
else:
  static :
    hint("Declaration of " & "compiler_uintmax_t" &
        " already exists, not redeclaring")
when not declared(RenderTexture):
  type
    RenderTexture* = RenderTexture_520094180
else:
  static :
    hint("Declaration of " & "RenderTexture" &
        " already exists, not redeclaring")
when not declared(compiler_int_least8_t):
  type
    compiler_int_least8_t* = compiler_int_least8_t_520094417
else:
  static :
    hint("Declaration of " & "compiler_int_least8_t" &
        " already exists, not redeclaring")
when not declared(struct_Vector2):
  type
    struct_Vector2* = struct_Vector2_520094140
else:
  static :
    hint("Declaration of " & "struct_Vector2" &
        " already exists, not redeclaring")
when not declared(internal_LOCK_RECURSIVE_T):
  type
    internal_LOCK_RECURSIVE_T* = internal_LOCK_RECURSIVE_T_520094517
else:
  static :
    hint("Declaration of " & "internal_LOCK_RECURSIVE_T" &
        " already exists, not redeclaring")
when not declared(enum_MaterialMapIndex):
  type
    enum_MaterialMapIndex* = enum_MaterialMapIndex_520094325
else:
  static :
    hint("Declaration of " & "enum_MaterialMapIndex" &
        " already exists, not redeclaring")
when not declared(enum_rlTraceLogLevel):
  type
    enum_rlTraceLogLevel* = enum_rlTraceLogLevel_520094561
else:
  static :
    hint("Declaration of " & "enum_rlTraceLogLevel" &
        " already exists, not redeclaring")
when not declared(struct_Rectangle):
  type
    struct_Rectangle* = struct_Rectangle_520094162
else:
  static :
    hint("Declaration of " & "struct_Rectangle" &
        " already exists, not redeclaring")
when not declared(LoadFileTextCallback):
  type
    LoadFileTextCallback* = LoadFileTextCallback_520094387
else:
  static :
    hint("Declaration of " & "LoadFileTextCallback" &
        " already exists, not redeclaring")
when not declared(Camera):
  type
    Camera* = Camera_520094207
else:
  static :
    hint("Declaration of " & "Camera" & " already exists, not redeclaring")
when not declared(Texture):
  type
    Texture* = Texture_520094172
else:
  static :
    hint("Declaration of " & "Texture" & " already exists, not redeclaring")
when not declared(Ray):
  type
    Ray* = Ray_520094247
else:
  static :
    hint("Declaration of " & "Ray" & " already exists, not redeclaring")
when not declared(ConfigFlags):
  type
    ConfigFlags* = ConfigFlags_520094299
else:
  static :
    hint("Declaration of " & "ConfigFlags" & " already exists, not redeclaring")
when not declared(compiler_uint32_t):
  type
    compiler_uint32_t* = compiler_uint32_t_520094411
else:
  static :
    hint("Declaration of " & "compiler_uint32_t" &
        " already exists, not redeclaring")
when not declared(MouseCursor):
  type
    MouseCursor* = MouseCursor_520094315
else:
  static :
    hint("Declaration of " & "MouseCursor" & " already exists, not redeclaring")
when not declared(compiler_va_list):
  type
    compiler_va_list* = compiler_va_list_520094511
else:
  static :
    hint("Declaration of " & "compiler_va_list" &
        " already exists, not redeclaring")
when not declared(compiler_key_t):
  type
    compiler_key_t* = compiler_key_t_520094471
else:
  static :
    hint("Declaration of " & "compiler_key_t" &
        " already exists, not redeclaring")
when not declared(Camera3D):
  type
    Camera3D* = Camera3D_520094205
else:
  static :
    hint("Declaration of " & "Camera3D" & " already exists, not redeclaring")
when not declared(compiler_pid_t):
  type
    compiler_pid_t* = compiler_pid_t_520094451
else:
  static :
    hint("Declaration of " & "compiler_pid_t" &
        " already exists, not redeclaring")
when not declared(compiler_time_t):
  type
    compiler_time_t* = compiler_time_t_520094491
else:
  static :
    hint("Declaration of " & "compiler_time_t" &
        " already exists, not redeclaring")
when not declared(Matrix):
  type
    Matrix* = Matrix_520094156
else:
  static :
    hint("Declaration of " & "Matrix" & " already exists, not redeclaring")
when not declared(rAudioProcessor):
  type
    rAudioProcessor* = rAudioProcessor_520094263
else:
  static :
    hint("Declaration of " & "rAudioProcessor" &
        " already exists, not redeclaring")
when not declared(TextureFilter):
  type
    TextureFilter* = TextureFilter_520094347
else:
  static :
    hint("Declaration of " & "TextureFilter" &
        " already exists, not redeclaring")
when not declared(compiler_uint_least8_t):
  type
    compiler_uint_least8_t* = compiler_uint_least8_t_520094419
else:
  static :
    hint("Declaration of " & "compiler_uint_least8_t" &
        " already exists, not redeclaring")
when not declared(struct_Color):
  type
    struct_Color* = struct_Color_520094158
else:
  static :
    hint("Declaration of " & "struct_Color" & " already exists, not redeclaring")
when not declared(FontType):
  type
    FontType* = FontType_520094359
else:
  static :
    hint("Declaration of " & "FontType" & " already exists, not redeclaring")
when not declared(Rectangle):
  type
    Rectangle* = Rectangle_520094164
else:
  static :
    hint("Declaration of " & "Rectangle" & " already exists, not redeclaring")
when not declared(RAYLIB_VERSION_MAJOR):
  when 5 is static:
    const
      RAYLIB_VERSION_MAJOR* = 5 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:84:9
  else:
    let RAYLIB_VERSION_MAJOR* = 5 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:84:9
else:
  static :
    hint("Declaration of " & "RAYLIB_VERSION_MAJOR" &
        " already exists, not redeclaring")
when not declared(RAYLIB_VERSION_MINOR):
  when 1 is static:
    const
      RAYLIB_VERSION_MINOR* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:85:9
  else:
    let RAYLIB_VERSION_MINOR* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:85:9
else:
  static :
    hint("Declaration of " & "RAYLIB_VERSION_MINOR" &
        " already exists, not redeclaring")
when not declared(RAYLIB_VERSION_PATCH):
  when 0 is static:
    const
      RAYLIB_VERSION_PATCH* = 0 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:86:9
  else:
    let RAYLIB_VERSION_PATCH* = 0 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:86:9
else:
  static :
    hint("Declaration of " & "RAYLIB_VERSION_PATCH" &
        " already exists, not redeclaring")
when not declared(RAYLIB_VERSION):
  when "5.1-dev" is static:
    const
      RAYLIB_VERSION* = "5.1-dev" ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:87:9
  else:
    let RAYLIB_VERSION* = "5.1-dev" ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:87:9
else:
  static :
    hint("Declaration of " & "RAYLIB_VERSION" &
        " already exists, not redeclaring")
when not declared(PI):
  when 3.141592653589793 is static:
    const
      PI* = 3.141592653589793 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:115:13
  else:
    let PI* = 3.141592653589793 ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:115:13
else:
  static :
    hint("Declaration of " & "PI" & " already exists, not redeclaring")
when not declared(MOUSE_LEFT_BUTTON):
  when MOUSE_BUTTON_LEFT is typedesc:
    type
      MOUSE_LEFT_BUTTON* = MOUSE_BUTTON_LEFT ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:686:9
  else:
    when MOUSE_BUTTON_LEFT is static:
      const
        MOUSE_LEFT_BUTTON* = MOUSE_BUTTON_LEFT ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:686:9
    else:
      let MOUSE_LEFT_BUTTON* = MOUSE_BUTTON_LEFT ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:686:9
else:
  static :
    hint("Declaration of " & "MOUSE_LEFT_BUTTON" &
        " already exists, not redeclaring")
when not declared(MOUSE_RIGHT_BUTTON):
  when MOUSE_BUTTON_RIGHT is typedesc:
    type
      MOUSE_RIGHT_BUTTON* = MOUSE_BUTTON_RIGHT ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:687:9
  else:
    when MOUSE_BUTTON_RIGHT is static:
      const
        MOUSE_RIGHT_BUTTON* = MOUSE_BUTTON_RIGHT ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:687:9
    else:
      let MOUSE_RIGHT_BUTTON* = MOUSE_BUTTON_RIGHT ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:687:9
else:
  static :
    hint("Declaration of " & "MOUSE_RIGHT_BUTTON" &
        " already exists, not redeclaring")
when not declared(MOUSE_MIDDLE_BUTTON):
  when MOUSE_BUTTON_MIDDLE is typedesc:
    type
      MOUSE_MIDDLE_BUTTON* = MOUSE_BUTTON_MIDDLE ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:688:9
  else:
    when MOUSE_BUTTON_MIDDLE is static:
      const
        MOUSE_MIDDLE_BUTTON* = MOUSE_BUTTON_MIDDLE ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:688:9
    else:
      let MOUSE_MIDDLE_BUTTON* = MOUSE_BUTTON_MIDDLE ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:688:9
else:
  static :
    hint("Declaration of " & "MOUSE_MIDDLE_BUTTON" &
        " already exists, not redeclaring")
when not declared(MATERIAL_MAP_DIFFUSE):
  when MATERIAL_MAP_ALBEDO is typedesc:
    type
      MATERIAL_MAP_DIFFUSE* = MATERIAL_MAP_ALBEDO ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:763:9
  else:
    when MATERIAL_MAP_ALBEDO is static:
      const
        MATERIAL_MAP_DIFFUSE* = MATERIAL_MAP_ALBEDO ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:763:9
    else:
      let MATERIAL_MAP_DIFFUSE* = MATERIAL_MAP_ALBEDO ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:763:9
else:
  static :
    hint("Declaration of " & "MATERIAL_MAP_DIFFUSE" &
        " already exists, not redeclaring")
when not declared(MATERIAL_MAP_SPECULAR):
  when MATERIAL_MAP_METALNESS is typedesc:
    type
      MATERIAL_MAP_SPECULAR* = MATERIAL_MAP_METALNESS ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:764:9
  else:
    when MATERIAL_MAP_METALNESS is static:
      const
        MATERIAL_MAP_SPECULAR* = MATERIAL_MAP_METALNESS ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:764:9
    else:
      let MATERIAL_MAP_SPECULAR* = MATERIAL_MAP_METALNESS ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:764:9
else:
  static :
    hint("Declaration of " & "MATERIAL_MAP_SPECULAR" &
        " already exists, not redeclaring")
when not declared(SHADER_LOC_MAP_DIFFUSE):
  when SHADER_LOC_MAP_ALBEDO is typedesc:
    type
      SHADER_LOC_MAP_DIFFUSE* = SHADER_LOC_MAP_ALBEDO ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:796:9
  else:
    when SHADER_LOC_MAP_ALBEDO is static:
      const
        SHADER_LOC_MAP_DIFFUSE* = SHADER_LOC_MAP_ALBEDO ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:796:9
    else:
      let SHADER_LOC_MAP_DIFFUSE* = SHADER_LOC_MAP_ALBEDO ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:796:9
else:
  static :
    hint("Declaration of " & "SHADER_LOC_MAP_DIFFUSE" &
        " already exists, not redeclaring")
when not declared(SHADER_LOC_MAP_SPECULAR):
  when SHADER_LOC_MAP_METALNESS is typedesc:
    type
      SHADER_LOC_MAP_SPECULAR* = SHADER_LOC_MAP_METALNESS ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:797:9
  else:
    when SHADER_LOC_MAP_METALNESS is static:
      const
        SHADER_LOC_MAP_SPECULAR* = SHADER_LOC_MAP_METALNESS ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:797:9
    else:
      let SHADER_LOC_MAP_SPECULAR* = SHADER_LOC_MAP_METALNESS ## Generated based on /opt/libdragon/mips64-elf/include/raylib.h:797:9
else:
  static :
    hint("Declaration of " & "SHADER_LOC_MAP_SPECULAR" &
        " already exists, not redeclaring")
when not declared(RMAPI):
  when inline is typedesc:
    type
      RMAPI* = inline        ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:76:17
  else:
    when inline is static:
      const
        RMAPI* = inline      ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:76:17
    else:
      let RMAPI* = inline    ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:76:17
else:
  static :
    hint("Declaration of " & "RMAPI" & " already exists, not redeclaring")
when not declared(EPSILON):
  when 0.000001 is static:
    const
      EPSILON* = 0.000001    ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:88:13
  else:
    let EPSILON* = 0.000001  ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:88:13
else:
  static :
    hint("Declaration of " & "EPSILON" & " already exists, not redeclaring")
when not declared(compiler_NEWLIB_H_private):
  when 1 is static:
    const
      compiler_NEWLIB_H_private* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:7:9
  else:
    let compiler_NEWLIB_H_private* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:7:9
else:
  static :
    hint("Declaration of " & "compiler_NEWLIB_H_private" &
        " already exists, not redeclaring")
when not declared(internal_NEWLIB_VERSION_H_private):
  when 1 is static:
    const
      internal_NEWLIB_VERSION_H_private* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/_newlib_version.h:4:9
  else:
    let internal_NEWLIB_VERSION_H_private* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/_newlib_version.h:4:9
else:
  static :
    hint("Declaration of " & "internal_NEWLIB_VERSION_H_private" &
        " already exists, not redeclaring")
when not declared(internal_NEWLIB_VERSION):
  when "4.4.0" is static:
    const
      internal_NEWLIB_VERSION* = "4.4.0" ## Generated based on /opt/libdragon/mips64-elf/include/_newlib_version.h:6:9
  else:
    let internal_NEWLIB_VERSION* = "4.4.0" ## Generated based on /opt/libdragon/mips64-elf/include/_newlib_version.h:6:9
else:
  static :
    hint("Declaration of " & "internal_NEWLIB_VERSION" &
        " already exists, not redeclaring")
when not declared(compiler_NEWLIB_private):
  when 4 is static:
    const
      compiler_NEWLIB_private* = 4 ## Generated based on /opt/libdragon/mips64-elf/include/_newlib_version.h:7:9
  else:
    let compiler_NEWLIB_private* = 4 ## Generated based on /opt/libdragon/mips64-elf/include/_newlib_version.h:7:9
else:
  static :
    hint("Declaration of " & "compiler_NEWLIB_private" &
        " already exists, not redeclaring")
when not declared(compiler_NEWLIB_MINOR_private):
  when 4 is static:
    const
      compiler_NEWLIB_MINOR_private* = 4 ## Generated based on /opt/libdragon/mips64-elf/include/_newlib_version.h:8:9
  else:
    let compiler_NEWLIB_MINOR_private* = 4 ## Generated based on /opt/libdragon/mips64-elf/include/_newlib_version.h:8:9
else:
  static :
    hint("Declaration of " & "compiler_NEWLIB_MINOR_private" &
        " already exists, not redeclaring")
when not declared(compiler_NEWLIB_PATCHLEVEL_private):
  when 0 is static:
    const
      compiler_NEWLIB_PATCHLEVEL_private* = 0 ## Generated based on /opt/libdragon/mips64-elf/include/_newlib_version.h:9:9
  else:
    let compiler_NEWLIB_PATCHLEVEL_private* = 0 ## Generated based on /opt/libdragon/mips64-elf/include/_newlib_version.h:9:9
else:
  static :
    hint("Declaration of " & "compiler_NEWLIB_PATCHLEVEL_private" &
        " already exists, not redeclaring")
when not declared(internal_ATEXIT_DYNAMIC_ALLOC):
  when 1 is static:
    const
      internal_ATEXIT_DYNAMIC_ALLOC* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:27:9
  else:
    let internal_ATEXIT_DYNAMIC_ALLOC* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:27:9
else:
  static :
    hint("Declaration of " & "internal_ATEXIT_DYNAMIC_ALLOC" &
        " already exists, not redeclaring")
when not declared(internal_FSEEK_OPTIMIZATION):
  when 1 is static:
    const
      internal_FSEEK_OPTIMIZATION* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:33:9
  else:
    let internal_FSEEK_OPTIMIZATION* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:33:9
else:
  static :
    hint("Declaration of " & "internal_FSEEK_OPTIMIZATION" &
        " already exists, not redeclaring")
when not declared(internal_FVWRITE_IN_STREAMIO):
  when 1 is static:
    const
      internal_FVWRITE_IN_STREAMIO* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:36:9
  else:
    let internal_FVWRITE_IN_STREAMIO* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:36:9
else:
  static :
    hint("Declaration of " & "internal_FVWRITE_IN_STREAMIO" &
        " already exists, not redeclaring")
when not declared(internal_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL):
  when 1 is static:
    const
      internal_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:39:9
  else:
    let internal_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:39:9
else:
  static :
    hint("Declaration of " & "internal_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL" &
        " already exists, not redeclaring")
when not declared(internal_HAVE_INITFINI_ARRAY):
  when 1 is static:
    const
      internal_HAVE_INITFINI_ARRAY* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:43:9
  else:
    let internal_HAVE_INITFINI_ARRAY* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:43:9
else:
  static :
    hint("Declaration of " & "internal_HAVE_INITFINI_ARRAY" &
        " already exists, not redeclaring")
when not declared(internal_HAVE_LONG_DOUBLE):
  when 1 is static:
    const
      internal_HAVE_LONG_DOUBLE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:46:9
  else:
    let internal_HAVE_LONG_DOUBLE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:46:9
else:
  static :
    hint("Declaration of " & "internal_HAVE_LONG_DOUBLE" &
        " already exists, not redeclaring")
when not declared(internal_LDBL_EQ_DBL):
  when 1 is static:
    const
      internal_LDBL_EQ_DBL* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:355:9
  else:
    let internal_LDBL_EQ_DBL* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:355:9
else:
  static :
    hint("Declaration of " & "internal_LDBL_EQ_DBL" &
        " already exists, not redeclaring")
when not declared(internal_MB_LEN_MAX):
  when 1 is static:
    const
      internal_MB_LEN_MAX* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:364:9
  else:
    let internal_MB_LEN_MAX* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:364:9
else:
  static :
    hint("Declaration of " & "internal_MB_LEN_MAX" &
        " already exists, not redeclaring")
when not declared(internal_REENT_CHECK_VERIFY):
  when 1 is static:
    const
      internal_REENT_CHECK_VERIFY* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:375:9
  else:
    let internal_REENT_CHECK_VERIFY* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:375:9
else:
  static :
    hint("Declaration of " & "internal_REENT_CHECK_VERIFY" &
        " already exists, not redeclaring")
when not declared(internal_UNBUF_STREAM_OPT):
  when 1 is static:
    const
      internal_UNBUF_STREAM_OPT* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:381:9
  else:
    let internal_UNBUF_STREAM_OPT* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:381:9
else:
  static :
    hint("Declaration of " & "internal_UNBUF_STREAM_OPT" &
        " already exists, not redeclaring")
when not declared(internal_WANT_IO_LONG_LONG):
  when 1 is static:
    const
      internal_WANT_IO_LONG_LONG* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:393:9
  else:
    let internal_WANT_IO_LONG_LONG* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:393:9
else:
  static :
    hint("Declaration of " & "internal_WANT_IO_LONG_LONG" &
        " already exists, not redeclaring")
when not declared(internal_WANT_USE_GDTOA):
  when 1 is static:
    const
      internal_WANT_USE_GDTOA* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:413:9
  else:
    let internal_WANT_USE_GDTOA* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:413:9
else:
  static :
    hint("Declaration of " & "internal_WANT_USE_GDTOA" &
        " already exists, not redeclaring")
when not declared(internal_WIDE_ORIENT):
  when 1 is static:
    const
      internal_WIDE_ORIENT* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:419:9
  else:
    let internal_WIDE_ORIENT* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/newlib.h:419:9
else:
  static :
    hint("Declaration of " & "internal_WIDE_ORIENT" &
        " already exists, not redeclaring")
when not declared(compiler_OBSOLETE_MATH_DEFAULT):
  when 1 is static:
    const
      compiler_OBSOLETE_MATH_DEFAULT* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/ieeefp.h:519:9
  else:
    let compiler_OBSOLETE_MATH_DEFAULT* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/ieeefp.h:519:9
else:
  static :
    hint("Declaration of " & "compiler_OBSOLETE_MATH_DEFAULT" &
        " already exists, not redeclaring")
when not declared(compiler_OBSOLETE_MATH):
  when compiler_OBSOLETE_MATH_DEFAULT is typedesc:
    type
      compiler_OBSOLETE_MATH* = compiler_OBSOLETE_MATH_DEFAULT ## Generated based on /opt/libdragon/mips64-elf/include/machine/ieeefp.h:522:9
  else:
    when compiler_OBSOLETE_MATH_DEFAULT is static:
      const
        compiler_OBSOLETE_MATH* = compiler_OBSOLETE_MATH_DEFAULT ## Generated based on /opt/libdragon/mips64-elf/include/machine/ieeefp.h:522:9
    else:
      let compiler_OBSOLETE_MATH* = compiler_OBSOLETE_MATH_DEFAULT ## Generated based on /opt/libdragon/mips64-elf/include/machine/ieeefp.h:522:9
else:
  static :
    hint("Declaration of " & "compiler_OBSOLETE_MATH" &
        " already exists, not redeclaring")
when not declared(internal_DEFAULT_SOURCE):
  when 1 is static:
    const
      internal_DEFAULT_SOURCE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:137:9
  else:
    let internal_DEFAULT_SOURCE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:137:9
else:
  static :
    hint("Declaration of " & "internal_DEFAULT_SOURCE" &
        " already exists, not redeclaring")
when not declared(internal_POSIX_SOURCE):
  when 1 is static:
    const
      internal_POSIX_SOURCE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:142:9
  else:
    let internal_POSIX_SOURCE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:142:9
else:
  static :
    hint("Declaration of " & "internal_POSIX_SOURCE" &
        " already exists, not redeclaring")
when not declared(internal_POSIX_C_SOURCE):
  when cast[clong](200809'i64) is static:
    const
      internal_POSIX_C_SOURCE* = cast[clong](200809'i64) ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:144:9
  else:
    let internal_POSIX_C_SOURCE* = cast[clong](200809'i64) ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:144:9
else:
  static :
    hint("Declaration of " & "internal_POSIX_C_SOURCE" &
        " already exists, not redeclaring")
when not declared(internal_ATFILE_SOURCE):
  when 1 is static:
    const
      internal_ATFILE_SOURCE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:164:9
  else:
    let internal_ATFILE_SOURCE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:164:9
else:
  static :
    hint("Declaration of " & "internal_ATFILE_SOURCE" &
        " already exists, not redeclaring")
when not declared(compiler_ATFILE_VISIBLE):
  when 1 is static:
    const
      compiler_ATFILE_VISIBLE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:257:9
  else:
    let compiler_ATFILE_VISIBLE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:257:9
else:
  static :
    hint("Declaration of " & "compiler_ATFILE_VISIBLE" &
        " already exists, not redeclaring")
when not declared(compiler_BSD_VISIBLE):
  when 1 is static:
    const
      compiler_BSD_VISIBLE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:263:9
  else:
    let compiler_BSD_VISIBLE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:263:9
else:
  static :
    hint("Declaration of " & "compiler_BSD_VISIBLE" &
        " already exists, not redeclaring")
when not declared(compiler_GNU_VISIBLE):
  when 0 is static:
    const
      compiler_GNU_VISIBLE* = 0 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:271:9
  else:
    let compiler_GNU_VISIBLE* = 0 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:271:9
else:
  static :
    hint("Declaration of " & "compiler_GNU_VISIBLE" &
        " already exists, not redeclaring")
when not declared(compiler_ISO_C_VISIBLE):
  when 2011 is static:
    const
      compiler_ISO_C_VISIBLE* = 2011 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:279:9
  else:
    let compiler_ISO_C_VISIBLE* = 2011 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:279:9
else:
  static :
    hint("Declaration of " & "compiler_ISO_C_VISIBLE" &
        " already exists, not redeclaring")
when not declared(compiler_LARGEFILE_VISIBLE):
  when 0 is static:
    const
      compiler_LARGEFILE_VISIBLE* = 0 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:290:9
  else:
    let compiler_LARGEFILE_VISIBLE* = 0 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:290:9
else:
  static :
    hint("Declaration of " & "compiler_LARGEFILE_VISIBLE" &
        " already exists, not redeclaring")
when not declared(compiler_MISC_VISIBLE):
  when 1 is static:
    const
      compiler_MISC_VISIBLE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:294:9
  else:
    let compiler_MISC_VISIBLE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:294:9
else:
  static :
    hint("Declaration of " & "compiler_MISC_VISIBLE" &
        " already exists, not redeclaring")
when not declared(compiler_POSIX_VISIBLE):
  when 200809 is static:
    const
      compiler_POSIX_VISIBLE* = 200809 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:300:9
  else:
    let compiler_POSIX_VISIBLE* = 200809 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:300:9
else:
  static :
    hint("Declaration of " & "compiler_POSIX_VISIBLE" &
        " already exists, not redeclaring")
when not declared(compiler_SVID_VISIBLE):
  when 1 is static:
    const
      compiler_SVID_VISIBLE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:316:9
  else:
    let compiler_SVID_VISIBLE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:316:9
else:
  static :
    hint("Declaration of " & "compiler_SVID_VISIBLE" &
        " already exists, not redeclaring")
when not declared(compiler_XSI_VISIBLE):
  when 0 is static:
    const
      compiler_XSI_VISIBLE* = 0 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:332:9
  else:
    let compiler_XSI_VISIBLE* = 0 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:332:9
else:
  static :
    hint("Declaration of " & "compiler_XSI_VISIBLE" &
        " already exists, not redeclaring")
when not declared(compiler_SSP_FORTIFY_LEVEL):
  when 0 is static:
    const
      compiler_SSP_FORTIFY_LEVEL* = 0 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:344:11
  else:
    let compiler_SSP_FORTIFY_LEVEL* = 0 ## Generated based on /opt/libdragon/mips64-elf/include/sys/features.h:344:11
else:
  static :
    hint("Declaration of " & "compiler_SSP_FORTIFY_LEVEL" &
        " already exists, not redeclaring")
when not declared(internal_POINTER_INT):
  when long is typedesc:
    type
      internal_POINTER_INT* = long ## Generated based on /opt/libdragon/mips64-elf/include/sys/config.h:224:9
  else:
    when long is static:
      const
        internal_POINTER_INT* = long ## Generated based on /opt/libdragon/mips64-elf/include/sys/config.h:224:9
    else:
      let internal_POINTER_INT* = long ## Generated based on /opt/libdragon/mips64-elf/include/sys/config.h:224:9
else:
  static :
    hint("Declaration of " & "internal_POINTER_INT" &
        " already exists, not redeclaring")
when not declared(compiler_RAND_MAX):
  when 2147483647 is static:
    const
      compiler_RAND_MAX* = 2147483647 ## Generated based on /opt/libdragon/mips64-elf/include/sys/config.h:234:9
  else:
    let compiler_RAND_MAX* = 2147483647 ## Generated based on /opt/libdragon/mips64-elf/include/sys/config.h:234:9
else:
  static :
    hint("Declaration of " & "compiler_RAND_MAX" &
        " already exists, not redeclaring")
when not declared(compiler_have_longlong64):
  when 1 is static:
    const
      compiler_have_longlong64* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:26:9
  else:
    let compiler_have_longlong64* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:26:9
else:
  static :
    hint("Declaration of " & "compiler_have_longlong64" &
        " already exists, not redeclaring")
when not declared(compiler_have_long64):
  when 1 is static:
    const
      compiler_have_long64* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:31:9
  else:
    let compiler_have_long64* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:31:9
else:
  static :
    hint("Declaration of " & "compiler_have_long64" &
        " already exists, not redeclaring")
when not declared(compiler_int8_t_defined):
  when 1 is static:
    const
      compiler_int8_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:47:9
  else:
    let compiler_int8_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:47:9
else:
  static :
    hint("Declaration of " & "compiler_int8_t_defined" &
        " already exists, not redeclaring")
when not declared(compiler_int16_t_defined):
  when 1 is static:
    const
      compiler_int16_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:61:9
  else:
    let compiler_int16_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:61:9
else:
  static :
    hint("Declaration of " & "compiler_int16_t_defined" &
        " already exists, not redeclaring")
when not declared(compiler_int32_t_defined):
  when 1 is static:
    const
      compiler_int32_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:83:9
  else:
    let compiler_int32_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:83:9
else:
  static :
    hint("Declaration of " & "compiler_int32_t_defined" &
        " already exists, not redeclaring")
when not declared(compiler_int64_t_defined):
  when 1 is static:
    const
      compiler_int64_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:109:9
  else:
    let compiler_int64_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:109:9
else:
  static :
    hint("Declaration of " & "compiler_int64_t_defined" &
        " already exists, not redeclaring")
when not declared(compiler_int_least8_t_defined):
  when 1 is static:
    const
      compiler_int_least8_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:140:9
  else:
    let compiler_int_least8_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:140:9
else:
  static :
    hint("Declaration of " & "compiler_int_least8_t_defined" &
        " already exists, not redeclaring")
when not declared(compiler_int_least16_t_defined):
  when 1 is static:
    const
      compiler_int_least16_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:166:9
  else:
    let compiler_int_least16_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:166:9
else:
  static :
    hint("Declaration of " & "compiler_int_least16_t_defined" &
        " already exists, not redeclaring")
when not declared(compiler_int_least32_t_defined):
  when 1 is static:
    const
      compiler_int_least32_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:188:9
  else:
    let compiler_int_least32_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:188:9
else:
  static :
    hint("Declaration of " & "compiler_int_least32_t_defined" &
        " already exists, not redeclaring")
when not declared(compiler_int_least64_t_defined):
  when 1 is static:
    const
      compiler_int_least64_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:206:9
  else:
    let compiler_int_least64_t_defined* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:206:9
else:
  static :
    hint("Declaration of " & "compiler_int_least64_t_defined" &
        " already exists, not redeclaring")
when not declared(compiler_GNUCLIKE_ASM):
  when 3 is static:
    const
      compiler_GNUCLIKE_ASM* = 3 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:107:9
  else:
    let compiler_GNUCLIKE_ASM* = 3 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:107:9
else:
  static :
    hint("Declaration of " & "compiler_GNUCLIKE_ASM" &
        " already exists, not redeclaring")
when not declared(compiler_GNUCLIKE_TYPEOF):
  when 1 is static:
    const
      compiler_GNUCLIKE_TYPEOF* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:112:9
  else:
    let compiler_GNUCLIKE_TYPEOF* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:112:9
else:
  static :
    hint("Declaration of " & "compiler_GNUCLIKE_TYPEOF" &
        " already exists, not redeclaring")
when not declared(compiler_GNUCLIKE_SECTION):
  when 1 is static:
    const
      compiler_GNUCLIKE_SECTION* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:113:9
  else:
    let compiler_GNUCLIKE_SECTION* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:113:9
else:
  static :
    hint("Declaration of " & "compiler_GNUCLIKE_SECTION" &
        " already exists, not redeclaring")
when not declared(compiler_GNUCLIKE_CTOR_SECTION_HANDLING):
  when 1 is static:
    const
      compiler_GNUCLIKE_CTOR_SECTION_HANDLING* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:115:9
  else:
    let compiler_GNUCLIKE_CTOR_SECTION_HANDLING* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:115:9
else:
  static :
    hint("Declaration of " & "compiler_GNUCLIKE_CTOR_SECTION_HANDLING" &
        " already exists, not redeclaring")
when not declared(compiler_GNUCLIKE_BUILTIN_CONSTANT_P):
  when 1 is static:
    const
      compiler_GNUCLIKE_BUILTIN_CONSTANT_P* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:117:9
  else:
    let compiler_GNUCLIKE_BUILTIN_CONSTANT_P* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:117:9
else:
  static :
    hint("Declaration of " & "compiler_GNUCLIKE_BUILTIN_CONSTANT_P" &
        " already exists, not redeclaring")
when not declared(compiler_GNUCLIKE_BUILTIN_VARARGS):
  when 1 is static:
    const
      compiler_GNUCLIKE_BUILTIN_VARARGS* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:120:9
  else:
    let compiler_GNUCLIKE_BUILTIN_VARARGS* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:120:9
else:
  static :
    hint("Declaration of " & "compiler_GNUCLIKE_BUILTIN_VARARGS" &
        " already exists, not redeclaring")
when not declared(compiler_GNUCLIKE_BUILTIN_STDARG):
  when 1 is static:
    const
      compiler_GNUCLIKE_BUILTIN_STDARG* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:121:9
  else:
    let compiler_GNUCLIKE_BUILTIN_STDARG* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:121:9
else:
  static :
    hint("Declaration of " & "compiler_GNUCLIKE_BUILTIN_STDARG" &
        " already exists, not redeclaring")
when not declared(compiler_GNUCLIKE_BUILTIN_VAALIST):
  when 1 is static:
    const
      compiler_GNUCLIKE_BUILTIN_VAALIST* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:122:9
  else:
    let compiler_GNUCLIKE_BUILTIN_VAALIST* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:122:9
else:
  static :
    hint("Declaration of " & "compiler_GNUCLIKE_BUILTIN_VAALIST" &
        " already exists, not redeclaring")
when not declared(compiler_GNUC_VA_LIST_COMPATIBILITY):
  when 1 is static:
    const
      compiler_GNUC_VA_LIST_COMPATIBILITY* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:125:9
  else:
    let compiler_GNUC_VA_LIST_COMPATIBILITY* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:125:9
else:
  static :
    hint("Declaration of " & "compiler_GNUC_VA_LIST_COMPATIBILITY" &
        " already exists, not redeclaring")
when not declared(compiler_GNUCLIKE_BUILTIN_NEXT_ARG):
  when 1 is static:
    const
      compiler_GNUCLIKE_BUILTIN_NEXT_ARG* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:132:9
  else:
    let compiler_GNUCLIKE_BUILTIN_NEXT_ARG* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:132:9
else:
  static :
    hint("Declaration of " & "compiler_GNUCLIKE_BUILTIN_NEXT_ARG" &
        " already exists, not redeclaring")
when not declared(compiler_GNUCLIKE_BUILTIN_MEMCPY):
  when 1 is static:
    const
      compiler_GNUCLIKE_BUILTIN_MEMCPY* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:135:9
  else:
    let compiler_GNUCLIKE_BUILTIN_MEMCPY* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:135:9
else:
  static :
    hint("Declaration of " & "compiler_GNUCLIKE_BUILTIN_MEMCPY" &
        " already exists, not redeclaring")
when not declared(compiler_CC_SUPPORTS_INLINE):
  when 1 is static:
    const
      compiler_CC_SUPPORTS_INLINE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:138:9
  else:
    let compiler_CC_SUPPORTS_INLINE* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:138:9
else:
  static :
    hint("Declaration of " & "compiler_CC_SUPPORTS_INLINE" &
        " already exists, not redeclaring")
when not declared(compiler_CC_SUPPORTS_INLINE_const):
  when 1 is static:
    const
      compiler_CC_SUPPORTS_INLINE_const* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:139:9
  else:
    let compiler_CC_SUPPORTS_INLINE_const* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:139:9
else:
  static :
    hint("Declaration of " & "compiler_CC_SUPPORTS_INLINE_const" &
        " already exists, not redeclaring")
when not declared(compiler_CC_SUPPORTS_INLINE_private):
  when 1 is static:
    const
      compiler_CC_SUPPORTS_INLINE_private* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:140:9
  else:
    let compiler_CC_SUPPORTS_INLINE_private* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:140:9
else:
  static :
    hint("Declaration of " & "compiler_CC_SUPPORTS_INLINE_private" &
        " already exists, not redeclaring")
when not declared(compiler_CC_SUPPORTS_FUNC_private):
  when 1 is static:
    const
      compiler_CC_SUPPORTS_FUNC_private* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:142:9
  else:
    let compiler_CC_SUPPORTS_FUNC_private* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:142:9
else:
  static :
    hint("Declaration of " & "compiler_CC_SUPPORTS_FUNC_private" &
        " already exists, not redeclaring")
when not declared(compiler_CC_SUPPORTS_WARNING):
  when 1 is static:
    const
      compiler_CC_SUPPORTS_WARNING* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:143:9
  else:
    let compiler_CC_SUPPORTS_WARNING* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:143:9
else:
  static :
    hint("Declaration of " & "compiler_CC_SUPPORTS_WARNING" &
        " already exists, not redeclaring")
when not declared(compiler_CC_SUPPORTS_VARADIC_XXX):
  when 1 is static:
    const
      compiler_CC_SUPPORTS_VARADIC_XXX* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:145:9
  else:
    let compiler_CC_SUPPORTS_VARADIC_XXX* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:145:9
else:
  static :
    hint("Declaration of " & "compiler_CC_SUPPORTS_VARADIC_XXX" &
        " already exists, not redeclaring")
when not declared(compiler_CC_SUPPORTS_DYNAMIC_ARRAY_INIT):
  when 1 is static:
    const
      compiler_CC_SUPPORTS_DYNAMIC_ARRAY_INIT* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:147:9
  else:
    let compiler_CC_SUPPORTS_DYNAMIC_ARRAY_INIT* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:147:9
else:
  static :
    hint("Declaration of " & "compiler_CC_SUPPORTS_DYNAMIC_ARRAY_INIT" &
        " already exists, not redeclaring")
when not declared(compiler_signed):
  when signed is typedesc:
    type
      compiler_signed* = signed ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:171:9
  else:
    when signed is static:
      const
        compiler_signed* = signed ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:171:9
    else:
      let compiler_signed* = signed ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:171:9
else:
  static :
    hint("Declaration of " & "compiler_signed" &
        " already exists, not redeclaring")
when not declared(compiler_volatile):
  when volatile is typedesc:
    type
      compiler_volatile* = volatile ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:172:9
  else:
    when volatile is static:
      const
        compiler_volatile* = volatile ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:172:9
    else:
      let compiler_volatile* = volatile ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:172:9
else:
  static :
    hint("Declaration of " & "compiler_volatile" &
        " already exists, not redeclaring")
when not declared(compiler_restrict):
  when restrict is typedesc:
    type
      compiler_restrict* = restrict ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:421:9
  else:
    when restrict is static:
      const
        compiler_restrict* = restrict ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:421:9
    else:
      let compiler_restrict* = restrict ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:421:9
else:
  static :
    hint("Declaration of " & "compiler_restrict" &
        " already exists, not redeclaring")
when not declared(compiler_restrict_arr):
  when restrict is typedesc:
    type
      compiler_restrict_arr* = restrict ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:434:9
  else:
    when restrict is static:
      const
        compiler_restrict_arr* = restrict ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:434:9
    else:
      let compiler_restrict_arr* = restrict ## Generated based on /opt/libdragon/mips64-elf/include/sys/cdefs.h:434:9
else:
  static :
    hint("Declaration of " & "compiler_restrict_arr" &
        " already exists, not redeclaring")
when not declared(unsigned):
  when signed is typedesc:
    type
      unsigned* = signed     ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:146:9
  else:
    when signed is static:
      const
        unsigned* = signed   ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:146:9
    else:
      let unsigned* = signed ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:146:9
else:
  static :
    hint("Declaration of " & "unsigned" & " already exists, not redeclaring")
when not declared(internal_TIME_T_private):
  when long is typedesc:
    type
      internal_TIME_T_private* = long ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:185:9
  else:
    when long is static:
      const
        internal_TIME_T_private* = long ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:185:9
    else:
      let internal_TIME_T_private* = long ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:185:9
else:
  static :
    hint("Declaration of " & "internal_TIME_T_private" &
        " already exists, not redeclaring")
when not declared(internal_NULL):
  when 0 is static:
    const
      internal_NULL* = 0     ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:18:9
  else:
    let internal_NULL* = 0   ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:18:9
else:
  static :
    hint("Declaration of " & "internal_NULL" &
        " already exists, not redeclaring")
when not declared(internal_ATEXIT_SIZE):
  when 32 is static:
    const
      internal_ATEXIT_SIZE* = 32 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:78:9
  else:
    let internal_ATEXIT_SIZE* = 32 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:78:9
else:
  static :
    hint("Declaration of " & "internal_ATEXIT_SIZE" &
        " already exists, not redeclaring")
when not declared(internal_RAND48_SEED_0):
  when 13070 is static:
    const
      internal_RAND48_SEED_0* = 13070 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:299:16
  else:
    let internal_RAND48_SEED_0* = 13070 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:299:16
else:
  static :
    hint("Declaration of " & "internal_RAND48_SEED_0" &
        " already exists, not redeclaring")
when not declared(internal_RAND48_SEED_1):
  when 43981 is static:
    const
      internal_RAND48_SEED_1* = 43981 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:300:16
  else:
    let internal_RAND48_SEED_1* = 43981 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:300:16
else:
  static :
    hint("Declaration of " & "internal_RAND48_SEED_1" &
        " already exists, not redeclaring")
when not declared(internal_RAND48_SEED_2):
  when 4660 is static:
    const
      internal_RAND48_SEED_2* = 4660 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:301:16
  else:
    let internal_RAND48_SEED_2* = 4660 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:301:16
else:
  static :
    hint("Declaration of " & "internal_RAND48_SEED_2" &
        " already exists, not redeclaring")
when not declared(internal_RAND48_MULT_0):
  when 58989 is static:
    const
      internal_RAND48_MULT_0* = 58989 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:302:16
  else:
    let internal_RAND48_MULT_0* = 58989 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:302:16
else:
  static :
    hint("Declaration of " & "internal_RAND48_MULT_0" &
        " already exists, not redeclaring")
when not declared(internal_RAND48_MULT_1):
  when 57068 is static:
    const
      internal_RAND48_MULT_1* = 57068 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:303:16
  else:
    let internal_RAND48_MULT_1* = 57068 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:303:16
else:
  static :
    hint("Declaration of " & "internal_RAND48_MULT_1" &
        " already exists, not redeclaring")
when not declared(internal_RAND48_MULT_2):
  when 5 is static:
    const
      internal_RAND48_MULT_2* = 5 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:304:16
  else:
    let internal_RAND48_MULT_2* = 5 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:304:16
else:
  static :
    hint("Declaration of " & "internal_RAND48_MULT_2" &
        " already exists, not redeclaring")
when not declared(internal_RAND48_ADD):
  when 11 is static:
    const
      internal_RAND48_ADD* = 11 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:305:16
  else:
    let internal_RAND48_ADD* = 11 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:305:16
else:
  static :
    hint("Declaration of " & "internal_RAND48_ADD" &
        " already exists, not redeclaring")
when not declared(internal_REENT_EMERGENCY_SIZE):
  when 25 is static:
    const
      internal_REENT_EMERGENCY_SIZE* = 25 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:317:9
  else:
    let internal_REENT_EMERGENCY_SIZE* = 25 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:317:9
else:
  static :
    hint("Declaration of " & "internal_REENT_EMERGENCY_SIZE" &
        " already exists, not redeclaring")
when not declared(internal_REENT_ASCTIME_SIZE):
  when 26 is static:
    const
      internal_REENT_ASCTIME_SIZE* = 26 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:318:9
  else:
    let internal_REENT_ASCTIME_SIZE* = 26 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:318:9
else:
  static :
    hint("Declaration of " & "internal_REENT_ASCTIME_SIZE" &
        " already exists, not redeclaring")
when not declared(internal_REENT_SIGNAL_SIZE):
  when 24 is static:
    const
      internal_REENT_SIGNAL_SIZE* = 24 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:319:9
  else:
    let internal_REENT_SIGNAL_SIZE* = 24 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:319:9
else:
  static :
    hint("Declaration of " & "internal_REENT_SIGNAL_SIZE" &
        " already exists, not redeclaring")
when not declared(internal_impure_ptr):
  var internal_impure_ptr* {.importc: "_impure_ptr".}: ptr struct_reent_520094534
else:
  static :
    hint("Declaration of " & "internal_impure_ptr" &
        " already exists, not redeclaring")
when not declared(internal_M_LN2):
  when 0.6931471805599453 is static:
    const
      internal_M_LN2* = 0.6931471805599453 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:13:9
  else:
    let internal_M_LN2* = 0.6931471805599453 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:13:9
else:
  static :
    hint("Declaration of " & "internal_M_LN2" &
        " already exists, not redeclaring")
when not declared(FP_NAN):
  when 0 is static:
    const
      FP_NAN* = 0            ## Generated based on /opt/libdragon/mips64-elf/include/math.h:190:9
  else:
    let FP_NAN* = 0          ## Generated based on /opt/libdragon/mips64-elf/include/math.h:190:9
else:
  static :
    hint("Declaration of " & "FP_NAN" & " already exists, not redeclaring")
when not declared(FP_INFINITE):
  when 1 is static:
    const
      FP_INFINITE* = 1       ## Generated based on /opt/libdragon/mips64-elf/include/math.h:191:9
  else:
    let FP_INFINITE* = 1     ## Generated based on /opt/libdragon/mips64-elf/include/math.h:191:9
else:
  static :
    hint("Declaration of " & "FP_INFINITE" & " already exists, not redeclaring")
when not declared(FP_ZERO):
  when 2 is static:
    const
      FP_ZERO* = 2           ## Generated based on /opt/libdragon/mips64-elf/include/math.h:192:9
  else:
    let FP_ZERO* = 2         ## Generated based on /opt/libdragon/mips64-elf/include/math.h:192:9
else:
  static :
    hint("Declaration of " & "FP_ZERO" & " already exists, not redeclaring")
when not declared(FP_SUBNORMAL):
  when 3 is static:
    const
      FP_SUBNORMAL* = 3      ## Generated based on /opt/libdragon/mips64-elf/include/math.h:193:9
  else:
    let FP_SUBNORMAL* = 3    ## Generated based on /opt/libdragon/mips64-elf/include/math.h:193:9
else:
  static :
    hint("Declaration of " & "FP_SUBNORMAL" & " already exists, not redeclaring")
when not declared(FP_NORMAL):
  when 4 is static:
    const
      FP_NORMAL* = 4         ## Generated based on /opt/libdragon/mips64-elf/include/math.h:194:9
  else:
    let FP_NORMAL* = 4       ## Generated based on /opt/libdragon/mips64-elf/include/math.h:194:9
else:
  static :
    hint("Declaration of " & "FP_NORMAL" & " already exists, not redeclaring")
when not declared(MATH_ERRNO):
  when 1 is static:
    const
      MATH_ERRNO* = 1        ## Generated based on /opt/libdragon/mips64-elf/include/math.h:204:10
  else:
    let MATH_ERRNO* = 1      ## Generated based on /opt/libdragon/mips64-elf/include/math.h:204:10
else:
  static :
    hint("Declaration of " & "MATH_ERRNO" & " already exists, not redeclaring")
when not declared(MATH_ERREXCEPT):
  when 2 is static:
    const
      MATH_ERREXCEPT* = 2    ## Generated based on /opt/libdragon/mips64-elf/include/math.h:207:10
  else:
    let MATH_ERREXCEPT* = 2  ## Generated based on /opt/libdragon/mips64-elf/include/math.h:207:10
else:
  static :
    hint("Declaration of " & "MATH_ERREXCEPT" &
        " already exists, not redeclaring")
when not declared(internal_MATH_ERRHANDLING_ERRNO):
  when MATH_ERRNO is typedesc:
    type
      internal_MATH_ERRHANDLING_ERRNO* = MATH_ERRNO ## Generated based on /opt/libdragon/mips64-elf/include/math.h:213:11
  else:
    when MATH_ERRNO is static:
      const
        internal_MATH_ERRHANDLING_ERRNO* = MATH_ERRNO ## Generated based on /opt/libdragon/mips64-elf/include/math.h:213:11
    else:
      let internal_MATH_ERRHANDLING_ERRNO* = MATH_ERRNO ## Generated based on /opt/libdragon/mips64-elf/include/math.h:213:11
else:
  static :
    hint("Declaration of " & "internal_MATH_ERRHANDLING_ERRNO" &
        " already exists, not redeclaring")
when not declared(internal_MATH_ERRHANDLING_ERREXCEPT):
  when MATH_ERREXCEPT is typedesc:
    type
      internal_MATH_ERRHANDLING_ERREXCEPT* = MATH_ERREXCEPT ## Generated based on /opt/libdragon/mips64-elf/include/math.h:216:11
  else:
    when MATH_ERREXCEPT is static:
      const
        internal_MATH_ERRHANDLING_ERREXCEPT* = MATH_ERREXCEPT ## Generated based on /opt/libdragon/mips64-elf/include/math.h:216:11
    else:
      let internal_MATH_ERRHANDLING_ERREXCEPT* = MATH_ERREXCEPT ## Generated based on /opt/libdragon/mips64-elf/include/math.h:216:11
else:
  static :
    hint("Declaration of " & "internal_MATH_ERRHANDLING_ERREXCEPT" &
        " already exists, not redeclaring")
when not declared(MAXFLOAT):
  when 3.40282347e+38 is static:
    const
      MAXFLOAT* = 3.40282347e+38 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:607:9
  else:
    let MAXFLOAT* = 3.40282347e+38 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:607:9
else:
  static :
    hint("Declaration of " & "MAXFLOAT" & " already exists, not redeclaring")
when not declared(M_E):
  when 2.718281828459045 is static:
    const
      M_E* = 2.718281828459045 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:609:9
  else:
    let M_E* = 2.718281828459045 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:609:9
else:
  static :
    hint("Declaration of " & "M_E" & " already exists, not redeclaring")
when not declared(M_LOG2E):
  when 1.442695040888963 is static:
    const
      M_LOG2E* = 1.442695040888963 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:610:9
  else:
    let M_LOG2E* = 1.442695040888963 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:610:9
else:
  static :
    hint("Declaration of " & "M_LOG2E" & " already exists, not redeclaring")
when not declared(M_LOG10E):
  when 0.4342944819032518 is static:
    const
      M_LOG10E* = 0.4342944819032518 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:611:9
  else:
    let M_LOG10E* = 0.4342944819032518 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:611:9
else:
  static :
    hint("Declaration of " & "M_LOG10E" & " already exists, not redeclaring")
when not declared(M_LN2):
  when internal_M_LN2 is typedesc:
    type
      M_LN2* = internal_M_LN2 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:612:9
  else:
    when internal_M_LN2 is static:
      const
        M_LN2* = internal_M_LN2 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:612:9
    else:
      let M_LN2* = internal_M_LN2 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:612:9
else:
  static :
    hint("Declaration of " & "M_LN2" & " already exists, not redeclaring")
when not declared(M_LN10):
  when 2.302585092994046 is static:
    const
      M_LN10* = 2.302585092994046 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:613:9
  else:
    let M_LN10* = 2.302585092994046 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:613:9
else:
  static :
    hint("Declaration of " & "M_LN10" & " already exists, not redeclaring")
when not declared(M_PI):
  when 3.141592653589793 is static:
    const
      M_PI* = 3.141592653589793 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:614:9
  else:
    let M_PI* = 3.141592653589793 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:614:9
else:
  static :
    hint("Declaration of " & "M_PI" & " already exists, not redeclaring")
when not declared(M_PI_2):
  when 1.570796326794897 is static:
    const
      M_PI_2* = 1.570796326794897 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:615:9
  else:
    let M_PI_2* = 1.570796326794897 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:615:9
else:
  static :
    hint("Declaration of " & "M_PI_2" & " already exists, not redeclaring")
when not declared(M_PI_4):
  when 0.7853981633974483 is static:
    const
      M_PI_4* = 0.7853981633974483 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:616:9
  else:
    let M_PI_4* = 0.7853981633974483 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:616:9
else:
  static :
    hint("Declaration of " & "M_PI_4" & " already exists, not redeclaring")
when not declared(M_1_PI):
  when 0.3183098861837907 is static:
    const
      M_1_PI* = 0.3183098861837907 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:617:9
  else:
    let M_1_PI* = 0.3183098861837907 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:617:9
else:
  static :
    hint("Declaration of " & "M_1_PI" & " already exists, not redeclaring")
when not declared(M_2_PI):
  when 0.6366197723675814 is static:
    const
      M_2_PI* = 0.6366197723675814 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:618:9
  else:
    let M_2_PI* = 0.6366197723675814 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:618:9
else:
  static :
    hint("Declaration of " & "M_2_PI" & " already exists, not redeclaring")
when not declared(M_2_SQRTPI):
  when 1.128379167095513 is static:
    const
      M_2_SQRTPI* = 1.128379167095513 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:619:9
  else:
    let M_2_SQRTPI* = 1.128379167095513 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:619:9
else:
  static :
    hint("Declaration of " & "M_2_SQRTPI" & " already exists, not redeclaring")
when not declared(M_SQRT2):
  when 1.414213562373095 is static:
    const
      M_SQRT2* = 1.414213562373095 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:620:9
  else:
    let M_SQRT2* = 1.414213562373095 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:620:9
else:
  static :
    hint("Declaration of " & "M_SQRT2" & " already exists, not redeclaring")
when not declared(M_SQRT1_2):
  when 0.7071067811865476 is static:
    const
      M_SQRT1_2* = 0.7071067811865476 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:621:9
  else:
    let M_SQRT1_2* = 0.7071067811865476 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:621:9
else:
  static :
    hint("Declaration of " & "M_SQRT1_2" & " already exists, not redeclaring")
when not declared(M_3PI_4):
  when 2.356194490192345 is static:
    const
      M_3PI_4* = 2.356194490192345 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:628:9
  else:
    let M_3PI_4* = 2.356194490192345 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:628:9
else:
  static :
    hint("Declaration of " & "M_3PI_4" & " already exists, not redeclaring")
when not declared(M_SQRTPI):
  when 1.772453850905516 is static:
    const
      M_SQRTPI* = 1.772453850905516 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:629:9
  else:
    let M_SQRTPI* = 1.772453850905516 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:629:9
else:
  static :
    hint("Declaration of " & "M_SQRTPI" & " already exists, not redeclaring")
when not declared(M_LN2LO):
  when 1.908214929270588e-10 is static:
    const
      M_LN2LO* = 1.908214929270588e-10 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:630:9
  else:
    let M_LN2LO* = 1.908214929270588e-10 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:630:9
else:
  static :
    hint("Declaration of " & "M_LN2LO" & " already exists, not redeclaring")
when not declared(M_LN2HI):
  when 0.6931471803691238 is static:
    const
      M_LN2HI* = 0.6931471803691238 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:631:9
  else:
    let M_LN2HI* = 0.6931471803691238 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:631:9
else:
  static :
    hint("Declaration of " & "M_LN2HI" & " already exists, not redeclaring")
when not declared(M_SQRT3):
  when 1.732050807568877 is static:
    const
      M_SQRT3* = 1.732050807568877 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:632:9
  else:
    let M_SQRT3* = 1.732050807568877 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:632:9
else:
  static :
    hint("Declaration of " & "M_SQRT3" & " already exists, not redeclaring")
when not declared(M_IVLN10):
  when 0.4342944819032518 is static:
    const
      M_IVLN10* = 0.4342944819032518 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:633:9
  else:
    let M_IVLN10* = 0.4342944819032518 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:633:9
else:
  static :
    hint("Declaration of " & "M_IVLN10" & " already exists, not redeclaring")
when not declared(M_LOG2_E_const):
  when internal_M_LN2 is typedesc:
    type
      M_LOG2_E_const* = internal_M_LN2 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:634:9
  else:
    when internal_M_LN2 is static:
      const
        M_LOG2_E_const* = internal_M_LN2 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:634:9
    else:
      let M_LOG2_E_const* = internal_M_LN2 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:634:9
else:
  static :
    hint("Declaration of " & "M_LOG2_E_const" &
        " already exists, not redeclaring")
when not declared(M_INVLN2):
  when 1.442695040888963 is static:
    const
      M_INVLN2* = 1.442695040888963 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:635:9
  else:
    let M_INVLN2* = 1.442695040888963 ## Generated based on /opt/libdragon/mips64-elf/include/math.h:635:9
else:
  static :
    hint("Declaration of " & "M_INVLN2" & " already exists, not redeclaring")
when not declared(RLGL_VERSION):
  when "4.5" is static:
    const
      RLGL_VERSION* = "4.5"  ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:110:9
  else:
    let RLGL_VERSION* = "4.5" ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:110:9
else:
  static :
    hint("Declaration of " & "RLGL_VERSION" & " already exists, not redeclaring")
when not declared(RL_DEFAULT_BATCH_BUFFER_ELEMENTS):
  when 8192 is static:
    const
      RL_DEFAULT_BATCH_BUFFER_ELEMENTS* = 8192 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:204:17
  else:
    let RL_DEFAULT_BATCH_BUFFER_ELEMENTS* = 8192 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:204:17
else:
  static :
    hint("Declaration of " & "RL_DEFAULT_BATCH_BUFFER_ELEMENTS" &
        " already exists, not redeclaring")
when not declared(RL_DEFAULT_BATCH_BUFFERS):
  when 1 is static:
    const
      RL_DEFAULT_BATCH_BUFFERS* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:214:13
  else:
    let RL_DEFAULT_BATCH_BUFFERS* = 1 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:214:13
else:
  static :
    hint("Declaration of " & "RL_DEFAULT_BATCH_BUFFERS" &
        " already exists, not redeclaring")
when not declared(RL_DEFAULT_BATCH_DRAWCALLS):
  when 256 is static:
    const
      RL_DEFAULT_BATCH_DRAWCALLS* = 256 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:217:13
  else:
    let RL_DEFAULT_BATCH_DRAWCALLS* = 256 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:217:13
else:
  static :
    hint("Declaration of " & "RL_DEFAULT_BATCH_DRAWCALLS" &
        " already exists, not redeclaring")
when not declared(RL_DEFAULT_BATCH_MAX_TEXTURE_UNITS):
  when 4 is static:
    const
      RL_DEFAULT_BATCH_MAX_TEXTURE_UNITS* = 4 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:220:13
  else:
    let RL_DEFAULT_BATCH_MAX_TEXTURE_UNITS* = 4 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:220:13
else:
  static :
    hint("Declaration of " & "RL_DEFAULT_BATCH_MAX_TEXTURE_UNITS" &
        " already exists, not redeclaring")
when not declared(RL_MAX_MATRIX_STACK_SIZE):
  when 32 is static:
    const
      RL_MAX_MATRIX_STACK_SIZE* = 32 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:225:13
  else:
    let RL_MAX_MATRIX_STACK_SIZE* = 32 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:225:13
else:
  static :
    hint("Declaration of " & "RL_MAX_MATRIX_STACK_SIZE" &
        " already exists, not redeclaring")
when not declared(RL_MAX_SHADER_LOCATIONS):
  when 32 is static:
    const
      RL_MAX_SHADER_LOCATIONS* = 32 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:230:13
  else:
    let RL_MAX_SHADER_LOCATIONS* = 32 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:230:13
else:
  static :
    hint("Declaration of " & "RL_MAX_SHADER_LOCATIONS" &
        " already exists, not redeclaring")
when not declared(RL_CULL_DISTANCE_NEAR):
  when 0.01 is static:
    const
      RL_CULL_DISTANCE_NEAR* = 0.01 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:235:13
  else:
    let RL_CULL_DISTANCE_NEAR* = 0.01 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:235:13
else:
  static :
    hint("Declaration of " & "RL_CULL_DISTANCE_NEAR" &
        " already exists, not redeclaring")
when not declared(RL_CULL_DISTANCE_FAR):
  when 1000.0 is static:
    const
      RL_CULL_DISTANCE_FAR* = 1000.0 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:238:13
  else:
    let RL_CULL_DISTANCE_FAR* = 1000.0 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:238:13
else:
  static :
    hint("Declaration of " & "RL_CULL_DISTANCE_FAR" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_WRAP_S):
  when 10242 is static:
    const
      RL_TEXTURE_WRAP_S* = 10242 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:242:9
  else:
    let RL_TEXTURE_WRAP_S* = 10242 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:242:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_WRAP_S" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_WRAP_T):
  when 10243 is static:
    const
      RL_TEXTURE_WRAP_T* = 10243 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:243:9
  else:
    let RL_TEXTURE_WRAP_T* = 10243 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:243:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_WRAP_T" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_MAG_FILTER):
  when 10240 is static:
    const
      RL_TEXTURE_MAG_FILTER* = 10240 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:244:9
  else:
    let RL_TEXTURE_MAG_FILTER* = 10240 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:244:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_MAG_FILTER" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_MIN_FILTER):
  when 10241 is static:
    const
      RL_TEXTURE_MIN_FILTER* = 10241 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:245:9
  else:
    let RL_TEXTURE_MIN_FILTER* = 10241 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:245:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_MIN_FILTER" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_FILTER_NEAREST):
  when 9728 is static:
    const
      RL_TEXTURE_FILTER_NEAREST* = 9728 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:247:9
  else:
    let RL_TEXTURE_FILTER_NEAREST* = 9728 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:247:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_FILTER_NEAREST" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_FILTER_LINEAR):
  when 9729 is static:
    const
      RL_TEXTURE_FILTER_LINEAR* = 9729 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:248:9
  else:
    let RL_TEXTURE_FILTER_LINEAR* = 9729 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:248:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_FILTER_LINEAR" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_FILTER_MIP_NEAREST):
  when 9984 is static:
    const
      RL_TEXTURE_FILTER_MIP_NEAREST* = 9984 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:249:9
  else:
    let RL_TEXTURE_FILTER_MIP_NEAREST* = 9984 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:249:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_FILTER_MIP_NEAREST" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_FILTER_NEAREST_MIP_LINEAR):
  when 9986 is static:
    const
      RL_TEXTURE_FILTER_NEAREST_MIP_LINEAR* = 9986 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:250:9
  else:
    let RL_TEXTURE_FILTER_NEAREST_MIP_LINEAR* = 9986 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:250:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_FILTER_NEAREST_MIP_LINEAR" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_FILTER_LINEAR_MIP_NEAREST):
  when 9985 is static:
    const
      RL_TEXTURE_FILTER_LINEAR_MIP_NEAREST* = 9985 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:251:9
  else:
    let RL_TEXTURE_FILTER_LINEAR_MIP_NEAREST* = 9985 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:251:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_FILTER_LINEAR_MIP_NEAREST" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_FILTER_MIP_LINEAR):
  when 9987 is static:
    const
      RL_TEXTURE_FILTER_MIP_LINEAR* = 9987 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:252:9
  else:
    let RL_TEXTURE_FILTER_MIP_LINEAR* = 9987 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:252:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_FILTER_MIP_LINEAR" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_FILTER_ANISOTROPIC):
  when 12288 is static:
    const
      RL_TEXTURE_FILTER_ANISOTROPIC* = 12288 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:253:9
  else:
    let RL_TEXTURE_FILTER_ANISOTROPIC* = 12288 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:253:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_FILTER_ANISOTROPIC" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_MIPMAP_BIAS_RATIO):
  when 16384 is static:
    const
      RL_TEXTURE_MIPMAP_BIAS_RATIO* = 16384 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:254:9
  else:
    let RL_TEXTURE_MIPMAP_BIAS_RATIO* = 16384 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:254:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_MIPMAP_BIAS_RATIO" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_WRAP_REPEAT):
  when 10497 is static:
    const
      RL_TEXTURE_WRAP_REPEAT* = 10497 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:256:9
  else:
    let RL_TEXTURE_WRAP_REPEAT* = 10497 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:256:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_WRAP_REPEAT" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_WRAP_CLAMP):
  when 33071 is static:
    const
      RL_TEXTURE_WRAP_CLAMP* = 33071 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:257:9
  else:
    let RL_TEXTURE_WRAP_CLAMP* = 33071 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:257:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_WRAP_CLAMP" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_WRAP_MIRROR_REPEAT):
  when 33648 is static:
    const
      RL_TEXTURE_WRAP_MIRROR_REPEAT* = 33648 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:258:9
  else:
    let RL_TEXTURE_WRAP_MIRROR_REPEAT* = 33648 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:258:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_WRAP_MIRROR_REPEAT" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE_WRAP_MIRROR_CLAMP):
  when 34626 is static:
    const
      RL_TEXTURE_WRAP_MIRROR_CLAMP* = 34626 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:259:9
  else:
    let RL_TEXTURE_WRAP_MIRROR_CLAMP* = 34626 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:259:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE_WRAP_MIRROR_CLAMP" &
        " already exists, not redeclaring")
when not declared(RL_MODELVIEW):
  when 5888 is static:
    const
      RL_MODELVIEW* = 5888   ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:262:9
  else:
    let RL_MODELVIEW* = 5888 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:262:9
else:
  static :
    hint("Declaration of " & "RL_MODELVIEW" & " already exists, not redeclaring")
when not declared(RL_PROJECTION):
  when 5889 is static:
    const
      RL_PROJECTION* = 5889  ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:263:9
  else:
    let RL_PROJECTION* = 5889 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:263:9
else:
  static :
    hint("Declaration of " & "RL_PROJECTION" &
        " already exists, not redeclaring")
when not declared(RL_TEXTURE):
  when 5890 is static:
    const
      RL_TEXTURE* = 5890     ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:264:9
  else:
    let RL_TEXTURE* = 5890   ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:264:9
else:
  static :
    hint("Declaration of " & "RL_TEXTURE" & " already exists, not redeclaring")
when not declared(RL_LINES):
  when 1 is static:
    const
      RL_LINES* = 1          ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:267:9
  else:
    let RL_LINES* = 1        ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:267:9
else:
  static :
    hint("Declaration of " & "RL_LINES" & " already exists, not redeclaring")
when not declared(RL_TRIANGLES):
  when 4 is static:
    const
      RL_TRIANGLES* = 4      ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:268:9
  else:
    let RL_TRIANGLES* = 4    ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:268:9
else:
  static :
    hint("Declaration of " & "RL_TRIANGLES" & " already exists, not redeclaring")
when not declared(RL_QUADS):
  when 7 is static:
    const
      RL_QUADS* = 7          ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:269:9
  else:
    let RL_QUADS* = 7        ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:269:9
else:
  static :
    hint("Declaration of " & "RL_QUADS" & " already exists, not redeclaring")
when not declared(RL_UNSIGNED_BYTE):
  when 5121 is static:
    const
      RL_UNSIGNED_BYTE* = 5121 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:272:9
  else:
    let RL_UNSIGNED_BYTE* = 5121 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:272:9
else:
  static :
    hint("Declaration of " & "RL_UNSIGNED_BYTE" &
        " already exists, not redeclaring")
when not declared(RL_FLOAT):
  when 5126 is static:
    const
      RL_FLOAT* = 5126       ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:273:9
  else:
    let RL_FLOAT* = 5126     ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:273:9
else:
  static :
    hint("Declaration of " & "RL_FLOAT" & " already exists, not redeclaring")
when not declared(RL_STREAM_DRAW):
  when 35040 is static:
    const
      RL_STREAM_DRAW* = 35040 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:276:9
  else:
    let RL_STREAM_DRAW* = 35040 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:276:9
else:
  static :
    hint("Declaration of " & "RL_STREAM_DRAW" &
        " already exists, not redeclaring")
when not declared(RL_STREAM_READ):
  when 35041 is static:
    const
      RL_STREAM_READ* = 35041 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:277:9
  else:
    let RL_STREAM_READ* = 35041 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:277:9
else:
  static :
    hint("Declaration of " & "RL_STREAM_READ" &
        " already exists, not redeclaring")
when not declared(RL_STREAM_COPY):
  when 35042 is static:
    const
      RL_STREAM_COPY* = 35042 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:278:9
  else:
    let RL_STREAM_COPY* = 35042 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:278:9
else:
  static :
    hint("Declaration of " & "RL_STREAM_COPY" &
        " already exists, not redeclaring")
when not declared(RL_STATIC_DRAW):
  when 35044 is static:
    const
      RL_STATIC_DRAW* = 35044 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:279:9
  else:
    let RL_STATIC_DRAW* = 35044 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:279:9
else:
  static :
    hint("Declaration of " & "RL_STATIC_DRAW" &
        " already exists, not redeclaring")
when not declared(RL_STATIC_READ):
  when 35045 is static:
    const
      RL_STATIC_READ* = 35045 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:280:9
  else:
    let RL_STATIC_READ* = 35045 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:280:9
else:
  static :
    hint("Declaration of " & "RL_STATIC_READ" &
        " already exists, not redeclaring")
when not declared(RL_STATIC_COPY):
  when 35046 is static:
    const
      RL_STATIC_COPY* = 35046 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:281:9
  else:
    let RL_STATIC_COPY* = 35046 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:281:9
else:
  static :
    hint("Declaration of " & "RL_STATIC_COPY" &
        " already exists, not redeclaring")
when not declared(RL_DYNAMIC_DRAW):
  when 35048 is static:
    const
      RL_DYNAMIC_DRAW* = 35048 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:282:9
  else:
    let RL_DYNAMIC_DRAW* = 35048 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:282:9
else:
  static :
    hint("Declaration of " & "RL_DYNAMIC_DRAW" &
        " already exists, not redeclaring")
when not declared(RL_DYNAMIC_READ):
  when 35049 is static:
    const
      RL_DYNAMIC_READ* = 35049 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:283:9
  else:
    let RL_DYNAMIC_READ* = 35049 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:283:9
else:
  static :
    hint("Declaration of " & "RL_DYNAMIC_READ" &
        " already exists, not redeclaring")
when not declared(RL_DYNAMIC_COPY):
  when 35050 is static:
    const
      RL_DYNAMIC_COPY* = 35050 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:284:9
  else:
    let RL_DYNAMIC_COPY* = 35050 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:284:9
else:
  static :
    hint("Declaration of " & "RL_DYNAMIC_COPY" &
        " already exists, not redeclaring")
when not declared(RL_FRAGMENT_SHADER):
  when 35632 is static:
    const
      RL_FRAGMENT_SHADER* = 35632 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:287:9
  else:
    let RL_FRAGMENT_SHADER* = 35632 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:287:9
else:
  static :
    hint("Declaration of " & "RL_FRAGMENT_SHADER" &
        " already exists, not redeclaring")
when not declared(RL_VERTEX_SHADER):
  when 35633 is static:
    const
      RL_VERTEX_SHADER* = 35633 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:288:9
  else:
    let RL_VERTEX_SHADER* = 35633 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:288:9
else:
  static :
    hint("Declaration of " & "RL_VERTEX_SHADER" &
        " already exists, not redeclaring")
when not declared(RL_COMPUTE_SHADER):
  when 37305 is static:
    const
      RL_COMPUTE_SHADER* = 37305 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:289:9
  else:
    let RL_COMPUTE_SHADER* = 37305 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:289:9
else:
  static :
    hint("Declaration of " & "RL_COMPUTE_SHADER" &
        " already exists, not redeclaring")
when not declared(RL_ZERO):
  when 0 is static:
    const
      RL_ZERO* = 0           ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:292:9
  else:
    let RL_ZERO* = 0         ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:292:9
else:
  static :
    hint("Declaration of " & "RL_ZERO" & " already exists, not redeclaring")
when not declared(RL_ONE):
  when 1 is static:
    const
      RL_ONE* = 1            ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:293:9
  else:
    let RL_ONE* = 1          ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:293:9
else:
  static :
    hint("Declaration of " & "RL_ONE" & " already exists, not redeclaring")
when not declared(RL_SRC_COLOR):
  when 768 is static:
    const
      RL_SRC_COLOR* = 768    ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:294:9
  else:
    let RL_SRC_COLOR* = 768  ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:294:9
else:
  static :
    hint("Declaration of " & "RL_SRC_COLOR" & " already exists, not redeclaring")
when not declared(RL_ONE_MINUS_SRC_COLOR):
  when 769 is static:
    const
      RL_ONE_MINUS_SRC_COLOR* = 769 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:295:9
  else:
    let RL_ONE_MINUS_SRC_COLOR* = 769 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:295:9
else:
  static :
    hint("Declaration of " & "RL_ONE_MINUS_SRC_COLOR" &
        " already exists, not redeclaring")
when not declared(RL_SRC_ALPHA):
  when 770 is static:
    const
      RL_SRC_ALPHA* = 770    ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:296:9
  else:
    let RL_SRC_ALPHA* = 770  ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:296:9
else:
  static :
    hint("Declaration of " & "RL_SRC_ALPHA" & " already exists, not redeclaring")
when not declared(RL_ONE_MINUS_SRC_ALPHA):
  when 771 is static:
    const
      RL_ONE_MINUS_SRC_ALPHA* = 771 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:297:9
  else:
    let RL_ONE_MINUS_SRC_ALPHA* = 771 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:297:9
else:
  static :
    hint("Declaration of " & "RL_ONE_MINUS_SRC_ALPHA" &
        " already exists, not redeclaring")
when not declared(RL_DST_ALPHA):
  when 772 is static:
    const
      RL_DST_ALPHA* = 772    ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:298:9
  else:
    let RL_DST_ALPHA* = 772  ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:298:9
else:
  static :
    hint("Declaration of " & "RL_DST_ALPHA" & " already exists, not redeclaring")
when not declared(RL_ONE_MINUS_DST_ALPHA):
  when 773 is static:
    const
      RL_ONE_MINUS_DST_ALPHA* = 773 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:299:9
  else:
    let RL_ONE_MINUS_DST_ALPHA* = 773 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:299:9
else:
  static :
    hint("Declaration of " & "RL_ONE_MINUS_DST_ALPHA" &
        " already exists, not redeclaring")
when not declared(RL_DST_COLOR):
  when 774 is static:
    const
      RL_DST_COLOR* = 774    ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:300:9
  else:
    let RL_DST_COLOR* = 774  ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:300:9
else:
  static :
    hint("Declaration of " & "RL_DST_COLOR" & " already exists, not redeclaring")
when not declared(RL_ONE_MINUS_DST_COLOR):
  when 775 is static:
    const
      RL_ONE_MINUS_DST_COLOR* = 775 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:301:9
  else:
    let RL_ONE_MINUS_DST_COLOR* = 775 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:301:9
else:
  static :
    hint("Declaration of " & "RL_ONE_MINUS_DST_COLOR" &
        " already exists, not redeclaring")
when not declared(RL_SRC_ALPHA_SATURATE):
  when 776 is static:
    const
      RL_SRC_ALPHA_SATURATE* = 776 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:302:9
  else:
    let RL_SRC_ALPHA_SATURATE* = 776 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:302:9
else:
  static :
    hint("Declaration of " & "RL_SRC_ALPHA_SATURATE" &
        " already exists, not redeclaring")
when not declared(RL_CONSTANT_COLOR):
  when 32769 is static:
    const
      RL_CONSTANT_COLOR* = 32769 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:303:9
  else:
    let RL_CONSTANT_COLOR* = 32769 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:303:9
else:
  static :
    hint("Declaration of " & "RL_CONSTANT_COLOR" &
        " already exists, not redeclaring")
when not declared(RL_ONE_MINUS_CONSTANT_COLOR):
  when 32770 is static:
    const
      RL_ONE_MINUS_CONSTANT_COLOR* = 32770 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:304:9
  else:
    let RL_ONE_MINUS_CONSTANT_COLOR* = 32770 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:304:9
else:
  static :
    hint("Declaration of " & "RL_ONE_MINUS_CONSTANT_COLOR" &
        " already exists, not redeclaring")
when not declared(RL_CONSTANT_ALPHA):
  when 32771 is static:
    const
      RL_CONSTANT_ALPHA* = 32771 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:305:9
  else:
    let RL_CONSTANT_ALPHA* = 32771 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:305:9
else:
  static :
    hint("Declaration of " & "RL_CONSTANT_ALPHA" &
        " already exists, not redeclaring")
when not declared(RL_ONE_MINUS_CONSTANT_ALPHA):
  when 32772 is static:
    const
      RL_ONE_MINUS_CONSTANT_ALPHA* = 32772 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:306:9
  else:
    let RL_ONE_MINUS_CONSTANT_ALPHA* = 32772 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:306:9
else:
  static :
    hint("Declaration of " & "RL_ONE_MINUS_CONSTANT_ALPHA" &
        " already exists, not redeclaring")
when not declared(RL_FUNC_ADD):
  when 32774 is static:
    const
      RL_FUNC_ADD* = 32774   ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:309:9
  else:
    let RL_FUNC_ADD* = 32774 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:309:9
else:
  static :
    hint("Declaration of " & "RL_FUNC_ADD" & " already exists, not redeclaring")
when not declared(RL_MIN):
  when 32775 is static:
    const
      RL_MIN* = 32775        ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:310:9
  else:
    let RL_MIN* = 32775      ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:310:9
else:
  static :
    hint("Declaration of " & "RL_MIN" & " already exists, not redeclaring")
when not declared(RL_MAX):
  when 32776 is static:
    const
      RL_MAX* = 32776        ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:311:9
  else:
    let RL_MAX* = 32776      ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:311:9
else:
  static :
    hint("Declaration of " & "RL_MAX" & " already exists, not redeclaring")
when not declared(RL_FUNC_SUBTRACT):
  when 32778 is static:
    const
      RL_FUNC_SUBTRACT* = 32778 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:312:9
  else:
    let RL_FUNC_SUBTRACT* = 32778 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:312:9
else:
  static :
    hint("Declaration of " & "RL_FUNC_SUBTRACT" &
        " already exists, not redeclaring")
when not declared(RL_FUNC_REVERSE_SUBTRACT):
  when 32779 is static:
    const
      RL_FUNC_REVERSE_SUBTRACT* = 32779 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:313:9
  else:
    let RL_FUNC_REVERSE_SUBTRACT* = 32779 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:313:9
else:
  static :
    hint("Declaration of " & "RL_FUNC_REVERSE_SUBTRACT" &
        " already exists, not redeclaring")
when not declared(RL_BLEND_EQUATION):
  when 32777 is static:
    const
      RL_BLEND_EQUATION* = 32777 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:314:9
  else:
    let RL_BLEND_EQUATION* = 32777 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:314:9
else:
  static :
    hint("Declaration of " & "RL_BLEND_EQUATION" &
        " already exists, not redeclaring")
when not declared(RL_BLEND_EQUATION_RGB):
  when 32777 is static:
    const
      RL_BLEND_EQUATION_RGB* = 32777 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:315:9
  else:
    let RL_BLEND_EQUATION_RGB* = 32777 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:315:9
else:
  static :
    hint("Declaration of " & "RL_BLEND_EQUATION_RGB" &
        " already exists, not redeclaring")
when not declared(RL_BLEND_EQUATION_ALPHA):
  when 34877 is static:
    const
      RL_BLEND_EQUATION_ALPHA* = 34877 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:316:9
  else:
    let RL_BLEND_EQUATION_ALPHA* = 34877 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:316:9
else:
  static :
    hint("Declaration of " & "RL_BLEND_EQUATION_ALPHA" &
        " already exists, not redeclaring")
when not declared(RL_BLEND_DST_RGB):
  when 32968 is static:
    const
      RL_BLEND_DST_RGB* = 32968 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:317:9
  else:
    let RL_BLEND_DST_RGB* = 32968 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:317:9
else:
  static :
    hint("Declaration of " & "RL_BLEND_DST_RGB" &
        " already exists, not redeclaring")
when not declared(RL_BLEND_SRC_RGB):
  when 32969 is static:
    const
      RL_BLEND_SRC_RGB* = 32969 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:318:9
  else:
    let RL_BLEND_SRC_RGB* = 32969 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:318:9
else:
  static :
    hint("Declaration of " & "RL_BLEND_SRC_RGB" &
        " already exists, not redeclaring")
when not declared(RL_BLEND_DST_ALPHA):
  when 32970 is static:
    const
      RL_BLEND_DST_ALPHA* = 32970 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:319:9
  else:
    let RL_BLEND_DST_ALPHA* = 32970 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:319:9
else:
  static :
    hint("Declaration of " & "RL_BLEND_DST_ALPHA" &
        " already exists, not redeclaring")
when not declared(RL_BLEND_SRC_ALPHA):
  when 32971 is static:
    const
      RL_BLEND_SRC_ALPHA* = 32971 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:320:9
  else:
    let RL_BLEND_SRC_ALPHA* = 32971 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:320:9
else:
  static :
    hint("Declaration of " & "RL_BLEND_SRC_ALPHA" &
        " already exists, not redeclaring")
when not declared(RL_BLEND_COLOR):
  when 32773 is static:
    const
      RL_BLEND_COLOR* = 32773 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:321:9
  else:
    let RL_BLEND_COLOR* = 32773 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:321:9
else:
  static :
    hint("Declaration of " & "RL_BLEND_COLOR" &
        " already exists, not redeclaring")
when not declared(RL_READ_FRAMEBUFFER):
  when 36008 is static:
    const
      RL_READ_FRAMEBUFFER* = 36008 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:323:9
  else:
    let RL_READ_FRAMEBUFFER* = 36008 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:323:9
else:
  static :
    hint("Declaration of " & "RL_READ_FRAMEBUFFER" &
        " already exists, not redeclaring")
when not declared(RL_DRAW_FRAMEBUFFER):
  when 36009 is static:
    const
      RL_DRAW_FRAMEBUFFER* = 36009 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:324:9
  else:
    let RL_DRAW_FRAMEBUFFER* = 36009 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:324:9
else:
  static :
    hint("Declaration of " & "RL_DRAW_FRAMEBUFFER" &
        " already exists, not redeclaring")
when not declared(RL_SHADER_LOC_MAP_DIFFUSE):
  when RL_SHADER_LOC_MAP_ALBEDO is typedesc:
    type
      RL_SHADER_LOC_MAP_DIFFUSE* = RL_SHADER_LOC_MAP_ALBEDO ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:497:9
  else:
    when RL_SHADER_LOC_MAP_ALBEDO is static:
      const
        RL_SHADER_LOC_MAP_DIFFUSE* = RL_SHADER_LOC_MAP_ALBEDO ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:497:9
    else:
      let RL_SHADER_LOC_MAP_DIFFUSE* = RL_SHADER_LOC_MAP_ALBEDO ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:497:9
else:
  static :
    hint("Declaration of " & "RL_SHADER_LOC_MAP_DIFFUSE" &
        " already exists, not redeclaring")
when not declared(RL_SHADER_LOC_MAP_SPECULAR):
  when RL_SHADER_LOC_MAP_METALNESS is typedesc:
    type
      RL_SHADER_LOC_MAP_SPECULAR* = RL_SHADER_LOC_MAP_METALNESS ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:498:9
  else:
    when RL_SHADER_LOC_MAP_METALNESS is static:
      const
        RL_SHADER_LOC_MAP_SPECULAR* = RL_SHADER_LOC_MAP_METALNESS ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:498:9
    else:
      let RL_SHADER_LOC_MAP_SPECULAR* = RL_SHADER_LOC_MAP_METALNESS ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:498:9
else:
  static :
    hint("Declaration of " & "RL_SHADER_LOC_MAP_SPECULAR" &
        " already exists, not redeclaring")
when not declared(InitWindow):
  proc InitWindow*(width: cint; height: cint; title: cstring): void {.cdecl,
      importc: "InitWindow".}
else:
  static :
    hint("Declaration of " & "InitWindow" & " already exists, not redeclaring")
when not declared(CloseWindow):
  proc CloseWindow*(): void {.cdecl, importc: "CloseWindow".}
else:
  static :
    hint("Declaration of " & "CloseWindow" & " already exists, not redeclaring")
when not declared(WindowShouldClose):
  proc WindowShouldClose*(): bool {.cdecl, importc: "WindowShouldClose".}
else:
  static :
    hint("Declaration of " & "WindowShouldClose" &
        " already exists, not redeclaring")
when not declared(IsWindowReady):
  proc IsWindowReady*(): bool {.cdecl, importc: "IsWindowReady".}
else:
  static :
    hint("Declaration of " & "IsWindowReady" &
        " already exists, not redeclaring")
when not declared(IsWindowFullscreen):
  proc IsWindowFullscreen*(): bool {.cdecl, importc: "IsWindowFullscreen".}
else:
  static :
    hint("Declaration of " & "IsWindowFullscreen" &
        " already exists, not redeclaring")
when not declared(IsWindowHidden):
  proc IsWindowHidden*(): bool {.cdecl, importc: "IsWindowHidden".}
else:
  static :
    hint("Declaration of " & "IsWindowHidden" &
        " already exists, not redeclaring")
when not declared(IsWindowMinimized):
  proc IsWindowMinimized*(): bool {.cdecl, importc: "IsWindowMinimized".}
else:
  static :
    hint("Declaration of " & "IsWindowMinimized" &
        " already exists, not redeclaring")
when not declared(IsWindowMaximized):
  proc IsWindowMaximized*(): bool {.cdecl, importc: "IsWindowMaximized".}
else:
  static :
    hint("Declaration of " & "IsWindowMaximized" &
        " already exists, not redeclaring")
when not declared(IsWindowFocused):
  proc IsWindowFocused*(): bool {.cdecl, importc: "IsWindowFocused".}
else:
  static :
    hint("Declaration of " & "IsWindowFocused" &
        " already exists, not redeclaring")
when not declared(IsWindowResized):
  proc IsWindowResized*(): bool {.cdecl, importc: "IsWindowResized".}
else:
  static :
    hint("Declaration of " & "IsWindowResized" &
        " already exists, not redeclaring")
when not declared(IsWindowState):
  proc IsWindowState*(flag: cuint): bool {.cdecl, importc: "IsWindowState".}
else:
  static :
    hint("Declaration of " & "IsWindowState" &
        " already exists, not redeclaring")
when not declared(SetWindowState):
  proc SetWindowState*(flags: cuint): void {.cdecl, importc: "SetWindowState".}
else:
  static :
    hint("Declaration of " & "SetWindowState" &
        " already exists, not redeclaring")
when not declared(ClearWindowState):
  proc ClearWindowState*(flags: cuint): void {.cdecl,
      importc: "ClearWindowState".}
else:
  static :
    hint("Declaration of " & "ClearWindowState" &
        " already exists, not redeclaring")
when not declared(ToggleFullscreen):
  proc ToggleFullscreen*(): void {.cdecl, importc: "ToggleFullscreen".}
else:
  static :
    hint("Declaration of " & "ToggleFullscreen" &
        " already exists, not redeclaring")
when not declared(ToggleBorderlessWindowed):
  proc ToggleBorderlessWindowed*(): void {.cdecl,
      importc: "ToggleBorderlessWindowed".}
else:
  static :
    hint("Declaration of " & "ToggleBorderlessWindowed" &
        " already exists, not redeclaring")
when not declared(MaximizeWindow):
  proc MaximizeWindow*(): void {.cdecl, importc: "MaximizeWindow".}
else:
  static :
    hint("Declaration of " & "MaximizeWindow" &
        " already exists, not redeclaring")
when not declared(MinimizeWindow):
  proc MinimizeWindow*(): void {.cdecl, importc: "MinimizeWindow".}
else:
  static :
    hint("Declaration of " & "MinimizeWindow" &
        " already exists, not redeclaring")
when not declared(RestoreWindow):
  proc RestoreWindow*(): void {.cdecl, importc: "RestoreWindow".}
else:
  static :
    hint("Declaration of " & "RestoreWindow" &
        " already exists, not redeclaring")
when not declared(SetWindowIcon):
  proc SetWindowIcon*(image: Image_520094169): void {.cdecl,
      importc: "SetWindowIcon".}
else:
  static :
    hint("Declaration of " & "SetWindowIcon" &
        " already exists, not redeclaring")
when not declared(SetWindowIcons):
  proc SetWindowIcons*(images: ptr Image_520094169; count: cint): void {.cdecl,
      importc: "SetWindowIcons".}
else:
  static :
    hint("Declaration of " & "SetWindowIcons" &
        " already exists, not redeclaring")
when not declared(SetWindowTitle):
  proc SetWindowTitle*(title: cstring): void {.cdecl, importc: "SetWindowTitle".}
else:
  static :
    hint("Declaration of " & "SetWindowTitle" &
        " already exists, not redeclaring")
when not declared(SetWindowPosition):
  proc SetWindowPosition*(x: cint; y: cint): void {.cdecl,
      importc: "SetWindowPosition".}
else:
  static :
    hint("Declaration of " & "SetWindowPosition" &
        " already exists, not redeclaring")
when not declared(SetWindowMonitor):
  proc SetWindowMonitor*(monitor: cint): void {.cdecl,
      importc: "SetWindowMonitor".}
else:
  static :
    hint("Declaration of " & "SetWindowMonitor" &
        " already exists, not redeclaring")
when not declared(SetWindowMinSize):
  proc SetWindowMinSize*(width: cint; height: cint): void {.cdecl,
      importc: "SetWindowMinSize".}
else:
  static :
    hint("Declaration of " & "SetWindowMinSize" &
        " already exists, not redeclaring")
when not declared(SetWindowMaxSize):
  proc SetWindowMaxSize*(width: cint; height: cint): void {.cdecl,
      importc: "SetWindowMaxSize".}
else:
  static :
    hint("Declaration of " & "SetWindowMaxSize" &
        " already exists, not redeclaring")
when not declared(SetWindowSize):
  proc SetWindowSize*(width: cint; height: cint): void {.cdecl,
      importc: "SetWindowSize".}
else:
  static :
    hint("Declaration of " & "SetWindowSize" &
        " already exists, not redeclaring")
when not declared(SetWindowOpacity):
  proc SetWindowOpacity*(opacity: cfloat): void {.cdecl,
      importc: "SetWindowOpacity".}
else:
  static :
    hint("Declaration of " & "SetWindowOpacity" &
        " already exists, not redeclaring")
when not declared(SetWindowFocused):
  proc SetWindowFocused*(): void {.cdecl, importc: "SetWindowFocused".}
else:
  static :
    hint("Declaration of " & "SetWindowFocused" &
        " already exists, not redeclaring")
when not declared(GetWindowHandle):
  proc GetWindowHandle*(): pointer {.cdecl, importc: "GetWindowHandle".}
else:
  static :
    hint("Declaration of " & "GetWindowHandle" &
        " already exists, not redeclaring")
when not declared(GetScreenWidth):
  proc GetScreenWidth*(): cint {.cdecl, importc: "GetScreenWidth".}
else:
  static :
    hint("Declaration of " & "GetScreenWidth" &
        " already exists, not redeclaring")
when not declared(GetScreenHeight):
  proc GetScreenHeight*(): cint {.cdecl, importc: "GetScreenHeight".}
else:
  static :
    hint("Declaration of " & "GetScreenHeight" &
        " already exists, not redeclaring")
when not declared(GetRenderWidth):
  proc GetRenderWidth*(): cint {.cdecl, importc: "GetRenderWidth".}
else:
  static :
    hint("Declaration of " & "GetRenderWidth" &
        " already exists, not redeclaring")
when not declared(GetRenderHeight):
  proc GetRenderHeight*(): cint {.cdecl, importc: "GetRenderHeight".}
else:
  static :
    hint("Declaration of " & "GetRenderHeight" &
        " already exists, not redeclaring")
when not declared(GetMonitorCount):
  proc GetMonitorCount*(): cint {.cdecl, importc: "GetMonitorCount".}
else:
  static :
    hint("Declaration of " & "GetMonitorCount" &
        " already exists, not redeclaring")
when not declared(GetCurrentMonitor):
  proc GetCurrentMonitor*(): cint {.cdecl, importc: "GetCurrentMonitor".}
else:
  static :
    hint("Declaration of " & "GetCurrentMonitor" &
        " already exists, not redeclaring")
when not declared(GetMonitorPosition):
  proc GetMonitorPosition*(monitor: cint): Vector2_520094143 {.cdecl,
      importc: "GetMonitorPosition".}
else:
  static :
    hint("Declaration of " & "GetMonitorPosition" &
        " already exists, not redeclaring")
when not declared(GetMonitorWidth):
  proc GetMonitorWidth*(monitor: cint): cint {.cdecl, importc: "GetMonitorWidth".}
else:
  static :
    hint("Declaration of " & "GetMonitorWidth" &
        " already exists, not redeclaring")
when not declared(GetMonitorHeight):
  proc GetMonitorHeight*(monitor: cint): cint {.cdecl,
      importc: "GetMonitorHeight".}
else:
  static :
    hint("Declaration of " & "GetMonitorHeight" &
        " already exists, not redeclaring")
when not declared(GetMonitorPhysicalWidth):
  proc GetMonitorPhysicalWidth*(monitor: cint): cint {.cdecl,
      importc: "GetMonitorPhysicalWidth".}
else:
  static :
    hint("Declaration of " & "GetMonitorPhysicalWidth" &
        " already exists, not redeclaring")
when not declared(GetMonitorPhysicalHeight):
  proc GetMonitorPhysicalHeight*(monitor: cint): cint {.cdecl,
      importc: "GetMonitorPhysicalHeight".}
else:
  static :
    hint("Declaration of " & "GetMonitorPhysicalHeight" &
        " already exists, not redeclaring")
when not declared(GetMonitorRefreshRate):
  proc GetMonitorRefreshRate*(monitor: cint): cint {.cdecl,
      importc: "GetMonitorRefreshRate".}
else:
  static :
    hint("Declaration of " & "GetMonitorRefreshRate" &
        " already exists, not redeclaring")
when not declared(GetWindowPosition):
  proc GetWindowPosition*(): Vector2_520094143 {.cdecl,
      importc: "GetWindowPosition".}
else:
  static :
    hint("Declaration of " & "GetWindowPosition" &
        " already exists, not redeclaring")
when not declared(GetWindowScaleDPI):
  proc GetWindowScaleDPI*(): Vector2_520094143 {.cdecl,
      importc: "GetWindowScaleDPI".}
else:
  static :
    hint("Declaration of " & "GetWindowScaleDPI" &
        " already exists, not redeclaring")
when not declared(GetMonitorName):
  proc GetMonitorName*(monitor: cint): cstring {.cdecl,
      importc: "GetMonitorName".}
else:
  static :
    hint("Declaration of " & "GetMonitorName" &
        " already exists, not redeclaring")
when not declared(SetClipboardText):
  proc SetClipboardText*(text: cstring): void {.cdecl,
      importc: "SetClipboardText".}
else:
  static :
    hint("Declaration of " & "SetClipboardText" &
        " already exists, not redeclaring")
when not declared(GetClipboardText):
  proc GetClipboardText*(): cstring {.cdecl, importc: "GetClipboardText".}
else:
  static :
    hint("Declaration of " & "GetClipboardText" &
        " already exists, not redeclaring")
when not declared(EnableEventWaiting):
  proc EnableEventWaiting*(): void {.cdecl, importc: "EnableEventWaiting".}
else:
  static :
    hint("Declaration of " & "EnableEventWaiting" &
        " already exists, not redeclaring")
when not declared(DisableEventWaiting):
  proc DisableEventWaiting*(): void {.cdecl, importc: "DisableEventWaiting".}
else:
  static :
    hint("Declaration of " & "DisableEventWaiting" &
        " already exists, not redeclaring")
when not declared(ShowCursor):
  proc ShowCursor*(): void {.cdecl, importc: "ShowCursor".}
else:
  static :
    hint("Declaration of " & "ShowCursor" & " already exists, not redeclaring")
when not declared(HideCursor):
  proc HideCursor*(): void {.cdecl, importc: "HideCursor".}
else:
  static :
    hint("Declaration of " & "HideCursor" & " already exists, not redeclaring")
when not declared(IsCursorHidden):
  proc IsCursorHidden*(): bool {.cdecl, importc: "IsCursorHidden".}
else:
  static :
    hint("Declaration of " & "IsCursorHidden" &
        " already exists, not redeclaring")
when not declared(EnableCursor):
  proc EnableCursor*(): void {.cdecl, importc: "EnableCursor".}
else:
  static :
    hint("Declaration of " & "EnableCursor" & " already exists, not redeclaring")
when not declared(DisableCursor):
  proc DisableCursor*(): void {.cdecl, importc: "DisableCursor".}
else:
  static :
    hint("Declaration of " & "DisableCursor" &
        " already exists, not redeclaring")
when not declared(IsCursorOnScreen):
  proc IsCursorOnScreen*(): bool {.cdecl, importc: "IsCursorOnScreen".}
else:
  static :
    hint("Declaration of " & "IsCursorOnScreen" &
        " already exists, not redeclaring")
when not declared(ClearBackground):
  proc ClearBackground*(color: Color_520094161): void {.cdecl,
      importc: "ClearBackground".}
else:
  static :
    hint("Declaration of " & "ClearBackground" &
        " already exists, not redeclaring")
when not declared(BeginDrawing):
  proc BeginDrawing*(): void {.cdecl, importc: "BeginDrawing".}
else:
  static :
    hint("Declaration of " & "BeginDrawing" & " already exists, not redeclaring")
when not declared(EndDrawing):
  proc EndDrawing*(): void {.cdecl, importc: "EndDrawing".}
else:
  static :
    hint("Declaration of " & "EndDrawing" & " already exists, not redeclaring")
when not declared(BeginMode2D):
  proc BeginMode2D*(camera: Camera2D_520094212): void {.cdecl,
      importc: "BeginMode2D".}
else:
  static :
    hint("Declaration of " & "BeginMode2D" & " already exists, not redeclaring")
when not declared(EndMode2D):
  proc EndMode2D*(): void {.cdecl, importc: "EndMode2D".}
else:
  static :
    hint("Declaration of " & "EndMode2D" & " already exists, not redeclaring")
when not declared(BeginMode3D):
  proc BeginMode3D*(camera: Camera3D_520094206): void {.cdecl,
      importc: "BeginMode3D".}
else:
  static :
    hint("Declaration of " & "BeginMode3D" & " already exists, not redeclaring")
when not declared(EndMode3D):
  proc EndMode3D*(): void {.cdecl, importc: "EndMode3D".}
else:
  static :
    hint("Declaration of " & "EndMode3D" & " already exists, not redeclaring")
when not declared(BeginTextureMode):
  proc BeginTextureMode*(target: RenderTexture2D_520094183): void {.cdecl,
      importc: "BeginTextureMode".}
else:
  static :
    hint("Declaration of " & "BeginTextureMode" &
        " already exists, not redeclaring")
when not declared(EndTextureMode):
  proc EndTextureMode*(): void {.cdecl, importc: "EndTextureMode".}
else:
  static :
    hint("Declaration of " & "EndTextureMode" &
        " already exists, not redeclaring")
when not declared(BeginShaderMode):
  proc BeginShaderMode*(shader: Shader_520094220): void {.cdecl,
      importc: "BeginShaderMode".}
else:
  static :
    hint("Declaration of " & "BeginShaderMode" &
        " already exists, not redeclaring")
when not declared(EndShaderMode):
  proc EndShaderMode*(): void {.cdecl, importc: "EndShaderMode".}
else:
  static :
    hint("Declaration of " & "EndShaderMode" &
        " already exists, not redeclaring")
when not declared(BeginBlendMode):
  proc BeginBlendMode*(mode: cint): void {.cdecl, importc: "BeginBlendMode".}
else:
  static :
    hint("Declaration of " & "BeginBlendMode" &
        " already exists, not redeclaring")
when not declared(EndBlendMode):
  proc EndBlendMode*(): void {.cdecl, importc: "EndBlendMode".}
else:
  static :
    hint("Declaration of " & "EndBlendMode" & " already exists, not redeclaring")
when not declared(BeginScissorMode):
  proc BeginScissorMode*(x: cint; y: cint; width: cint; height: cint): void {.
      cdecl, importc: "BeginScissorMode".}
else:
  static :
    hint("Declaration of " & "BeginScissorMode" &
        " already exists, not redeclaring")
when not declared(EndScissorMode):
  proc EndScissorMode*(): void {.cdecl, importc: "EndScissorMode".}
else:
  static :
    hint("Declaration of " & "EndScissorMode" &
        " already exists, not redeclaring")
when not declared(BeginVrStereoMode):
  proc BeginVrStereoMode*(config: VrStereoConfig_520094284): void {.cdecl,
      importc: "BeginVrStereoMode".}
else:
  static :
    hint("Declaration of " & "BeginVrStereoMode" &
        " already exists, not redeclaring")
when not declared(EndVrStereoMode):
  proc EndVrStereoMode*(): void {.cdecl, importc: "EndVrStereoMode".}
else:
  static :
    hint("Declaration of " & "EndVrStereoMode" &
        " already exists, not redeclaring")
when not declared(LoadVrStereoConfig):
  proc LoadVrStereoConfig*(device: VrDeviceInfo_520094280): VrStereoConfig_520094284 {.
      cdecl, importc: "LoadVrStereoConfig".}
else:
  static :
    hint("Declaration of " & "LoadVrStereoConfig" &
        " already exists, not redeclaring")
when not declared(UnloadVrStereoConfig):
  proc UnloadVrStereoConfig*(config: VrStereoConfig_520094284): void {.cdecl,
      importc: "UnloadVrStereoConfig".}
else:
  static :
    hint("Declaration of " & "UnloadVrStereoConfig" &
        " already exists, not redeclaring")
when not declared(LoadShader):
  proc LoadShader*(vsFileName: cstring; fsFileName: cstring): Shader_520094220 {.
      cdecl, importc: "LoadShader".}
else:
  static :
    hint("Declaration of " & "LoadShader" & " already exists, not redeclaring")
when not declared(LoadShaderFromMemory):
  proc LoadShaderFromMemory*(vsCode: cstring; fsCode: cstring): Shader_520094220 {.
      cdecl, importc: "LoadShaderFromMemory".}
else:
  static :
    hint("Declaration of " & "LoadShaderFromMemory" &
        " already exists, not redeclaring")
when not declared(IsShaderReady):
  proc IsShaderReady*(shader: Shader_520094220): bool {.cdecl,
      importc: "IsShaderReady".}
else:
  static :
    hint("Declaration of " & "IsShaderReady" &
        " already exists, not redeclaring")
when not declared(GetShaderLocation):
  proc GetShaderLocation*(shader: Shader_520094220; uniformName: cstring): cint {.
      cdecl, importc: "GetShaderLocation".}
else:
  static :
    hint("Declaration of " & "GetShaderLocation" &
        " already exists, not redeclaring")
when not declared(GetShaderLocationAttrib):
  proc GetShaderLocationAttrib*(shader: Shader_520094220; attribName: cstring): cint {.
      cdecl, importc: "GetShaderLocationAttrib".}
else:
  static :
    hint("Declaration of " & "GetShaderLocationAttrib" &
        " already exists, not redeclaring")
when not declared(SetShaderValue):
  proc SetShaderValue*(shader: Shader_520094220; locIndex: cint; value: pointer;
                       uniformType: cint): void {.cdecl,
      importc: "SetShaderValue".}
else:
  static :
    hint("Declaration of " & "SetShaderValue" &
        " already exists, not redeclaring")
when not declared(SetShaderValueV):
  proc SetShaderValueV*(shader: Shader_520094220; locIndex: cint;
                        value: pointer; uniformType: cint; count: cint): void {.
      cdecl, importc: "SetShaderValueV".}
else:
  static :
    hint("Declaration of " & "SetShaderValueV" &
        " already exists, not redeclaring")
when not declared(SetShaderValueMatrix):
  proc SetShaderValueMatrix*(shader: Shader_520094220; locIndex: cint;
                             mat: Matrix_520094157): void {.cdecl,
      importc: "SetShaderValueMatrix".}
else:
  static :
    hint("Declaration of " & "SetShaderValueMatrix" &
        " already exists, not redeclaring")
when not declared(SetShaderValueTexture):
  proc SetShaderValueTexture*(shader: Shader_520094220; locIndex: cint;
                              texture: Texture2D_520094175): void {.cdecl,
      importc: "SetShaderValueTexture".}
else:
  static :
    hint("Declaration of " & "SetShaderValueTexture" &
        " already exists, not redeclaring")
when not declared(UnloadShader):
  proc UnloadShader*(shader: Shader_520094220): void {.cdecl,
      importc: "UnloadShader".}
else:
  static :
    hint("Declaration of " & "UnloadShader" & " already exists, not redeclaring")
when not declared(GetMouseRay):
  proc GetMouseRay*(mousePosition: Vector2_520094143; camera: Camera_520094208): Ray_520094248 {.
      cdecl, importc: "GetMouseRay".}
else:
  static :
    hint("Declaration of " & "GetMouseRay" & " already exists, not redeclaring")
when not declared(GetViewRay):
  proc GetViewRay*(mousePosition: Vector2_520094143; camera: Camera_520094208;
                   width: cfloat; height: cfloat): Ray_520094248 {.cdecl,
      importc: "GetViewRay".}
else:
  static :
    hint("Declaration of " & "GetViewRay" & " already exists, not redeclaring")
when not declared(GetWorldToScreen):
  proc GetWorldToScreen*(position: Vector3_520094147; camera: Camera_520094208): Vector2_520094143 {.
      cdecl, importc: "GetWorldToScreen".}
else:
  static :
    hint("Declaration of " & "GetWorldToScreen" &
        " already exists, not redeclaring")
when not declared(GetWorldToScreenEx):
  proc GetWorldToScreenEx*(position: Vector3_520094147; camera: Camera_520094208;
                           width: cint; height: cint): Vector2_520094143 {.
      cdecl, importc: "GetWorldToScreenEx".}
else:
  static :
    hint("Declaration of " & "GetWorldToScreenEx" &
        " already exists, not redeclaring")
when not declared(GetWorldToScreen2D):
  proc GetWorldToScreen2D*(position: Vector2_520094143; camera: Camera2D_520094212): Vector2_520094143 {.
      cdecl, importc: "GetWorldToScreen2D".}
else:
  static :
    hint("Declaration of " & "GetWorldToScreen2D" &
        " already exists, not redeclaring")
when not declared(GetScreenToWorld2D):
  proc GetScreenToWorld2D*(position: Vector2_520094143; camera: Camera2D_520094212): Vector2_520094143 {.
      cdecl, importc: "GetScreenToWorld2D".}
else:
  static :
    hint("Declaration of " & "GetScreenToWorld2D" &
        " already exists, not redeclaring")
when not declared(GetCameraMatrix):
  proc GetCameraMatrix*(camera: Camera_520094208): Matrix_520094157 {.cdecl,
      importc: "GetCameraMatrix".}
else:
  static :
    hint("Declaration of " & "GetCameraMatrix" &
        " already exists, not redeclaring")
when not declared(GetCameraMatrix2D):
  proc GetCameraMatrix2D*(camera: Camera2D_520094212): Matrix_520094157 {.cdecl,
      importc: "GetCameraMatrix2D".}
else:
  static :
    hint("Declaration of " & "GetCameraMatrix2D" &
        " already exists, not redeclaring")
when not declared(SetTargetFPS):
  proc SetTargetFPS*(fps: cint): void {.cdecl, importc: "SetTargetFPS".}
else:
  static :
    hint("Declaration of " & "SetTargetFPS" & " already exists, not redeclaring")
when not declared(GetFrameTime):
  proc GetFrameTime*(): cfloat {.cdecl, importc: "GetFrameTime".}
else:
  static :
    hint("Declaration of " & "GetFrameTime" & " already exists, not redeclaring")
when not declared(GetTime):
  proc GetTime*(): cdouble {.cdecl, importc: "GetTime".}
else:
  static :
    hint("Declaration of " & "GetTime" & " already exists, not redeclaring")
when not declared(GetFPS):
  proc GetFPS*(): cint {.cdecl, importc: "GetFPS".}
else:
  static :
    hint("Declaration of " & "GetFPS" & " already exists, not redeclaring")
when not declared(SwapScreenBuffer):
  proc SwapScreenBuffer*(): void {.cdecl, importc: "SwapScreenBuffer".}
else:
  static :
    hint("Declaration of " & "SwapScreenBuffer" &
        " already exists, not redeclaring")
when not declared(PollInputEvents):
  proc PollInputEvents*(): void {.cdecl, importc: "PollInputEvents".}
else:
  static :
    hint("Declaration of " & "PollInputEvents" &
        " already exists, not redeclaring")
when not declared(WaitTime):
  proc WaitTime*(seconds: cdouble): void {.cdecl, importc: "WaitTime".}
else:
  static :
    hint("Declaration of " & "WaitTime" & " already exists, not redeclaring")
when not declared(SetRandomSeed):
  proc SetRandomSeed*(seed: cuint): void {.cdecl, importc: "SetRandomSeed".}
else:
  static :
    hint("Declaration of " & "SetRandomSeed" &
        " already exists, not redeclaring")
when not declared(GetRandomValue):
  proc GetRandomValue*(min: cint; max: cint): cint {.cdecl,
      importc: "GetRandomValue".}
else:
  static :
    hint("Declaration of " & "GetRandomValue" &
        " already exists, not redeclaring")
when not declared(LoadRandomSequence):
  proc LoadRandomSequence*(count: cuint; min: cint; max: cint): ptr cint {.
      cdecl, importc: "LoadRandomSequence".}
else:
  static :
    hint("Declaration of " & "LoadRandomSequence" &
        " already exists, not redeclaring")
when not declared(UnloadRandomSequence):
  proc UnloadRandomSequence*(sequence: ptr cint): void {.cdecl,
      importc: "UnloadRandomSequence".}
else:
  static :
    hint("Declaration of " & "UnloadRandomSequence" &
        " already exists, not redeclaring")
when not declared(TakeScreenshot):
  proc TakeScreenshot*(fileName: cstring): void {.cdecl,
      importc: "TakeScreenshot".}
else:
  static :
    hint("Declaration of " & "TakeScreenshot" &
        " already exists, not redeclaring")
when not declared(SetConfigFlags):
  proc SetConfigFlags*(flags: cuint): void {.cdecl, importc: "SetConfigFlags".}
else:
  static :
    hint("Declaration of " & "SetConfigFlags" &
        " already exists, not redeclaring")
when not declared(OpenURL):
  proc OpenURL*(url: cstring): void {.cdecl, importc: "OpenURL".}
else:
  static :
    hint("Declaration of " & "OpenURL" & " already exists, not redeclaring")
when not declared(TraceLog):
  proc TraceLog*(logLevel: cint; text: cstring): void {.cdecl, varargs,
      importc: "TraceLog".}
else:
  static :
    hint("Declaration of " & "TraceLog" & " already exists, not redeclaring")
when not declared(SetTraceLogLevel):
  proc SetTraceLogLevel*(logLevel: cint): void {.cdecl,
      importc: "SetTraceLogLevel".}
else:
  static :
    hint("Declaration of " & "SetTraceLogLevel" &
        " already exists, not redeclaring")
when not declared(MemAlloc):
  proc MemAlloc*(size: cuint): pointer {.cdecl, importc: "MemAlloc".}
else:
  static :
    hint("Declaration of " & "MemAlloc" & " already exists, not redeclaring")
when not declared(MemRealloc):
  proc MemRealloc*(ptr_arg: pointer; size: cuint): pointer {.cdecl,
      importc: "MemRealloc".}
else:
  static :
    hint("Declaration of " & "MemRealloc" & " already exists, not redeclaring")
when not declared(MemFree):
  proc MemFree*(ptr_arg: pointer): void {.cdecl, importc: "MemFree".}
else:
  static :
    hint("Declaration of " & "MemFree" & " already exists, not redeclaring")
when not declared(SetTraceLogCallback):
  proc SetTraceLogCallback*(callback: TraceLogCallback_520094382): void {.cdecl,
      importc: "SetTraceLogCallback".}
else:
  static :
    hint("Declaration of " & "SetTraceLogCallback" &
        " already exists, not redeclaring")
when not declared(SetLoadFileDataCallback):
  proc SetLoadFileDataCallback*(callback: LoadFileDataCallback_520094384): void {.
      cdecl, importc: "SetLoadFileDataCallback".}
else:
  static :
    hint("Declaration of " & "SetLoadFileDataCallback" &
        " already exists, not redeclaring")
when not declared(SetSaveFileDataCallback):
  proc SetSaveFileDataCallback*(callback: SaveFileDataCallback_520094386): void {.
      cdecl, importc: "SetSaveFileDataCallback".}
else:
  static :
    hint("Declaration of " & "SetSaveFileDataCallback" &
        " already exists, not redeclaring")
when not declared(SetLoadFileTextCallback):
  proc SetLoadFileTextCallback*(callback: LoadFileTextCallback_520094388): void {.
      cdecl, importc: "SetLoadFileTextCallback".}
else:
  static :
    hint("Declaration of " & "SetLoadFileTextCallback" &
        " already exists, not redeclaring")
when not declared(SetSaveFileTextCallback):
  proc SetSaveFileTextCallback*(callback: SaveFileTextCallback_520094390): void {.
      cdecl, importc: "SetSaveFileTextCallback".}
else:
  static :
    hint("Declaration of " & "SetSaveFileTextCallback" &
        " already exists, not redeclaring")
when not declared(LoadFileData):
  proc LoadFileData*(fileName: cstring; dataSize: ptr cint): ptr uint8 {.cdecl,
      importc: "LoadFileData".}
else:
  static :
    hint("Declaration of " & "LoadFileData" & " already exists, not redeclaring")
when not declared(UnloadFileData):
  proc UnloadFileData*(data: ptr uint8): void {.cdecl, importc: "UnloadFileData".}
else:
  static :
    hint("Declaration of " & "UnloadFileData" &
        " already exists, not redeclaring")
when not declared(SaveFileData):
  proc SaveFileData*(fileName: cstring; data: pointer; dataSize: cint): bool {.
      cdecl, importc: "SaveFileData".}
else:
  static :
    hint("Declaration of " & "SaveFileData" & " already exists, not redeclaring")
when not declared(ExportDataAsCode):
  proc ExportDataAsCode*(data: ptr uint8; dataSize: cint; fileName: cstring): bool {.
      cdecl, importc: "ExportDataAsCode".}
else:
  static :
    hint("Declaration of " & "ExportDataAsCode" &
        " already exists, not redeclaring")
when not declared(LoadFileText):
  proc LoadFileText*(fileName: cstring): cstring {.cdecl,
      importc: "LoadFileText".}
else:
  static :
    hint("Declaration of " & "LoadFileText" & " already exists, not redeclaring")
when not declared(UnloadFileText):
  proc UnloadFileText*(text: cstring): void {.cdecl, importc: "UnloadFileText".}
else:
  static :
    hint("Declaration of " & "UnloadFileText" &
        " already exists, not redeclaring")
when not declared(SaveFileText):
  proc SaveFileText*(fileName: cstring; text: cstring): bool {.cdecl,
      importc: "SaveFileText".}
else:
  static :
    hint("Declaration of " & "SaveFileText" & " already exists, not redeclaring")
when not declared(FileExists):
  proc FileExists*(fileName: cstring): bool {.cdecl, importc: "FileExists".}
else:
  static :
    hint("Declaration of " & "FileExists" & " already exists, not redeclaring")
when not declared(DirectoryExists):
  proc DirectoryExists*(dirPath: cstring): bool {.cdecl,
      importc: "DirectoryExists".}
else:
  static :
    hint("Declaration of " & "DirectoryExists" &
        " already exists, not redeclaring")
when not declared(IsFileExtension):
  proc IsFileExtension*(fileName: cstring; ext: cstring): bool {.cdecl,
      importc: "IsFileExtension".}
else:
  static :
    hint("Declaration of " & "IsFileExtension" &
        " already exists, not redeclaring")
when not declared(GetFileLength):
  proc GetFileLength*(fileName: cstring): cint {.cdecl, importc: "GetFileLength".}
else:
  static :
    hint("Declaration of " & "GetFileLength" &
        " already exists, not redeclaring")
when not declared(GetFileExtension):
  proc GetFileExtension*(fileName: cstring): cstring {.cdecl,
      importc: "GetFileExtension".}
else:
  static :
    hint("Declaration of " & "GetFileExtension" &
        " already exists, not redeclaring")
when not declared(GetFileName):
  proc GetFileName*(filePath: cstring): cstring {.cdecl, importc: "GetFileName".}
else:
  static :
    hint("Declaration of " & "GetFileName" & " already exists, not redeclaring")
when not declared(GetFileNameWithoutExt):
  proc GetFileNameWithoutExt*(filePath: cstring): cstring {.cdecl,
      importc: "GetFileNameWithoutExt".}
else:
  static :
    hint("Declaration of " & "GetFileNameWithoutExt" &
        " already exists, not redeclaring")
when not declared(GetDirectoryPath):
  proc GetDirectoryPath*(filePath: cstring): cstring {.cdecl,
      importc: "GetDirectoryPath".}
else:
  static :
    hint("Declaration of " & "GetDirectoryPath" &
        " already exists, not redeclaring")
when not declared(GetPrevDirectoryPath):
  proc GetPrevDirectoryPath*(dirPath: cstring): cstring {.cdecl,
      importc: "GetPrevDirectoryPath".}
else:
  static :
    hint("Declaration of " & "GetPrevDirectoryPath" &
        " already exists, not redeclaring")
when not declared(GetWorkingDirectory):
  proc GetWorkingDirectory*(): cstring {.cdecl, importc: "GetWorkingDirectory".}
else:
  static :
    hint("Declaration of " & "GetWorkingDirectory" &
        " already exists, not redeclaring")
when not declared(GetApplicationDirectory):
  proc GetApplicationDirectory*(): cstring {.cdecl,
      importc: "GetApplicationDirectory".}
else:
  static :
    hint("Declaration of " & "GetApplicationDirectory" &
        " already exists, not redeclaring")
when not declared(ChangeDirectory):
  proc ChangeDirectory*(dir: cstring): bool {.cdecl, importc: "ChangeDirectory".}
else:
  static :
    hint("Declaration of " & "ChangeDirectory" &
        " already exists, not redeclaring")
when not declared(IsPathFile):
  proc IsPathFile*(path: cstring): bool {.cdecl, importc: "IsPathFile".}
else:
  static :
    hint("Declaration of " & "IsPathFile" & " already exists, not redeclaring")
when not declared(LoadDirectoryFiles):
  proc LoadDirectoryFiles*(dirPath: cstring): FilePathList_520094288 {.cdecl,
      importc: "LoadDirectoryFiles".}
else:
  static :
    hint("Declaration of " & "LoadDirectoryFiles" &
        " already exists, not redeclaring")
when not declared(LoadDirectoryFilesEx):
  proc LoadDirectoryFilesEx*(basePath: cstring; filter: cstring;
                             scanSubdirs: bool): FilePathList_520094288 {.cdecl,
      importc: "LoadDirectoryFilesEx".}
else:
  static :
    hint("Declaration of " & "LoadDirectoryFilesEx" &
        " already exists, not redeclaring")
when not declared(UnloadDirectoryFiles):
  proc UnloadDirectoryFiles*(files: FilePathList_520094288): void {.cdecl,
      importc: "UnloadDirectoryFiles".}
else:
  static :
    hint("Declaration of " & "UnloadDirectoryFiles" &
        " already exists, not redeclaring")
when not declared(IsFileDropped):
  proc IsFileDropped*(): bool {.cdecl, importc: "IsFileDropped".}
else:
  static :
    hint("Declaration of " & "IsFileDropped" &
        " already exists, not redeclaring")
when not declared(LoadDroppedFiles):
  proc LoadDroppedFiles*(): FilePathList_520094288 {.cdecl,
      importc: "LoadDroppedFiles".}
else:
  static :
    hint("Declaration of " & "LoadDroppedFiles" &
        " already exists, not redeclaring")
when not declared(UnloadDroppedFiles):
  proc UnloadDroppedFiles*(files: FilePathList_520094288): void {.cdecl,
      importc: "UnloadDroppedFiles".}
else:
  static :
    hint("Declaration of " & "UnloadDroppedFiles" &
        " already exists, not redeclaring")
when not declared(GetFileModTime):
  proc GetFileModTime*(fileName: cstring): clong {.cdecl,
      importc: "GetFileModTime".}
else:
  static :
    hint("Declaration of " & "GetFileModTime" &
        " already exists, not redeclaring")
when not declared(CompressData):
  proc CompressData*(data: ptr uint8; dataSize: cint; compDataSize: ptr cint): ptr uint8 {.
      cdecl, importc: "CompressData".}
else:
  static :
    hint("Declaration of " & "CompressData" & " already exists, not redeclaring")
when not declared(DecompressData):
  proc DecompressData*(compData: ptr uint8; compDataSize: cint;
                       dataSize: ptr cint): ptr uint8 {.cdecl,
      importc: "DecompressData".}
else:
  static :
    hint("Declaration of " & "DecompressData" &
        " already exists, not redeclaring")
when not declared(EncodeDataBase64):
  proc EncodeDataBase64*(data: ptr uint8; dataSize: cint; outputSize: ptr cint): cstring {.
      cdecl, importc: "EncodeDataBase64".}
else:
  static :
    hint("Declaration of " & "EncodeDataBase64" &
        " already exists, not redeclaring")
when not declared(DecodeDataBase64):
  proc DecodeDataBase64*(data: ptr uint8; outputSize: ptr cint): ptr uint8 {.
      cdecl, importc: "DecodeDataBase64".}
else:
  static :
    hint("Declaration of " & "DecodeDataBase64" &
        " already exists, not redeclaring")
when not declared(LoadAutomationEventList):
  proc LoadAutomationEventList*(fileName: cstring): AutomationEventList_520094296 {.
      cdecl, importc: "LoadAutomationEventList".}
else:
  static :
    hint("Declaration of " & "LoadAutomationEventList" &
        " already exists, not redeclaring")
when not declared(UnloadAutomationEventList):
  proc UnloadAutomationEventList*(list: AutomationEventList_520094296): void {.
      cdecl, importc: "UnloadAutomationEventList".}
else:
  static :
    hint("Declaration of " & "UnloadAutomationEventList" &
        " already exists, not redeclaring")
when not declared(ExportAutomationEventList):
  proc ExportAutomationEventList*(list: AutomationEventList_520094296;
                                  fileName: cstring): bool {.cdecl,
      importc: "ExportAutomationEventList".}
else:
  static :
    hint("Declaration of " & "ExportAutomationEventList" &
        " already exists, not redeclaring")
when not declared(SetAutomationEventList):
  proc SetAutomationEventList*(list: ptr AutomationEventList_520094296): void {.
      cdecl, importc: "SetAutomationEventList".}
else:
  static :
    hint("Declaration of " & "SetAutomationEventList" &
        " already exists, not redeclaring")
when not declared(SetAutomationEventBaseFrame):
  proc SetAutomationEventBaseFrame*(frame: cint): void {.cdecl,
      importc: "SetAutomationEventBaseFrame".}
else:
  static :
    hint("Declaration of " & "SetAutomationEventBaseFrame" &
        " already exists, not redeclaring")
when not declared(StartAutomationEventRecording):
  proc StartAutomationEventRecording*(): void {.cdecl,
      importc: "StartAutomationEventRecording".}
else:
  static :
    hint("Declaration of " & "StartAutomationEventRecording" &
        " already exists, not redeclaring")
when not declared(StopAutomationEventRecording):
  proc StopAutomationEventRecording*(): void {.cdecl,
      importc: "StopAutomationEventRecording".}
else:
  static :
    hint("Declaration of " & "StopAutomationEventRecording" &
        " already exists, not redeclaring")
when not declared(PlayAutomationEvent):
  proc PlayAutomationEvent*(event: AutomationEvent_520094292): void {.cdecl,
      importc: "PlayAutomationEvent".}
else:
  static :
    hint("Declaration of " & "PlayAutomationEvent" &
        " already exists, not redeclaring")
when not declared(IsKeyPressed):
  proc IsKeyPressed*(key: cint): bool {.cdecl, importc: "IsKeyPressed".}
else:
  static :
    hint("Declaration of " & "IsKeyPressed" & " already exists, not redeclaring")
when not declared(IsKeyPressedRepeat):
  proc IsKeyPressedRepeat*(key: cint): bool {.cdecl,
      importc: "IsKeyPressedRepeat".}
else:
  static :
    hint("Declaration of " & "IsKeyPressedRepeat" &
        " already exists, not redeclaring")
when not declared(IsKeyDown):
  proc IsKeyDown*(key: cint): bool {.cdecl, importc: "IsKeyDown".}
else:
  static :
    hint("Declaration of " & "IsKeyDown" & " already exists, not redeclaring")
when not declared(IsKeyReleased):
  proc IsKeyReleased*(key: cint): bool {.cdecl, importc: "IsKeyReleased".}
else:
  static :
    hint("Declaration of " & "IsKeyReleased" &
        " already exists, not redeclaring")
when not declared(IsKeyUp):
  proc IsKeyUp*(key: cint): bool {.cdecl, importc: "IsKeyUp".}
else:
  static :
    hint("Declaration of " & "IsKeyUp" & " already exists, not redeclaring")
when not declared(GetKeyPressed):
  proc GetKeyPressed*(): cint {.cdecl, importc: "GetKeyPressed".}
else:
  static :
    hint("Declaration of " & "GetKeyPressed" &
        " already exists, not redeclaring")
when not declared(GetCharPressed):
  proc GetCharPressed*(): cint {.cdecl, importc: "GetCharPressed".}
else:
  static :
    hint("Declaration of " & "GetCharPressed" &
        " already exists, not redeclaring")
when not declared(SetExitKey):
  proc SetExitKey*(key: cint): void {.cdecl, importc: "SetExitKey".}
else:
  static :
    hint("Declaration of " & "SetExitKey" & " already exists, not redeclaring")
when not declared(IsGamepadAvailable):
  proc IsGamepadAvailable*(gamepad: cint): bool {.cdecl,
      importc: "IsGamepadAvailable".}
else:
  static :
    hint("Declaration of " & "IsGamepadAvailable" &
        " already exists, not redeclaring")
when not declared(GetGamepadName):
  proc GetGamepadName*(gamepad: cint): cstring {.cdecl,
      importc: "GetGamepadName".}
else:
  static :
    hint("Declaration of " & "GetGamepadName" &
        " already exists, not redeclaring")
when not declared(IsGamepadButtonPressed):
  proc IsGamepadButtonPressed*(gamepad: cint; button: cint): bool {.cdecl,
      importc: "IsGamepadButtonPressed".}
else:
  static :
    hint("Declaration of " & "IsGamepadButtonPressed" &
        " already exists, not redeclaring")
when not declared(IsGamepadButtonDown):
  proc IsGamepadButtonDown*(gamepad: cint; button: cint): bool {.cdecl,
      importc: "IsGamepadButtonDown".}
else:
  static :
    hint("Declaration of " & "IsGamepadButtonDown" &
        " already exists, not redeclaring")
when not declared(IsGamepadButtonReleased):
  proc IsGamepadButtonReleased*(gamepad: cint; button: cint): bool {.cdecl,
      importc: "IsGamepadButtonReleased".}
else:
  static :
    hint("Declaration of " & "IsGamepadButtonReleased" &
        " already exists, not redeclaring")
when not declared(IsGamepadButtonUp):
  proc IsGamepadButtonUp*(gamepad: cint; button: cint): bool {.cdecl,
      importc: "IsGamepadButtonUp".}
else:
  static :
    hint("Declaration of " & "IsGamepadButtonUp" &
        " already exists, not redeclaring")
when not declared(GetGamepadButtonPressed):
  proc GetGamepadButtonPressed*(): cint {.cdecl,
      importc: "GetGamepadButtonPressed".}
else:
  static :
    hint("Declaration of " & "GetGamepadButtonPressed" &
        " already exists, not redeclaring")
when not declared(GetGamepadAxisCount):
  proc GetGamepadAxisCount*(gamepad: cint): cint {.cdecl,
      importc: "GetGamepadAxisCount".}
else:
  static :
    hint("Declaration of " & "GetGamepadAxisCount" &
        " already exists, not redeclaring")
when not declared(GetGamepadAxisMovement):
  proc GetGamepadAxisMovement*(gamepad: cint; axis: cint): cfloat {.cdecl,
      importc: "GetGamepadAxisMovement".}
else:
  static :
    hint("Declaration of " & "GetGamepadAxisMovement" &
        " already exists, not redeclaring")
when not declared(SetGamepadMappings):
  proc SetGamepadMappings*(mappings: cstring): cint {.cdecl,
      importc: "SetGamepadMappings".}
else:
  static :
    hint("Declaration of " & "SetGamepadMappings" &
        " already exists, not redeclaring")
when not declared(IsMouseButtonPressed):
  proc IsMouseButtonPressed*(button: cint): bool {.cdecl,
      importc: "IsMouseButtonPressed".}
else:
  static :
    hint("Declaration of " & "IsMouseButtonPressed" &
        " already exists, not redeclaring")
when not declared(IsMouseButtonDown):
  proc IsMouseButtonDown*(button: cint): bool {.cdecl,
      importc: "IsMouseButtonDown".}
else:
  static :
    hint("Declaration of " & "IsMouseButtonDown" &
        " already exists, not redeclaring")
when not declared(IsMouseButtonReleased):
  proc IsMouseButtonReleased*(button: cint): bool {.cdecl,
      importc: "IsMouseButtonReleased".}
else:
  static :
    hint("Declaration of " & "IsMouseButtonReleased" &
        " already exists, not redeclaring")
when not declared(IsMouseButtonUp):
  proc IsMouseButtonUp*(button: cint): bool {.cdecl, importc: "IsMouseButtonUp".}
else:
  static :
    hint("Declaration of " & "IsMouseButtonUp" &
        " already exists, not redeclaring")
when not declared(GetMouseX):
  proc GetMouseX*(): cint {.cdecl, importc: "GetMouseX".}
else:
  static :
    hint("Declaration of " & "GetMouseX" & " already exists, not redeclaring")
when not declared(GetMouseY):
  proc GetMouseY*(): cint {.cdecl, importc: "GetMouseY".}
else:
  static :
    hint("Declaration of " & "GetMouseY" & " already exists, not redeclaring")
when not declared(GetMousePosition):
  proc GetMousePosition*(): Vector2_520094143 {.cdecl,
      importc: "GetMousePosition".}
else:
  static :
    hint("Declaration of " & "GetMousePosition" &
        " already exists, not redeclaring")
when not declared(GetMouseDelta):
  proc GetMouseDelta*(): Vector2_520094143 {.cdecl, importc: "GetMouseDelta".}
else:
  static :
    hint("Declaration of " & "GetMouseDelta" &
        " already exists, not redeclaring")
when not declared(SetMousePosition):
  proc SetMousePosition*(x: cint; y: cint): void {.cdecl,
      importc: "SetMousePosition".}
else:
  static :
    hint("Declaration of " & "SetMousePosition" &
        " already exists, not redeclaring")
when not declared(SetMouseOffset):
  proc SetMouseOffset*(offsetX: cint; offsetY: cint): void {.cdecl,
      importc: "SetMouseOffset".}
else:
  static :
    hint("Declaration of " & "SetMouseOffset" &
        " already exists, not redeclaring")
when not declared(SetMouseScale):
  proc SetMouseScale*(scaleX: cfloat; scaleY: cfloat): void {.cdecl,
      importc: "SetMouseScale".}
else:
  static :
    hint("Declaration of " & "SetMouseScale" &
        " already exists, not redeclaring")
when not declared(GetMouseWheelMove):
  proc GetMouseWheelMove*(): cfloat {.cdecl, importc: "GetMouseWheelMove".}
else:
  static :
    hint("Declaration of " & "GetMouseWheelMove" &
        " already exists, not redeclaring")
when not declared(GetMouseWheelMoveV):
  proc GetMouseWheelMoveV*(): Vector2_520094143 {.cdecl,
      importc: "GetMouseWheelMoveV".}
else:
  static :
    hint("Declaration of " & "GetMouseWheelMoveV" &
        " already exists, not redeclaring")
when not declared(SetMouseCursor):
  proc SetMouseCursor*(cursor: cint): void {.cdecl, importc: "SetMouseCursor".}
else:
  static :
    hint("Declaration of " & "SetMouseCursor" &
        " already exists, not redeclaring")
when not declared(GetTouchX):
  proc GetTouchX*(): cint {.cdecl, importc: "GetTouchX".}
else:
  static :
    hint("Declaration of " & "GetTouchX" & " already exists, not redeclaring")
when not declared(GetTouchY):
  proc GetTouchY*(): cint {.cdecl, importc: "GetTouchY".}
else:
  static :
    hint("Declaration of " & "GetTouchY" & " already exists, not redeclaring")
when not declared(GetTouchPosition):
  proc GetTouchPosition*(index: cint): Vector2_520094143 {.cdecl,
      importc: "GetTouchPosition".}
else:
  static :
    hint("Declaration of " & "GetTouchPosition" &
        " already exists, not redeclaring")
when not declared(GetTouchPointId):
  proc GetTouchPointId*(index: cint): cint {.cdecl, importc: "GetTouchPointId".}
else:
  static :
    hint("Declaration of " & "GetTouchPointId" &
        " already exists, not redeclaring")
when not declared(GetTouchPointCount):
  proc GetTouchPointCount*(): cint {.cdecl, importc: "GetTouchPointCount".}
else:
  static :
    hint("Declaration of " & "GetTouchPointCount" &
        " already exists, not redeclaring")
when not declared(SetGesturesEnabled):
  proc SetGesturesEnabled*(flags: cuint): void {.cdecl,
      importc: "SetGesturesEnabled".}
else:
  static :
    hint("Declaration of " & "SetGesturesEnabled" &
        " already exists, not redeclaring")
when not declared(IsGestureDetected):
  proc IsGestureDetected*(gesture: cuint): bool {.cdecl,
      importc: "IsGestureDetected".}
else:
  static :
    hint("Declaration of " & "IsGestureDetected" &
        " already exists, not redeclaring")
when not declared(GetGestureDetected):
  proc GetGestureDetected*(): cint {.cdecl, importc: "GetGestureDetected".}
else:
  static :
    hint("Declaration of " & "GetGestureDetected" &
        " already exists, not redeclaring")
when not declared(GetGestureHoldDuration):
  proc GetGestureHoldDuration*(): cfloat {.cdecl,
      importc: "GetGestureHoldDuration".}
else:
  static :
    hint("Declaration of " & "GetGestureHoldDuration" &
        " already exists, not redeclaring")
when not declared(GetGestureDragVector):
  proc GetGestureDragVector*(): Vector2_520094143 {.cdecl,
      importc: "GetGestureDragVector".}
else:
  static :
    hint("Declaration of " & "GetGestureDragVector" &
        " already exists, not redeclaring")
when not declared(GetGestureDragAngle):
  proc GetGestureDragAngle*(): cfloat {.cdecl, importc: "GetGestureDragAngle".}
else:
  static :
    hint("Declaration of " & "GetGestureDragAngle" &
        " already exists, not redeclaring")
when not declared(GetGesturePinchVector):
  proc GetGesturePinchVector*(): Vector2_520094143 {.cdecl,
      importc: "GetGesturePinchVector".}
else:
  static :
    hint("Declaration of " & "GetGesturePinchVector" &
        " already exists, not redeclaring")
when not declared(GetGesturePinchAngle):
  proc GetGesturePinchAngle*(): cfloat {.cdecl, importc: "GetGesturePinchAngle".}
else:
  static :
    hint("Declaration of " & "GetGesturePinchAngle" &
        " already exists, not redeclaring")
when not declared(UpdateCamera):
  proc UpdateCamera*(camera: ptr Camera_520094208; mode: cint): void {.cdecl,
      importc: "UpdateCamera".}
else:
  static :
    hint("Declaration of " & "UpdateCamera" & " already exists, not redeclaring")
when not declared(UpdateCameraPro):
  proc UpdateCameraPro*(camera: ptr Camera_520094208; movement: Vector3_520094147;
                        rotation: Vector3_520094147; zoom: cfloat): void {.
      cdecl, importc: "UpdateCameraPro".}
else:
  static :
    hint("Declaration of " & "UpdateCameraPro" &
        " already exists, not redeclaring")
when not declared(SetShapesTexture):
  proc SetShapesTexture*(texture: Texture2D_520094175; source: Rectangle_520094165): void {.
      cdecl, importc: "SetShapesTexture".}
else:
  static :
    hint("Declaration of " & "SetShapesTexture" &
        " already exists, not redeclaring")
when not declared(GetShapesTexture):
  proc GetShapesTexture*(): Texture2D_520094175 {.cdecl,
      importc: "GetShapesTexture".}
else:
  static :
    hint("Declaration of " & "GetShapesTexture" &
        " already exists, not redeclaring")
when not declared(GetShapesTextureRectangle):
  proc GetShapesTextureRectangle*(): Rectangle_520094165 {.cdecl,
      importc: "GetShapesTextureRectangle".}
else:
  static :
    hint("Declaration of " & "GetShapesTextureRectangle" &
        " already exists, not redeclaring")
when not declared(DrawPixel):
  proc DrawPixel*(posX: cint; posY: cint; color: Color_520094161): void {.cdecl,
      importc: "DrawPixel".}
else:
  static :
    hint("Declaration of " & "DrawPixel" & " already exists, not redeclaring")
when not declared(DrawPixelV):
  proc DrawPixelV*(position: Vector2_520094143; color: Color_520094161): void {.
      cdecl, importc: "DrawPixelV".}
else:
  static :
    hint("Declaration of " & "DrawPixelV" & " already exists, not redeclaring")
when not declared(DrawLine):
  proc DrawLine*(startPosX: cint; startPosY: cint; endPosX: cint; endPosY: cint;
                 color: Color_520094161): void {.cdecl, importc: "DrawLine".}
else:
  static :
    hint("Declaration of " & "DrawLine" & " already exists, not redeclaring")
when not declared(DrawLineV):
  proc DrawLineV*(startPos: Vector2_520094143; endPos: Vector2_520094143;
                  color: Color_520094161): void {.cdecl, importc: "DrawLineV".}
else:
  static :
    hint("Declaration of " & "DrawLineV" & " already exists, not redeclaring")
when not declared(DrawLineEx):
  proc DrawLineEx*(startPos: Vector2_520094143; endPos: Vector2_520094143;
                   thick: cfloat; color: Color_520094161): void {.cdecl,
      importc: "DrawLineEx".}
else:
  static :
    hint("Declaration of " & "DrawLineEx" & " already exists, not redeclaring")
when not declared(DrawLineStrip):
  proc DrawLineStrip*(points: ptr Vector2_520094143; pointCount: cint;
                      color: Color_520094161): void {.cdecl,
      importc: "DrawLineStrip".}
else:
  static :
    hint("Declaration of " & "DrawLineStrip" &
        " already exists, not redeclaring")
when not declared(DrawLineBezier):
  proc DrawLineBezier*(startPos: Vector2_520094143; endPos: Vector2_520094143;
                       thick: cfloat; color: Color_520094161): void {.cdecl,
      importc: "DrawLineBezier".}
else:
  static :
    hint("Declaration of " & "DrawLineBezier" &
        " already exists, not redeclaring")
when not declared(DrawCircle):
  proc DrawCircle*(centerX: cint; centerY: cint; radius: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawCircle".}
else:
  static :
    hint("Declaration of " & "DrawCircle" & " already exists, not redeclaring")
when not declared(DrawCircleSector):
  proc DrawCircleSector*(center: Vector2_520094143; radius: cfloat;
                         startAngle: cfloat; endAngle: cfloat; segments: cint;
                         color: Color_520094161): void {.cdecl,
      importc: "DrawCircleSector".}
else:
  static :
    hint("Declaration of " & "DrawCircleSector" &
        " already exists, not redeclaring")
when not declared(DrawCircleSectorLines):
  proc DrawCircleSectorLines*(center: Vector2_520094143; radius: cfloat;
                              startAngle: cfloat; endAngle: cfloat;
                              segments: cint; color: Color_520094161): void {.
      cdecl, importc: "DrawCircleSectorLines".}
else:
  static :
    hint("Declaration of " & "DrawCircleSectorLines" &
        " already exists, not redeclaring")
when not declared(DrawCircleGradient):
  proc DrawCircleGradient*(centerX: cint; centerY: cint; radius: cfloat;
                           color1: Color_520094161; color2: Color_520094161): void {.
      cdecl, importc: "DrawCircleGradient".}
else:
  static :
    hint("Declaration of " & "DrawCircleGradient" &
        " already exists, not redeclaring")
when not declared(DrawCircleV):
  proc DrawCircleV*(center: Vector2_520094143; radius: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawCircleV".}
else:
  static :
    hint("Declaration of " & "DrawCircleV" & " already exists, not redeclaring")
when not declared(DrawCircleLines):
  proc DrawCircleLines*(centerX: cint; centerY: cint; radius: cfloat;
                        color: Color_520094161): void {.cdecl,
      importc: "DrawCircleLines".}
else:
  static :
    hint("Declaration of " & "DrawCircleLines" &
        " already exists, not redeclaring")
when not declared(DrawCircleLinesV):
  proc DrawCircleLinesV*(center: Vector2_520094143; radius: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawCircleLinesV".}
else:
  static :
    hint("Declaration of " & "DrawCircleLinesV" &
        " already exists, not redeclaring")
when not declared(DrawEllipse):
  proc DrawEllipse*(centerX: cint; centerY: cint; radiusH: cfloat;
                    radiusV: cfloat; color: Color_520094161): void {.cdecl,
      importc: "DrawEllipse".}
else:
  static :
    hint("Declaration of " & "DrawEllipse" & " already exists, not redeclaring")
when not declared(DrawEllipseLines):
  proc DrawEllipseLines*(centerX: cint; centerY: cint; radiusH: cfloat;
                         radiusV: cfloat; color: Color_520094161): void {.cdecl,
      importc: "DrawEllipseLines".}
else:
  static :
    hint("Declaration of " & "DrawEllipseLines" &
        " already exists, not redeclaring")
when not declared(DrawRing):
  proc DrawRing*(center: Vector2_520094143; innerRadius: cfloat;
                 outerRadius: cfloat; startAngle: cfloat; endAngle: cfloat;
                 segments: cint; color: Color_520094161): void {.cdecl,
      importc: "DrawRing".}
else:
  static :
    hint("Declaration of " & "DrawRing" & " already exists, not redeclaring")
when not declared(DrawRingLines):
  proc DrawRingLines*(center: Vector2_520094143; innerRadius: cfloat;
                      outerRadius: cfloat; startAngle: cfloat; endAngle: cfloat;
                      segments: cint; color: Color_520094161): void {.cdecl,
      importc: "DrawRingLines".}
else:
  static :
    hint("Declaration of " & "DrawRingLines" &
        " already exists, not redeclaring")
when not declared(DrawRectangle):
  proc DrawRectangle*(posX: cint; posY: cint; width: cint; height: cint;
                      color: Color_520094161): void {.cdecl,
      importc: "DrawRectangle".}
else:
  static :
    hint("Declaration of " & "DrawRectangle" &
        " already exists, not redeclaring")
when not declared(DrawRectangleV):
  proc DrawRectangleV*(position: Vector2_520094143; size: Vector2_520094143;
                       color: Color_520094161): void {.cdecl,
      importc: "DrawRectangleV".}
else:
  static :
    hint("Declaration of " & "DrawRectangleV" &
        " already exists, not redeclaring")
when not declared(DrawRectangleRec):
  proc DrawRectangleRec*(rec: Rectangle_520094165; color: Color_520094161): void {.
      cdecl, importc: "DrawRectangleRec".}
else:
  static :
    hint("Declaration of " & "DrawRectangleRec" &
        " already exists, not redeclaring")
when not declared(DrawRectanglePro):
  proc DrawRectanglePro*(rec: Rectangle_520094165; origin: Vector2_520094143;
                         rotation: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawRectanglePro".}
else:
  static :
    hint("Declaration of " & "DrawRectanglePro" &
        " already exists, not redeclaring")
when not declared(DrawRectangleGradientV):
  proc DrawRectangleGradientV*(posX: cint; posY: cint; width: cint;
                               height: cint; color1: Color_520094161;
                               color2: Color_520094161): void {.cdecl,
      importc: "DrawRectangleGradientV".}
else:
  static :
    hint("Declaration of " & "DrawRectangleGradientV" &
        " already exists, not redeclaring")
when not declared(DrawRectangleGradientH):
  proc DrawRectangleGradientH*(posX: cint; posY: cint; width: cint;
                               height: cint; color1: Color_520094161;
                               color2: Color_520094161): void {.cdecl,
      importc: "DrawRectangleGradientH".}
else:
  static :
    hint("Declaration of " & "DrawRectangleGradientH" &
        " already exists, not redeclaring")
when not declared(DrawRectangleGradientEx):
  proc DrawRectangleGradientEx*(rec: Rectangle_520094165; col1: Color_520094161;
                                col2: Color_520094161; col3: Color_520094161;
                                col4: Color_520094161): void {.cdecl,
      importc: "DrawRectangleGradientEx".}
else:
  static :
    hint("Declaration of " & "DrawRectangleGradientEx" &
        " already exists, not redeclaring")
when not declared(DrawRectangleLines):
  proc DrawRectangleLines*(posX: cint; posY: cint; width: cint; height: cint;
                           color: Color_520094161): void {.cdecl,
      importc: "DrawRectangleLines".}
else:
  static :
    hint("Declaration of " & "DrawRectangleLines" &
        " already exists, not redeclaring")
when not declared(DrawRectangleLinesEx):
  proc DrawRectangleLinesEx*(rec: Rectangle_520094165; lineThick: cfloat;
                             color: Color_520094161): void {.cdecl,
      importc: "DrawRectangleLinesEx".}
else:
  static :
    hint("Declaration of " & "DrawRectangleLinesEx" &
        " already exists, not redeclaring")
when not declared(DrawRectangleRounded):
  proc DrawRectangleRounded*(rec: Rectangle_520094165; roundness: cfloat;
                             segments: cint; color: Color_520094161): void {.
      cdecl, importc: "DrawRectangleRounded".}
else:
  static :
    hint("Declaration of " & "DrawRectangleRounded" &
        " already exists, not redeclaring")
when not declared(DrawRectangleRoundedLines):
  proc DrawRectangleRoundedLines*(rec: Rectangle_520094165; roundness: cfloat;
                                  segments: cint; lineThick: cfloat;
                                  color: Color_520094161): void {.cdecl,
      importc: "DrawRectangleRoundedLines".}
else:
  static :
    hint("Declaration of " & "DrawRectangleRoundedLines" &
        " already exists, not redeclaring")
when not declared(DrawTriangle):
  proc DrawTriangle*(v1: Vector2_520094143; v2: Vector2_520094143; v3: Vector2_520094143;
                     color: Color_520094161): void {.cdecl,
      importc: "DrawTriangle".}
else:
  static :
    hint("Declaration of " & "DrawTriangle" & " already exists, not redeclaring")
when not declared(DrawTriangleLines):
  proc DrawTriangleLines*(v1: Vector2_520094143; v2: Vector2_520094143;
                          v3: Vector2_520094143; color: Color_520094161): void {.
      cdecl, importc: "DrawTriangleLines".}
else:
  static :
    hint("Declaration of " & "DrawTriangleLines" &
        " already exists, not redeclaring")
when not declared(DrawTriangleFan):
  proc DrawTriangleFan*(points: ptr Vector2_520094143; pointCount: cint;
                        color: Color_520094161): void {.cdecl,
      importc: "DrawTriangleFan".}
else:
  static :
    hint("Declaration of " & "DrawTriangleFan" &
        " already exists, not redeclaring")
when not declared(DrawTriangleStrip):
  proc DrawTriangleStrip*(points: ptr Vector2_520094143; pointCount: cint;
                          color: Color_520094161): void {.cdecl,
      importc: "DrawTriangleStrip".}
else:
  static :
    hint("Declaration of " & "DrawTriangleStrip" &
        " already exists, not redeclaring")
when not declared(DrawPoly):
  proc DrawPoly*(center: Vector2_520094143; sides: cint; radius: cfloat;
                 rotation: cfloat; color: Color_520094161): void {.cdecl,
      importc: "DrawPoly".}
else:
  static :
    hint("Declaration of " & "DrawPoly" & " already exists, not redeclaring")
when not declared(DrawPolyLines):
  proc DrawPolyLines*(center: Vector2_520094143; sides: cint; radius: cfloat;
                      rotation: cfloat; color: Color_520094161): void {.cdecl,
      importc: "DrawPolyLines".}
else:
  static :
    hint("Declaration of " & "DrawPolyLines" &
        " already exists, not redeclaring")
when not declared(DrawPolyLinesEx):
  proc DrawPolyLinesEx*(center: Vector2_520094143; sides: cint; radius: cfloat;
                        rotation: cfloat; lineThick: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawPolyLinesEx".}
else:
  static :
    hint("Declaration of " & "DrawPolyLinesEx" &
        " already exists, not redeclaring")
when not declared(DrawSplineLinear):
  proc DrawSplineLinear*(points: ptr Vector2_520094143; pointCount: cint;
                         thick: cfloat; color: Color_520094161): void {.cdecl,
      importc: "DrawSplineLinear".}
else:
  static :
    hint("Declaration of " & "DrawSplineLinear" &
        " already exists, not redeclaring")
when not declared(DrawSplineBasis):
  proc DrawSplineBasis*(points: ptr Vector2_520094143; pointCount: cint;
                        thick: cfloat; color: Color_520094161): void {.cdecl,
      importc: "DrawSplineBasis".}
else:
  static :
    hint("Declaration of " & "DrawSplineBasis" &
        " already exists, not redeclaring")
when not declared(DrawSplineCatmullRom):
  proc DrawSplineCatmullRom*(points: ptr Vector2_520094143; pointCount: cint;
                             thick: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawSplineCatmullRom".}
else:
  static :
    hint("Declaration of " & "DrawSplineCatmullRom" &
        " already exists, not redeclaring")
when not declared(DrawSplineBezierQuadratic):
  proc DrawSplineBezierQuadratic*(points: ptr Vector2_520094143;
                                  pointCount: cint; thick: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawSplineBezierQuadratic".}
else:
  static :
    hint("Declaration of " & "DrawSplineBezierQuadratic" &
        " already exists, not redeclaring")
when not declared(DrawSplineBezierCubic):
  proc DrawSplineBezierCubic*(points: ptr Vector2_520094143; pointCount: cint;
                              thick: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawSplineBezierCubic".}
else:
  static :
    hint("Declaration of " & "DrawSplineBezierCubic" &
        " already exists, not redeclaring")
when not declared(DrawSplineSegmentLinear):
  proc DrawSplineSegmentLinear*(p1: Vector2_520094143; p2: Vector2_520094143;
                                thick: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawSplineSegmentLinear".}
else:
  static :
    hint("Declaration of " & "DrawSplineSegmentLinear" &
        " already exists, not redeclaring")
when not declared(DrawSplineSegmentBasis):
  proc DrawSplineSegmentBasis*(p1: Vector2_520094143; p2: Vector2_520094143;
                               p3: Vector2_520094143; p4: Vector2_520094143;
                               thick: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawSplineSegmentBasis".}
else:
  static :
    hint("Declaration of " & "DrawSplineSegmentBasis" &
        " already exists, not redeclaring")
when not declared(DrawSplineSegmentCatmullRom):
  proc DrawSplineSegmentCatmullRom*(p1: Vector2_520094143; p2: Vector2_520094143;
                                    p3: Vector2_520094143; p4: Vector2_520094143;
                                    thick: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawSplineSegmentCatmullRom".}
else:
  static :
    hint("Declaration of " & "DrawSplineSegmentCatmullRom" &
        " already exists, not redeclaring")
when not declared(DrawSplineSegmentBezierQuadratic):
  proc DrawSplineSegmentBezierQuadratic*(p1: Vector2_520094143; c2: Vector2_520094143;
      p3: Vector2_520094143; thick: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawSplineSegmentBezierQuadratic".}
else:
  static :
    hint("Declaration of " & "DrawSplineSegmentBezierQuadratic" &
        " already exists, not redeclaring")
when not declared(DrawSplineSegmentBezierCubic):
  proc DrawSplineSegmentBezierCubic*(p1: Vector2_520094143; c2: Vector2_520094143;
                                     c3: Vector2_520094143; p4: Vector2_520094143;
                                     thick: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawSplineSegmentBezierCubic".}
else:
  static :
    hint("Declaration of " & "DrawSplineSegmentBezierCubic" &
        " already exists, not redeclaring")
when not declared(GetSplinePointLinear):
  proc GetSplinePointLinear*(startPos: Vector2_520094143; endPos: Vector2_520094143;
                             t: cfloat): Vector2_520094143 {.cdecl,
      importc: "GetSplinePointLinear".}
else:
  static :
    hint("Declaration of " & "GetSplinePointLinear" &
        " already exists, not redeclaring")
when not declared(GetSplinePointBasis):
  proc GetSplinePointBasis*(p1: Vector2_520094143; p2: Vector2_520094143;
                            p3: Vector2_520094143; p4: Vector2_520094143;
                            t: cfloat): Vector2_520094143 {.cdecl,
      importc: "GetSplinePointBasis".}
else:
  static :
    hint("Declaration of " & "GetSplinePointBasis" &
        " already exists, not redeclaring")
when not declared(GetSplinePointCatmullRom):
  proc GetSplinePointCatmullRom*(p1: Vector2_520094143; p2: Vector2_520094143;
                                 p3: Vector2_520094143; p4: Vector2_520094143;
                                 t: cfloat): Vector2_520094143 {.cdecl,
      importc: "GetSplinePointCatmullRom".}
else:
  static :
    hint("Declaration of " & "GetSplinePointCatmullRom" &
        " already exists, not redeclaring")
when not declared(GetSplinePointBezierQuad):
  proc GetSplinePointBezierQuad*(p1: Vector2_520094143; c2: Vector2_520094143;
                                 p3: Vector2_520094143; t: cfloat): Vector2_520094143 {.
      cdecl, importc: "GetSplinePointBezierQuad".}
else:
  static :
    hint("Declaration of " & "GetSplinePointBezierQuad" &
        " already exists, not redeclaring")
when not declared(GetSplinePointBezierCubic):
  proc GetSplinePointBezierCubic*(p1: Vector2_520094143; c2: Vector2_520094143;
                                  c3: Vector2_520094143; p4: Vector2_520094143;
                                  t: cfloat): Vector2_520094143 {.cdecl,
      importc: "GetSplinePointBezierCubic".}
else:
  static :
    hint("Declaration of " & "GetSplinePointBezierCubic" &
        " already exists, not redeclaring")
when not declared(CheckCollisionRecs):
  proc CheckCollisionRecs*(rec1: Rectangle_520094165; rec2: Rectangle_520094165): bool {.
      cdecl, importc: "CheckCollisionRecs".}
else:
  static :
    hint("Declaration of " & "CheckCollisionRecs" &
        " already exists, not redeclaring")
when not declared(CheckCollisionCircles):
  proc CheckCollisionCircles*(center1: Vector2_520094143; radius1: cfloat;
                              center2: Vector2_520094143; radius2: cfloat): bool {.
      cdecl, importc: "CheckCollisionCircles".}
else:
  static :
    hint("Declaration of " & "CheckCollisionCircles" &
        " already exists, not redeclaring")
when not declared(CheckCollisionCircleRec):
  proc CheckCollisionCircleRec*(center: Vector2_520094143; radius: cfloat;
                                rec: Rectangle_520094165): bool {.cdecl,
      importc: "CheckCollisionCircleRec".}
else:
  static :
    hint("Declaration of " & "CheckCollisionCircleRec" &
        " already exists, not redeclaring")
when not declared(CheckCollisionPointRec):
  proc CheckCollisionPointRec*(point: Vector2_520094143; rec: Rectangle_520094165): bool {.
      cdecl, importc: "CheckCollisionPointRec".}
else:
  static :
    hint("Declaration of " & "CheckCollisionPointRec" &
        " already exists, not redeclaring")
when not declared(CheckCollisionPointCircle):
  proc CheckCollisionPointCircle*(point: Vector2_520094143; center: Vector2_520094143;
                                  radius: cfloat): bool {.cdecl,
      importc: "CheckCollisionPointCircle".}
else:
  static :
    hint("Declaration of " & "CheckCollisionPointCircle" &
        " already exists, not redeclaring")
when not declared(CheckCollisionPointTriangle):
  proc CheckCollisionPointTriangle*(point: Vector2_520094143; p1: Vector2_520094143;
                                    p2: Vector2_520094143; p3: Vector2_520094143): bool {.
      cdecl, importc: "CheckCollisionPointTriangle".}
else:
  static :
    hint("Declaration of " & "CheckCollisionPointTriangle" &
        " already exists, not redeclaring")
when not declared(CheckCollisionPointPoly):
  proc CheckCollisionPointPoly*(point: Vector2_520094143; points: ptr Vector2_520094143;
                                pointCount: cint): bool {.cdecl,
      importc: "CheckCollisionPointPoly".}
else:
  static :
    hint("Declaration of " & "CheckCollisionPointPoly" &
        " already exists, not redeclaring")
when not declared(CheckCollisionLines):
  proc CheckCollisionLines*(startPos1: Vector2_520094143; endPos1: Vector2_520094143;
                            startPos2: Vector2_520094143; endPos2: Vector2_520094143;
                            collisionPoint: ptr Vector2_520094143): bool {.
      cdecl, importc: "CheckCollisionLines".}
else:
  static :
    hint("Declaration of " & "CheckCollisionLines" &
        " already exists, not redeclaring")
when not declared(CheckCollisionPointLine):
  proc CheckCollisionPointLine*(point: Vector2_520094143; p1: Vector2_520094143;
                                p2: Vector2_520094143; threshold: cint): bool {.
      cdecl, importc: "CheckCollisionPointLine".}
else:
  static :
    hint("Declaration of " & "CheckCollisionPointLine" &
        " already exists, not redeclaring")
when not declared(GetCollisionRec):
  proc GetCollisionRec*(rec1: Rectangle_520094165; rec2: Rectangle_520094165): Rectangle_520094165 {.
      cdecl, importc: "GetCollisionRec".}
else:
  static :
    hint("Declaration of " & "GetCollisionRec" &
        " already exists, not redeclaring")
when not declared(LoadImage):
  proc LoadImage*(fileName: cstring): Image_520094169 {.cdecl,
      importc: "LoadImage".}
else:
  static :
    hint("Declaration of " & "LoadImage" & " already exists, not redeclaring")
when not declared(LoadImageRaw):
  proc LoadImageRaw*(fileName: cstring; width: cint; height: cint; format: cint;
                     headerSize: cint): Image_520094169 {.cdecl,
      importc: "LoadImageRaw".}
else:
  static :
    hint("Declaration of " & "LoadImageRaw" & " already exists, not redeclaring")
when not declared(LoadImageSvg):
  proc LoadImageSvg*(fileNameOrString: cstring; width: cint; height: cint): Image_520094169 {.
      cdecl, importc: "LoadImageSvg".}
else:
  static :
    hint("Declaration of " & "LoadImageSvg" & " already exists, not redeclaring")
when not declared(LoadImageAnim):
  proc LoadImageAnim*(fileName: cstring; frames: ptr cint): Image_520094169 {.
      cdecl, importc: "LoadImageAnim".}
else:
  static :
    hint("Declaration of " & "LoadImageAnim" &
        " already exists, not redeclaring")
when not declared(LoadImageAnimFromMemory):
  proc LoadImageAnimFromMemory*(fileType: cstring; fileData: ptr uint8;
                                dataSize: cint; frames: ptr cint): Image_520094169 {.
      cdecl, importc: "LoadImageAnimFromMemory".}
else:
  static :
    hint("Declaration of " & "LoadImageAnimFromMemory" &
        " already exists, not redeclaring")
when not declared(LoadImageFromMemory):
  proc LoadImageFromMemory*(fileType: cstring; fileData: ptr uint8;
                            dataSize: cint): Image_520094169 {.cdecl,
      importc: "LoadImageFromMemory".}
else:
  static :
    hint("Declaration of " & "LoadImageFromMemory" &
        " already exists, not redeclaring")
when not declared(LoadImageFromTexture):
  proc LoadImageFromTexture*(texture: Texture2D_520094175): Image_520094169 {.
      cdecl, importc: "LoadImageFromTexture".}
else:
  static :
    hint("Declaration of " & "LoadImageFromTexture" &
        " already exists, not redeclaring")
when not declared(LoadImageFromScreen):
  proc LoadImageFromScreen*(): Image_520094169 {.cdecl,
      importc: "LoadImageFromScreen".}
else:
  static :
    hint("Declaration of " & "LoadImageFromScreen" &
        " already exists, not redeclaring")
when not declared(IsImageReady):
  proc IsImageReady*(image: Image_520094169): bool {.cdecl,
      importc: "IsImageReady".}
else:
  static :
    hint("Declaration of " & "IsImageReady" & " already exists, not redeclaring")
when not declared(UnloadImage):
  proc UnloadImage*(image: Image_520094169): void {.cdecl,
      importc: "UnloadImage".}
else:
  static :
    hint("Declaration of " & "UnloadImage" & " already exists, not redeclaring")
when not declared(ExportImage):
  proc ExportImage*(image: Image_520094169; fileName: cstring): bool {.cdecl,
      importc: "ExportImage".}
else:
  static :
    hint("Declaration of " & "ExportImage" & " already exists, not redeclaring")
when not declared(ExportImageToMemory):
  proc ExportImageToMemory*(image: Image_520094169; fileType: cstring;
                            fileSize: ptr cint): ptr uint8 {.cdecl,
      importc: "ExportImageToMemory".}
else:
  static :
    hint("Declaration of " & "ExportImageToMemory" &
        " already exists, not redeclaring")
when not declared(ExportImageAsCode):
  proc ExportImageAsCode*(image: Image_520094169; fileName: cstring): bool {.
      cdecl, importc: "ExportImageAsCode".}
else:
  static :
    hint("Declaration of " & "ExportImageAsCode" &
        " already exists, not redeclaring")
when not declared(GenImageColor):
  proc GenImageColor*(width: cint; height: cint; color: Color_520094161): Image_520094169 {.
      cdecl, importc: "GenImageColor".}
else:
  static :
    hint("Declaration of " & "GenImageColor" &
        " already exists, not redeclaring")
when not declared(GenImageGradientLinear):
  proc GenImageGradientLinear*(width: cint; height: cint; direction: cint;
                               start: Color_520094161; end_arg: Color_520094161): Image_520094169 {.
      cdecl, importc: "GenImageGradientLinear".}
else:
  static :
    hint("Declaration of " & "GenImageGradientLinear" &
        " already exists, not redeclaring")
when not declared(GenImageGradientRadial):
  proc GenImageGradientRadial*(width: cint; height: cint; density: cfloat;
                               inner: Color_520094161; outer: Color_520094161): Image_520094169 {.
      cdecl, importc: "GenImageGradientRadial".}
else:
  static :
    hint("Declaration of " & "GenImageGradientRadial" &
        " already exists, not redeclaring")
when not declared(GenImageGradientSquare):
  proc GenImageGradientSquare*(width: cint; height: cint; density: cfloat;
                               inner: Color_520094161; outer: Color_520094161): Image_520094169 {.
      cdecl, importc: "GenImageGradientSquare".}
else:
  static :
    hint("Declaration of " & "GenImageGradientSquare" &
        " already exists, not redeclaring")
when not declared(GenImageChecked):
  proc GenImageChecked*(width: cint; height: cint; checksX: cint; checksY: cint;
                        col1: Color_520094161; col2: Color_520094161): Image_520094169 {.
      cdecl, importc: "GenImageChecked".}
else:
  static :
    hint("Declaration of " & "GenImageChecked" &
        " already exists, not redeclaring")
when not declared(GenImageWhiteNoise):
  proc GenImageWhiteNoise*(width: cint; height: cint; factor: cfloat): Image_520094169 {.
      cdecl, importc: "GenImageWhiteNoise".}
else:
  static :
    hint("Declaration of " & "GenImageWhiteNoise" &
        " already exists, not redeclaring")
when not declared(GenImagePerlinNoise):
  proc GenImagePerlinNoise*(width: cint; height: cint; offsetX: cint;
                            offsetY: cint; scale: cfloat): Image_520094169 {.
      cdecl, importc: "GenImagePerlinNoise".}
else:
  static :
    hint("Declaration of " & "GenImagePerlinNoise" &
        " already exists, not redeclaring")
when not declared(GenImageCellular):
  proc GenImageCellular*(width: cint; height: cint; tileSize: cint): Image_520094169 {.
      cdecl, importc: "GenImageCellular".}
else:
  static :
    hint("Declaration of " & "GenImageCellular" &
        " already exists, not redeclaring")
when not declared(GenImageText):
  proc GenImageText*(width: cint; height: cint; text: cstring): Image_520094169 {.
      cdecl, importc: "GenImageText".}
else:
  static :
    hint("Declaration of " & "GenImageText" & " already exists, not redeclaring")
when not declared(ImageCopy):
  proc ImageCopy*(image: Image_520094169): Image_520094169 {.cdecl,
      importc: "ImageCopy".}
else:
  static :
    hint("Declaration of " & "ImageCopy" & " already exists, not redeclaring")
when not declared(ImageFromImage):
  proc ImageFromImage*(image: Image_520094169; rec: Rectangle_520094165): Image_520094169 {.
      cdecl, importc: "ImageFromImage".}
else:
  static :
    hint("Declaration of " & "ImageFromImage" &
        " already exists, not redeclaring")
when not declared(ImageText):
  proc ImageText*(text: cstring; fontSize: cint; color: Color_520094161): Image_520094169 {.
      cdecl, importc: "ImageText".}
else:
  static :
    hint("Declaration of " & "ImageText" & " already exists, not redeclaring")
when not declared(ImageTextEx):
  proc ImageTextEx*(font: Font_520094202; text: cstring; fontSize: cfloat;
                    spacing: cfloat; tint: Color_520094161): Image_520094169 {.
      cdecl, importc: "ImageTextEx".}
else:
  static :
    hint("Declaration of " & "ImageTextEx" & " already exists, not redeclaring")
when not declared(ImageFormat):
  proc ImageFormat*(image: ptr Image_520094169; newFormat: cint): void {.cdecl,
      importc: "ImageFormat".}
else:
  static :
    hint("Declaration of " & "ImageFormat" & " already exists, not redeclaring")
when not declared(ImageToPOT):
  proc ImageToPOT*(image: ptr Image_520094169; fill: Color_520094161): void {.
      cdecl, importc: "ImageToPOT".}
else:
  static :
    hint("Declaration of " & "ImageToPOT" & " already exists, not redeclaring")
when not declared(ImageCrop):
  proc ImageCrop*(image: ptr Image_520094169; crop: Rectangle_520094165): void {.
      cdecl, importc: "ImageCrop".}
else:
  static :
    hint("Declaration of " & "ImageCrop" & " already exists, not redeclaring")
when not declared(ImageAlphaCrop):
  proc ImageAlphaCrop*(image: ptr Image_520094169; threshold: cfloat): void {.
      cdecl, importc: "ImageAlphaCrop".}
else:
  static :
    hint("Declaration of " & "ImageAlphaCrop" &
        " already exists, not redeclaring")
when not declared(ImageAlphaClear):
  proc ImageAlphaClear*(image: ptr Image_520094169; color: Color_520094161;
                        threshold: cfloat): void {.cdecl,
      importc: "ImageAlphaClear".}
else:
  static :
    hint("Declaration of " & "ImageAlphaClear" &
        " already exists, not redeclaring")
when not declared(ImageAlphaMask):
  proc ImageAlphaMask*(image: ptr Image_520094169; alphaMask: Image_520094169): void {.
      cdecl, importc: "ImageAlphaMask".}
else:
  static :
    hint("Declaration of " & "ImageAlphaMask" &
        " already exists, not redeclaring")
when not declared(ImageAlphaPremultiply):
  proc ImageAlphaPremultiply*(image: ptr Image_520094169): void {.cdecl,
      importc: "ImageAlphaPremultiply".}
else:
  static :
    hint("Declaration of " & "ImageAlphaPremultiply" &
        " already exists, not redeclaring")
when not declared(ImageBlurGaussian):
  proc ImageBlurGaussian*(image: ptr Image_520094169; blurSize: cint): void {.
      cdecl, importc: "ImageBlurGaussian".}
else:
  static :
    hint("Declaration of " & "ImageBlurGaussian" &
        " already exists, not redeclaring")
when not declared(ImageKernelConvolution):
  proc ImageKernelConvolution*(image: ptr Image_520094169; kernel: ptr cfloat;
                               kernelSize: cint): void {.cdecl,
      importc: "ImageKernelConvolution".}
else:
  static :
    hint("Declaration of " & "ImageKernelConvolution" &
        " already exists, not redeclaring")
when not declared(ImageResize):
  proc ImageResize*(image: ptr Image_520094169; newWidth: cint; newHeight: cint): void {.
      cdecl, importc: "ImageResize".}
else:
  static :
    hint("Declaration of " & "ImageResize" & " already exists, not redeclaring")
when not declared(ImageResizeNN):
  proc ImageResizeNN*(image: ptr Image_520094169; newWidth: cint;
                      newHeight: cint): void {.cdecl, importc: "ImageResizeNN".}
else:
  static :
    hint("Declaration of " & "ImageResizeNN" &
        " already exists, not redeclaring")
when not declared(ImageResizeCanvas):
  proc ImageResizeCanvas*(image: ptr Image_520094169; newWidth: cint;
                          newHeight: cint; offsetX: cint; offsetY: cint;
                          fill: Color_520094161): void {.cdecl,
      importc: "ImageResizeCanvas".}
else:
  static :
    hint("Declaration of " & "ImageResizeCanvas" &
        " already exists, not redeclaring")
when not declared(ImageMipmaps):
  proc ImageMipmaps*(image: ptr Image_520094169): void {.cdecl,
      importc: "ImageMipmaps".}
else:
  static :
    hint("Declaration of " & "ImageMipmaps" & " already exists, not redeclaring")
when not declared(ImageDither):
  proc ImageDither*(image: ptr Image_520094169; rBpp: cint; gBpp: cint;
                    bBpp: cint; aBpp: cint): void {.cdecl,
      importc: "ImageDither".}
else:
  static :
    hint("Declaration of " & "ImageDither" & " already exists, not redeclaring")
when not declared(ImageFlipVertical):
  proc ImageFlipVertical*(image: ptr Image_520094169): void {.cdecl,
      importc: "ImageFlipVertical".}
else:
  static :
    hint("Declaration of " & "ImageFlipVertical" &
        " already exists, not redeclaring")
when not declared(ImageFlipHorizontal):
  proc ImageFlipHorizontal*(image: ptr Image_520094169): void {.cdecl,
      importc: "ImageFlipHorizontal".}
else:
  static :
    hint("Declaration of " & "ImageFlipHorizontal" &
        " already exists, not redeclaring")
when not declared(ImageRotate):
  proc ImageRotate*(image: ptr Image_520094169; degrees: cint): void {.cdecl,
      importc: "ImageRotate".}
else:
  static :
    hint("Declaration of " & "ImageRotate" & " already exists, not redeclaring")
when not declared(ImageRotateCW):
  proc ImageRotateCW*(image: ptr Image_520094169): void {.cdecl,
      importc: "ImageRotateCW".}
else:
  static :
    hint("Declaration of " & "ImageRotateCW" &
        " already exists, not redeclaring")
when not declared(ImageRotateCCW):
  proc ImageRotateCCW*(image: ptr Image_520094169): void {.cdecl,
      importc: "ImageRotateCCW".}
else:
  static :
    hint("Declaration of " & "ImageRotateCCW" &
        " already exists, not redeclaring")
when not declared(ImageColorTint):
  proc ImageColorTint*(image: ptr Image_520094169; color: Color_520094161): void {.
      cdecl, importc: "ImageColorTint".}
else:
  static :
    hint("Declaration of " & "ImageColorTint" &
        " already exists, not redeclaring")
when not declared(ImageColorInvert):
  proc ImageColorInvert*(image: ptr Image_520094169): void {.cdecl,
      importc: "ImageColorInvert".}
else:
  static :
    hint("Declaration of " & "ImageColorInvert" &
        " already exists, not redeclaring")
when not declared(ImageColorGrayscale):
  proc ImageColorGrayscale*(image: ptr Image_520094169): void {.cdecl,
      importc: "ImageColorGrayscale".}
else:
  static :
    hint("Declaration of " & "ImageColorGrayscale" &
        " already exists, not redeclaring")
when not declared(ImageColorContrast):
  proc ImageColorContrast*(image: ptr Image_520094169; contrast: cfloat): void {.
      cdecl, importc: "ImageColorContrast".}
else:
  static :
    hint("Declaration of " & "ImageColorContrast" &
        " already exists, not redeclaring")
when not declared(ImageColorBrightness):
  proc ImageColorBrightness*(image: ptr Image_520094169; brightness: cint): void {.
      cdecl, importc: "ImageColorBrightness".}
else:
  static :
    hint("Declaration of " & "ImageColorBrightness" &
        " already exists, not redeclaring")
when not declared(ImageColorReplace):
  proc ImageColorReplace*(image: ptr Image_520094169; color: Color_520094161;
                          replace: Color_520094161): void {.cdecl,
      importc: "ImageColorReplace".}
else:
  static :
    hint("Declaration of " & "ImageColorReplace" &
        " already exists, not redeclaring")
when not declared(LoadImageColors):
  proc LoadImageColors*(image: Image_520094169): ptr Color_520094161 {.cdecl,
      importc: "LoadImageColors".}
else:
  static :
    hint("Declaration of " & "LoadImageColors" &
        " already exists, not redeclaring")
when not declared(LoadImagePalette):
  proc LoadImagePalette*(image: Image_520094169; maxPaletteSize: cint;
                         colorCount: ptr cint): ptr Color_520094161 {.cdecl,
      importc: "LoadImagePalette".}
else:
  static :
    hint("Declaration of " & "LoadImagePalette" &
        " already exists, not redeclaring")
when not declared(UnloadImageColors):
  proc UnloadImageColors*(colors: ptr Color_520094161): void {.cdecl,
      importc: "UnloadImageColors".}
else:
  static :
    hint("Declaration of " & "UnloadImageColors" &
        " already exists, not redeclaring")
when not declared(UnloadImagePalette):
  proc UnloadImagePalette*(colors: ptr Color_520094161): void {.cdecl,
      importc: "UnloadImagePalette".}
else:
  static :
    hint("Declaration of " & "UnloadImagePalette" &
        " already exists, not redeclaring")
when not declared(GetImageAlphaBorder):
  proc GetImageAlphaBorder*(image: Image_520094169; threshold: cfloat): Rectangle_520094165 {.
      cdecl, importc: "GetImageAlphaBorder".}
else:
  static :
    hint("Declaration of " & "GetImageAlphaBorder" &
        " already exists, not redeclaring")
when not declared(GetImageColor):
  proc GetImageColor*(image: Image_520094169; x: cint; y: cint): Color_520094161 {.
      cdecl, importc: "GetImageColor".}
else:
  static :
    hint("Declaration of " & "GetImageColor" &
        " already exists, not redeclaring")
when not declared(ImageClearBackground):
  proc ImageClearBackground*(dst: ptr Image_520094169; color: Color_520094161): void {.
      cdecl, importc: "ImageClearBackground".}
else:
  static :
    hint("Declaration of " & "ImageClearBackground" &
        " already exists, not redeclaring")
when not declared(ImageDrawPixel):
  proc ImageDrawPixel*(dst: ptr Image_520094169; posX: cint; posY: cint;
                       color: Color_520094161): void {.cdecl,
      importc: "ImageDrawPixel".}
else:
  static :
    hint("Declaration of " & "ImageDrawPixel" &
        " already exists, not redeclaring")
when not declared(ImageDrawPixelV):
  proc ImageDrawPixelV*(dst: ptr Image_520094169; position: Vector2_520094143;
                        color: Color_520094161): void {.cdecl,
      importc: "ImageDrawPixelV".}
else:
  static :
    hint("Declaration of " & "ImageDrawPixelV" &
        " already exists, not redeclaring")
when not declared(ImageDrawLine):
  proc ImageDrawLine*(dst: ptr Image_520094169; startPosX: cint;
                      startPosY: cint; endPosX: cint; endPosY: cint;
                      color: Color_520094161): void {.cdecl,
      importc: "ImageDrawLine".}
else:
  static :
    hint("Declaration of " & "ImageDrawLine" &
        " already exists, not redeclaring")
when not declared(ImageDrawLineV):
  proc ImageDrawLineV*(dst: ptr Image_520094169; start: Vector2_520094143;
                       end_arg: Vector2_520094143; color: Color_520094161): void {.
      cdecl, importc: "ImageDrawLineV".}
else:
  static :
    hint("Declaration of " & "ImageDrawLineV" &
        " already exists, not redeclaring")
when not declared(ImageDrawCircle):
  proc ImageDrawCircle*(dst: ptr Image_520094169; centerX: cint; centerY: cint;
                        radius: cint; color: Color_520094161): void {.cdecl,
      importc: "ImageDrawCircle".}
else:
  static :
    hint("Declaration of " & "ImageDrawCircle" &
        " already exists, not redeclaring")
when not declared(ImageDrawCircleV):
  proc ImageDrawCircleV*(dst: ptr Image_520094169; center: Vector2_520094143;
                         radius: cint; color: Color_520094161): void {.cdecl,
      importc: "ImageDrawCircleV".}
else:
  static :
    hint("Declaration of " & "ImageDrawCircleV" &
        " already exists, not redeclaring")
when not declared(ImageDrawCircleLines):
  proc ImageDrawCircleLines*(dst: ptr Image_520094169; centerX: cint;
                             centerY: cint; radius: cint; color: Color_520094161): void {.
      cdecl, importc: "ImageDrawCircleLines".}
else:
  static :
    hint("Declaration of " & "ImageDrawCircleLines" &
        " already exists, not redeclaring")
when not declared(ImageDrawCircleLinesV):
  proc ImageDrawCircleLinesV*(dst: ptr Image_520094169; center: Vector2_520094143;
                              radius: cint; color: Color_520094161): void {.
      cdecl, importc: "ImageDrawCircleLinesV".}
else:
  static :
    hint("Declaration of " & "ImageDrawCircleLinesV" &
        " already exists, not redeclaring")
when not declared(ImageDrawRectangle):
  proc ImageDrawRectangle*(dst: ptr Image_520094169; posX: cint; posY: cint;
                           width: cint; height: cint; color: Color_520094161): void {.
      cdecl, importc: "ImageDrawRectangle".}
else:
  static :
    hint("Declaration of " & "ImageDrawRectangle" &
        " already exists, not redeclaring")
when not declared(ImageDrawRectangleV):
  proc ImageDrawRectangleV*(dst: ptr Image_520094169; position: Vector2_520094143;
                            size: Vector2_520094143; color: Color_520094161): void {.
      cdecl, importc: "ImageDrawRectangleV".}
else:
  static :
    hint("Declaration of " & "ImageDrawRectangleV" &
        " already exists, not redeclaring")
when not declared(ImageDrawRectangleRec):
  proc ImageDrawRectangleRec*(dst: ptr Image_520094169; rec: Rectangle_520094165;
                              color: Color_520094161): void {.cdecl,
      importc: "ImageDrawRectangleRec".}
else:
  static :
    hint("Declaration of " & "ImageDrawRectangleRec" &
        " already exists, not redeclaring")
when not declared(ImageDrawRectangleLines):
  proc ImageDrawRectangleLines*(dst: ptr Image_520094169; rec: Rectangle_520094165;
                                thick: cint; color: Color_520094161): void {.
      cdecl, importc: "ImageDrawRectangleLines".}
else:
  static :
    hint("Declaration of " & "ImageDrawRectangleLines" &
        " already exists, not redeclaring")
when not declared(ImageDraw):
  proc ImageDraw*(dst: ptr Image_520094169; src: Image_520094169;
                  srcRec: Rectangle_520094165; dstRec: Rectangle_520094165;
                  tint: Color_520094161): void {.cdecl, importc: "ImageDraw".}
else:
  static :
    hint("Declaration of " & "ImageDraw" & " already exists, not redeclaring")
when not declared(ImageDrawText):
  proc ImageDrawText*(dst: ptr Image_520094169; text: cstring; posX: cint;
                      posY: cint; fontSize: cint; color: Color_520094161): void {.
      cdecl, importc: "ImageDrawText".}
else:
  static :
    hint("Declaration of " & "ImageDrawText" &
        " already exists, not redeclaring")
when not declared(ImageDrawTextEx):
  proc ImageDrawTextEx*(dst: ptr Image_520094169; font: Font_520094202;
                        text: cstring; position: Vector2_520094143;
                        fontSize: cfloat; spacing: cfloat; tint: Color_520094161): void {.
      cdecl, importc: "ImageDrawTextEx".}
else:
  static :
    hint("Declaration of " & "ImageDrawTextEx" &
        " already exists, not redeclaring")
when not declared(LoadTexture):
  proc LoadTexture*(fileName: cstring): Texture2D_520094175 {.cdecl,
      importc: "LoadTexture".}
else:
  static :
    hint("Declaration of " & "LoadTexture" & " already exists, not redeclaring")
when not declared(LoadTextureFromImage):
  proc LoadTextureFromImage*(image: Image_520094169): Texture2D_520094175 {.
      cdecl, importc: "LoadTextureFromImage".}
else:
  static :
    hint("Declaration of " & "LoadTextureFromImage" &
        " already exists, not redeclaring")
when not declared(LoadTextureCubemap):
  proc LoadTextureCubemap*(image: Image_520094169; layout: cint): TextureCubemap_520094177 {.
      cdecl, importc: "LoadTextureCubemap".}
else:
  static :
    hint("Declaration of " & "LoadTextureCubemap" &
        " already exists, not redeclaring")
when not declared(LoadRenderTexture):
  proc LoadRenderTexture*(width: cint; height: cint): RenderTexture2D_520094183 {.
      cdecl, importc: "LoadRenderTexture".}
else:
  static :
    hint("Declaration of " & "LoadRenderTexture" &
        " already exists, not redeclaring")
when not declared(IsTextureReady):
  proc IsTextureReady*(texture: Texture2D_520094175): bool {.cdecl,
      importc: "IsTextureReady".}
else:
  static :
    hint("Declaration of " & "IsTextureReady" &
        " already exists, not redeclaring")
when not declared(UnloadTexture):
  proc UnloadTexture*(texture: Texture2D_520094175): void {.cdecl,
      importc: "UnloadTexture".}
else:
  static :
    hint("Declaration of " & "UnloadTexture" &
        " already exists, not redeclaring")
when not declared(IsRenderTextureReady):
  proc IsRenderTextureReady*(target: RenderTexture2D_520094183): bool {.cdecl,
      importc: "IsRenderTextureReady".}
else:
  static :
    hint("Declaration of " & "IsRenderTextureReady" &
        " already exists, not redeclaring")
when not declared(UnloadRenderTexture):
  proc UnloadRenderTexture*(target: RenderTexture2D_520094183): void {.cdecl,
      importc: "UnloadRenderTexture".}
else:
  static :
    hint("Declaration of " & "UnloadRenderTexture" &
        " already exists, not redeclaring")
when not declared(UpdateTexture):
  proc UpdateTexture*(texture: Texture2D_520094175; pixels: pointer): void {.
      cdecl, importc: "UpdateTexture".}
else:
  static :
    hint("Declaration of " & "UpdateTexture" &
        " already exists, not redeclaring")
when not declared(UpdateTextureRec):
  proc UpdateTextureRec*(texture: Texture2D_520094175; rec: Rectangle_520094165;
                         pixels: pointer): void {.cdecl,
      importc: "UpdateTextureRec".}
else:
  static :
    hint("Declaration of " & "UpdateTextureRec" &
        " already exists, not redeclaring")
when not declared(GenTextureMipmaps):
  proc GenTextureMipmaps*(texture: ptr Texture2D_520094175): void {.cdecl,
      importc: "GenTextureMipmaps".}
else:
  static :
    hint("Declaration of " & "GenTextureMipmaps" &
        " already exists, not redeclaring")
when not declared(SetTextureFilter):
  proc SetTextureFilter*(texture: Texture2D_520094175; filter: cint): void {.
      cdecl, importc: "SetTextureFilter".}
else:
  static :
    hint("Declaration of " & "SetTextureFilter" &
        " already exists, not redeclaring")
when not declared(SetTextureWrap):
  proc SetTextureWrap*(texture: Texture2D_520094175; wrap: cint): void {.cdecl,
      importc: "SetTextureWrap".}
else:
  static :
    hint("Declaration of " & "SetTextureWrap" &
        " already exists, not redeclaring")
when not declared(DrawTexture):
  proc DrawTexture*(texture: Texture2D_520094175; posX: cint; posY: cint;
                    tint: Color_520094161): void {.cdecl, importc: "DrawTexture".}
else:
  static :
    hint("Declaration of " & "DrawTexture" & " already exists, not redeclaring")
when not declared(DrawTextureV):
  proc DrawTextureV*(texture: Texture2D_520094175; position: Vector2_520094143;
                     tint: Color_520094161): void {.cdecl,
      importc: "DrawTextureV".}
else:
  static :
    hint("Declaration of " & "DrawTextureV" & " already exists, not redeclaring")
when not declared(DrawTextureEx):
  proc DrawTextureEx*(texture: Texture2D_520094175; position: Vector2_520094143;
                      rotation: cfloat; scale: cfloat; tint: Color_520094161): void {.
      cdecl, importc: "DrawTextureEx".}
else:
  static :
    hint("Declaration of " & "DrawTextureEx" &
        " already exists, not redeclaring")
when not declared(DrawTextureRec):
  proc DrawTextureRec*(texture: Texture2D_520094175; source: Rectangle_520094165;
                       position: Vector2_520094143; tint: Color_520094161): void {.
      cdecl, importc: "DrawTextureRec".}
else:
  static :
    hint("Declaration of " & "DrawTextureRec" &
        " already exists, not redeclaring")
when not declared(DrawTexturePro):
  proc DrawTexturePro*(texture: Texture2D_520094175; source: Rectangle_520094165;
                       dest: Rectangle_520094165; origin: Vector2_520094143;
                       rotation: cfloat; tint: Color_520094161): void {.cdecl,
      importc: "DrawTexturePro".}
else:
  static :
    hint("Declaration of " & "DrawTexturePro" &
        " already exists, not redeclaring")
when not declared(DrawTextureNPatch):
  proc DrawTextureNPatch*(texture: Texture2D_520094175; nPatchInfo: NPatchInfo_520094187;
                          dest: Rectangle_520094165; origin: Vector2_520094143;
                          rotation: cfloat; tint: Color_520094161): void {.
      cdecl, importc: "DrawTextureNPatch".}
else:
  static :
    hint("Declaration of " & "DrawTextureNPatch" &
        " already exists, not redeclaring")
when not declared(Fade):
  proc Fade*(color: Color_520094161; alpha: cfloat): Color_520094161 {.cdecl,
      importc: "Fade".}
else:
  static :
    hint("Declaration of " & "Fade" & " already exists, not redeclaring")
when not declared(ColorToInt):
  proc ColorToInt*(color: Color_520094161): cint {.cdecl, importc: "ColorToInt".}
else:
  static :
    hint("Declaration of " & "ColorToInt" & " already exists, not redeclaring")
when not declared(ColorNormalize):
  proc ColorNormalize*(color: Color_520094161): Vector4_520094151 {.cdecl,
      importc: "ColorNormalize".}
else:
  static :
    hint("Declaration of " & "ColorNormalize" &
        " already exists, not redeclaring")
when not declared(ColorFromNormalized):
  proc ColorFromNormalized*(normalized: Vector4_520094151): Color_520094161 {.
      cdecl, importc: "ColorFromNormalized".}
else:
  static :
    hint("Declaration of " & "ColorFromNormalized" &
        " already exists, not redeclaring")
when not declared(ColorToHSV):
  proc ColorToHSV*(color: Color_520094161): Vector3_520094147 {.cdecl,
      importc: "ColorToHSV".}
else:
  static :
    hint("Declaration of " & "ColorToHSV" & " already exists, not redeclaring")
when not declared(ColorFromHSV):
  proc ColorFromHSV*(hue: cfloat; saturation: cfloat; value: cfloat): Color_520094161 {.
      cdecl, importc: "ColorFromHSV".}
else:
  static :
    hint("Declaration of " & "ColorFromHSV" & " already exists, not redeclaring")
when not declared(ColorTint):
  proc ColorTint*(color: Color_520094161; tint: Color_520094161): Color_520094161 {.
      cdecl, importc: "ColorTint".}
else:
  static :
    hint("Declaration of " & "ColorTint" & " already exists, not redeclaring")
when not declared(ColorBrightness):
  proc ColorBrightness*(color: Color_520094161; factor: cfloat): Color_520094161 {.
      cdecl, importc: "ColorBrightness".}
else:
  static :
    hint("Declaration of " & "ColorBrightness" &
        " already exists, not redeclaring")
when not declared(ColorContrast):
  proc ColorContrast*(color: Color_520094161; contrast: cfloat): Color_520094161 {.
      cdecl, importc: "ColorContrast".}
else:
  static :
    hint("Declaration of " & "ColorContrast" &
        " already exists, not redeclaring")
when not declared(ColorAlpha):
  proc ColorAlpha*(color: Color_520094161; alpha: cfloat): Color_520094161 {.
      cdecl, importc: "ColorAlpha".}
else:
  static :
    hint("Declaration of " & "ColorAlpha" & " already exists, not redeclaring")
when not declared(ColorAlphaBlend):
  proc ColorAlphaBlend*(dst: Color_520094161; src: Color_520094161; tint: Color_520094161): Color_520094161 {.
      cdecl, importc: "ColorAlphaBlend".}
else:
  static :
    hint("Declaration of " & "ColorAlphaBlend" &
        " already exists, not redeclaring")
when not declared(GetColor):
  proc GetColor*(hexValue: cuint): Color_520094161 {.cdecl, importc: "GetColor".}
else:
  static :
    hint("Declaration of " & "GetColor" & " already exists, not redeclaring")
when not declared(GetPixelColor):
  proc GetPixelColor*(srcPtr: pointer; format: cint): Color_520094161 {.cdecl,
      importc: "GetPixelColor".}
else:
  static :
    hint("Declaration of " & "GetPixelColor" &
        " already exists, not redeclaring")
when not declared(SetPixelColor):
  proc SetPixelColor*(dstPtr: pointer; color: Color_520094161; format: cint): void {.
      cdecl, importc: "SetPixelColor".}
else:
  static :
    hint("Declaration of " & "SetPixelColor" &
        " already exists, not redeclaring")
when not declared(GetPixelDataSize):
  proc GetPixelDataSize*(width: cint; height: cint; format: cint): cint {.cdecl,
      importc: "GetPixelDataSize".}
else:
  static :
    hint("Declaration of " & "GetPixelDataSize" &
        " already exists, not redeclaring")
when not declared(GetFontDefault):
  proc GetFontDefault*(): Font_520094202 {.cdecl, importc: "GetFontDefault".}
else:
  static :
    hint("Declaration of " & "GetFontDefault" &
        " already exists, not redeclaring")
when not declared(LoadFont):
  proc LoadFont*(fileName: cstring): Font_520094202 {.cdecl, importc: "LoadFont".}
else:
  static :
    hint("Declaration of " & "LoadFont" & " already exists, not redeclaring")
when not declared(LoadFontEx):
  proc LoadFontEx*(fileName: cstring; fontSize: cint; codepoints: ptr cint;
                   codepointCount: cint): Font_520094202 {.cdecl,
      importc: "LoadFontEx".}
else:
  static :
    hint("Declaration of " & "LoadFontEx" & " already exists, not redeclaring")
when not declared(LoadFontFromImage):
  proc LoadFontFromImage*(image: Image_520094169; key: Color_520094161;
                          firstChar: cint): Font_520094202 {.cdecl,
      importc: "LoadFontFromImage".}
else:
  static :
    hint("Declaration of " & "LoadFontFromImage" &
        " already exists, not redeclaring")
when not declared(LoadFontFromMemory):
  proc LoadFontFromMemory*(fileType: cstring; fileData: ptr uint8;
                           dataSize: cint; fontSize: cint; codepoints: ptr cint;
                           codepointCount: cint): Font_520094202 {.cdecl,
      importc: "LoadFontFromMemory".}
else:
  static :
    hint("Declaration of " & "LoadFontFromMemory" &
        " already exists, not redeclaring")
when not declared(IsFontReady):
  proc IsFontReady*(font: Font_520094202): bool {.cdecl, importc: "IsFontReady".}
else:
  static :
    hint("Declaration of " & "IsFontReady" & " already exists, not redeclaring")
when not declared(LoadFontData):
  proc LoadFontData*(fileData: ptr uint8; dataSize: cint; fontSize: cint;
                     codepoints: ptr cint; codepointCount: cint; type_arg: cint): ptr GlyphInfo_520094191 {.
      cdecl, importc: "LoadFontData".}
else:
  static :
    hint("Declaration of " & "LoadFontData" & " already exists, not redeclaring")
when not declared(GenImageFontAtlas):
  proc GenImageFontAtlas*(glyphs: ptr GlyphInfo_520094191;
                          glyphRecs: ptr ptr Rectangle_520094165;
                          glyphCount: cint; fontSize: cint; padding: cint;
                          packMethod: cint): Image_520094169 {.cdecl,
      importc: "GenImageFontAtlas".}
else:
  static :
    hint("Declaration of " & "GenImageFontAtlas" &
        " already exists, not redeclaring")
when not declared(UnloadFontData):
  proc UnloadFontData*(glyphs: ptr GlyphInfo_520094191; glyphCount: cint): void {.
      cdecl, importc: "UnloadFontData".}
else:
  static :
    hint("Declaration of " & "UnloadFontData" &
        " already exists, not redeclaring")
when not declared(UnloadFont):
  proc UnloadFont*(font: Font_520094202): void {.cdecl, importc: "UnloadFont".}
else:
  static :
    hint("Declaration of " & "UnloadFont" & " already exists, not redeclaring")
when not declared(ExportFontAsCode):
  proc ExportFontAsCode*(font: Font_520094202; fileName: cstring): bool {.cdecl,
      importc: "ExportFontAsCode".}
else:
  static :
    hint("Declaration of " & "ExportFontAsCode" &
        " already exists, not redeclaring")
when not declared(DrawFPS):
  proc DrawFPS*(posX: cint; posY: cint): void {.cdecl, importc: "DrawFPS".}
else:
  static :
    hint("Declaration of " & "DrawFPS" & " already exists, not redeclaring")
when not declared(DrawText):
  proc DrawText*(text: cstring; posX: cint; posY: cint; fontSize: cint;
                 color: Color_520094161): void {.cdecl, importc: "DrawText".}
else:
  static :
    hint("Declaration of " & "DrawText" & " already exists, not redeclaring")
when not declared(DrawTextEx):
  proc DrawTextEx*(font: Font_520094202; text: cstring; position: Vector2_520094143;
                   fontSize: cfloat; spacing: cfloat; tint: Color_520094161): void {.
      cdecl, importc: "DrawTextEx".}
else:
  static :
    hint("Declaration of " & "DrawTextEx" & " already exists, not redeclaring")
when not declared(DrawTextPro):
  proc DrawTextPro*(font: Font_520094202; text: cstring; position: Vector2_520094143;
                    origin: Vector2_520094143; rotation: cfloat;
                    fontSize: cfloat; spacing: cfloat; tint: Color_520094161): void {.
      cdecl, importc: "DrawTextPro".}
else:
  static :
    hint("Declaration of " & "DrawTextPro" & " already exists, not redeclaring")
when not declared(DrawTextCodepoint):
  proc DrawTextCodepoint*(font: Font_520094202; codepoint: cint;
                          position: Vector2_520094143; fontSize: cfloat;
                          tint: Color_520094161): void {.cdecl,
      importc: "DrawTextCodepoint".}
else:
  static :
    hint("Declaration of " & "DrawTextCodepoint" &
        " already exists, not redeclaring")
when not declared(DrawTextCodepoints):
  proc DrawTextCodepoints*(font: Font_520094202; codepoints: ptr cint;
                           codepointCount: cint; position: Vector2_520094143;
                           fontSize: cfloat; spacing: cfloat; tint: Color_520094161): void {.
      cdecl, importc: "DrawTextCodepoints".}
else:
  static :
    hint("Declaration of " & "DrawTextCodepoints" &
        " already exists, not redeclaring")
when not declared(SetTextLineSpacing):
  proc SetTextLineSpacing*(spacing: cint): void {.cdecl,
      importc: "SetTextLineSpacing".}
else:
  static :
    hint("Declaration of " & "SetTextLineSpacing" &
        " already exists, not redeclaring")
when not declared(MeasureText):
  proc MeasureText*(text: cstring; fontSize: cint): cint {.cdecl,
      importc: "MeasureText".}
else:
  static :
    hint("Declaration of " & "MeasureText" & " already exists, not redeclaring")
when not declared(MeasureTextEx):
  proc MeasureTextEx*(font: Font_520094202; text: cstring; fontSize: cfloat;
                      spacing: cfloat): Vector2_520094143 {.cdecl,
      importc: "MeasureTextEx".}
else:
  static :
    hint("Declaration of " & "MeasureTextEx" &
        " already exists, not redeclaring")
when not declared(GetGlyphIndex):
  proc GetGlyphIndex*(font: Font_520094202; codepoint: cint): cint {.cdecl,
      importc: "GetGlyphIndex".}
else:
  static :
    hint("Declaration of " & "GetGlyphIndex" &
        " already exists, not redeclaring")
when not declared(GetGlyphInfo):
  proc GetGlyphInfo*(font: Font_520094202; codepoint: cint): GlyphInfo_520094191 {.
      cdecl, importc: "GetGlyphInfo".}
else:
  static :
    hint("Declaration of " & "GetGlyphInfo" & " already exists, not redeclaring")
when not declared(GetGlyphAtlasRec):
  proc GetGlyphAtlasRec*(font: Font_520094202; codepoint: cint): Rectangle_520094165 {.
      cdecl, importc: "GetGlyphAtlasRec".}
else:
  static :
    hint("Declaration of " & "GetGlyphAtlasRec" &
        " already exists, not redeclaring")
when not declared(LoadUTF8):
  proc LoadUTF8*(codepoints: ptr cint; length: cint): cstring {.cdecl,
      importc: "LoadUTF8".}
else:
  static :
    hint("Declaration of " & "LoadUTF8" & " already exists, not redeclaring")
when not declared(UnloadUTF8):
  proc UnloadUTF8*(text: cstring): void {.cdecl, importc: "UnloadUTF8".}
else:
  static :
    hint("Declaration of " & "UnloadUTF8" & " already exists, not redeclaring")
when not declared(LoadCodepoints):
  proc LoadCodepoints*(text: cstring; count: ptr cint): ptr cint {.cdecl,
      importc: "LoadCodepoints".}
else:
  static :
    hint("Declaration of " & "LoadCodepoints" &
        " already exists, not redeclaring")
when not declared(UnloadCodepoints):
  proc UnloadCodepoints*(codepoints: ptr cint): void {.cdecl,
      importc: "UnloadCodepoints".}
else:
  static :
    hint("Declaration of " & "UnloadCodepoints" &
        " already exists, not redeclaring")
when not declared(GetCodepointCount):
  proc GetCodepointCount*(text: cstring): cint {.cdecl,
      importc: "GetCodepointCount".}
else:
  static :
    hint("Declaration of " & "GetCodepointCount" &
        " already exists, not redeclaring")
when not declared(GetCodepoint):
  proc GetCodepoint*(text: cstring; codepointSize: ptr cint): cint {.cdecl,
      importc: "GetCodepoint".}
else:
  static :
    hint("Declaration of " & "GetCodepoint" & " already exists, not redeclaring")
when not declared(GetCodepointNext):
  proc GetCodepointNext*(text: cstring; codepointSize: ptr cint): cint {.cdecl,
      importc: "GetCodepointNext".}
else:
  static :
    hint("Declaration of " & "GetCodepointNext" &
        " already exists, not redeclaring")
when not declared(GetCodepointPrevious):
  proc GetCodepointPrevious*(text: cstring; codepointSize: ptr cint): cint {.
      cdecl, importc: "GetCodepointPrevious".}
else:
  static :
    hint("Declaration of " & "GetCodepointPrevious" &
        " already exists, not redeclaring")
when not declared(CodepointToUTF8):
  proc CodepointToUTF8*(codepoint: cint; utf8Size: ptr cint): cstring {.cdecl,
      importc: "CodepointToUTF8".}
else:
  static :
    hint("Declaration of " & "CodepointToUTF8" &
        " already exists, not redeclaring")
when not declared(TextCopy):
  proc TextCopy*(dst: cstring; src: cstring): cint {.cdecl, importc: "TextCopy".}
else:
  static :
    hint("Declaration of " & "TextCopy" & " already exists, not redeclaring")
when not declared(TextIsEqual):
  proc TextIsEqual*(text1: cstring; text2: cstring): bool {.cdecl,
      importc: "TextIsEqual".}
else:
  static :
    hint("Declaration of " & "TextIsEqual" & " already exists, not redeclaring")
when not declared(TextLength):
  proc TextLength*(text: cstring): cuint {.cdecl, importc: "TextLength".}
else:
  static :
    hint("Declaration of " & "TextLength" & " already exists, not redeclaring")
when not declared(TextFormat):
  proc TextFormat*(text: cstring): cstring {.cdecl, varargs,
      importc: "TextFormat".}
else:
  static :
    hint("Declaration of " & "TextFormat" & " already exists, not redeclaring")
when not declared(TextSubtext):
  proc TextSubtext*(text: cstring; position: cint; length: cint): cstring {.
      cdecl, importc: "TextSubtext".}
else:
  static :
    hint("Declaration of " & "TextSubtext" & " already exists, not redeclaring")
when not declared(TextReplace):
  proc TextReplace*(text: cstring; replace: cstring; by: cstring): cstring {.
      cdecl, importc: "TextReplace".}
else:
  static :
    hint("Declaration of " & "TextReplace" & " already exists, not redeclaring")
when not declared(TextInsert):
  proc TextInsert*(text: cstring; insert: cstring; position: cint): cstring {.
      cdecl, importc: "TextInsert".}
else:
  static :
    hint("Declaration of " & "TextInsert" & " already exists, not redeclaring")
when not declared(TextJoin):
  proc TextJoin*(textList: ptr cstring; count: cint; delimiter: cstring): cstring {.
      cdecl, importc: "TextJoin".}
else:
  static :
    hint("Declaration of " & "TextJoin" & " already exists, not redeclaring")
when not declared(TextSplit):
  proc TextSplit*(text: cstring; delimiter: cschar; count: ptr cint): ptr cstring {.
      cdecl, importc: "TextSplit".}
else:
  static :
    hint("Declaration of " & "TextSplit" & " already exists, not redeclaring")
when not declared(TextAppend):
  proc TextAppend*(text: cstring; append: cstring; position: ptr cint): void {.
      cdecl, importc: "TextAppend".}
else:
  static :
    hint("Declaration of " & "TextAppend" & " already exists, not redeclaring")
when not declared(TextFindIndex):
  proc TextFindIndex*(text: cstring; find: cstring): cint {.cdecl,
      importc: "TextFindIndex".}
else:
  static :
    hint("Declaration of " & "TextFindIndex" &
        " already exists, not redeclaring")
when not declared(TextToUpper):
  proc TextToUpper*(text: cstring): cstring {.cdecl, importc: "TextToUpper".}
else:
  static :
    hint("Declaration of " & "TextToUpper" & " already exists, not redeclaring")
when not declared(TextToLower):
  proc TextToLower*(text: cstring): cstring {.cdecl, importc: "TextToLower".}
else:
  static :
    hint("Declaration of " & "TextToLower" & " already exists, not redeclaring")
when not declared(TextToPascal):
  proc TextToPascal*(text: cstring): cstring {.cdecl, importc: "TextToPascal".}
else:
  static :
    hint("Declaration of " & "TextToPascal" & " already exists, not redeclaring")
when not declared(TextToInteger):
  proc TextToInteger*(text: cstring): cint {.cdecl, importc: "TextToInteger".}
else:
  static :
    hint("Declaration of " & "TextToInteger" &
        " already exists, not redeclaring")
when not declared(TextToFloat):
  proc TextToFloat*(text: cstring): cfloat {.cdecl, importc: "TextToFloat".}
else:
  static :
    hint("Declaration of " & "TextToFloat" & " already exists, not redeclaring")
when not declared(DrawLine3D):
  proc DrawLine3D*(startPos: Vector3_520094147; endPos: Vector3_520094147;
                   color: Color_520094161): void {.cdecl, importc: "DrawLine3D".}
else:
  static :
    hint("Declaration of " & "DrawLine3D" & " already exists, not redeclaring")
when not declared(DrawPoint3D):
  proc DrawPoint3D*(position: Vector3_520094147; color: Color_520094161): void {.
      cdecl, importc: "DrawPoint3D".}
else:
  static :
    hint("Declaration of " & "DrawPoint3D" & " already exists, not redeclaring")
when not declared(DrawCircle3D):
  proc DrawCircle3D*(center: Vector3_520094147; radius: cfloat;
                     rotationAxis: Vector3_520094147; rotationAngle: cfloat;
                     color: Color_520094161): void {.cdecl,
      importc: "DrawCircle3D".}
else:
  static :
    hint("Declaration of " & "DrawCircle3D" & " already exists, not redeclaring")
when not declared(DrawTriangle3D):
  proc DrawTriangle3D*(v1: Vector3_520094147; v2: Vector3_520094147;
                       v3: Vector3_520094147; color: Color_520094161): void {.
      cdecl, importc: "DrawTriangle3D".}
else:
  static :
    hint("Declaration of " & "DrawTriangle3D" &
        " already exists, not redeclaring")
when not declared(DrawTriangleStrip3D):
  proc DrawTriangleStrip3D*(points: ptr Vector3_520094147; pointCount: cint;
                            color: Color_520094161): void {.cdecl,
      importc: "DrawTriangleStrip3D".}
else:
  static :
    hint("Declaration of " & "DrawTriangleStrip3D" &
        " already exists, not redeclaring")
when not declared(DrawCube):
  proc DrawCube*(position: Vector3_520094147; width: cfloat; height: cfloat;
                 length: cfloat; color: Color_520094161): void {.cdecl,
      importc: "DrawCube".}
else:
  static :
    hint("Declaration of " & "DrawCube" & " already exists, not redeclaring")
when not declared(DrawCubeV):
  proc DrawCubeV*(position: Vector3_520094147; size: Vector3_520094147;
                  color: Color_520094161): void {.cdecl, importc: "DrawCubeV".}
else:
  static :
    hint("Declaration of " & "DrawCubeV" & " already exists, not redeclaring")
when not declared(DrawCubeWires):
  proc DrawCubeWires*(position: Vector3_520094147; width: cfloat;
                      height: cfloat; length: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawCubeWires".}
else:
  static :
    hint("Declaration of " & "DrawCubeWires" &
        " already exists, not redeclaring")
when not declared(DrawCubeWiresV):
  proc DrawCubeWiresV*(position: Vector3_520094147; size: Vector3_520094147;
                       color: Color_520094161): void {.cdecl,
      importc: "DrawCubeWiresV".}
else:
  static :
    hint("Declaration of " & "DrawCubeWiresV" &
        " already exists, not redeclaring")
when not declared(DrawSphere):
  proc DrawSphere*(centerPos: Vector3_520094147; radius: cfloat; color: Color_520094161): void {.
      cdecl, importc: "DrawSphere".}
else:
  static :
    hint("Declaration of " & "DrawSphere" & " already exists, not redeclaring")
when not declared(DrawSphereEx):
  proc DrawSphereEx*(centerPos: Vector3_520094147; radius: cfloat; rings: cint;
                     slices: cint; color: Color_520094161): void {.cdecl,
      importc: "DrawSphereEx".}
else:
  static :
    hint("Declaration of " & "DrawSphereEx" & " already exists, not redeclaring")
when not declared(DrawSphereWires):
  proc DrawSphereWires*(centerPos: Vector3_520094147; radius: cfloat;
                        rings: cint; slices: cint; color: Color_520094161): void {.
      cdecl, importc: "DrawSphereWires".}
else:
  static :
    hint("Declaration of " & "DrawSphereWires" &
        " already exists, not redeclaring")
when not declared(DrawCylinder):
  proc DrawCylinder*(position: Vector3_520094147; radiusTop: cfloat;
                     radiusBottom: cfloat; height: cfloat; slices: cint;
                     color: Color_520094161): void {.cdecl,
      importc: "DrawCylinder".}
else:
  static :
    hint("Declaration of " & "DrawCylinder" & " already exists, not redeclaring")
when not declared(DrawCylinderEx):
  proc DrawCylinderEx*(startPos: Vector3_520094147; endPos: Vector3_520094147;
                       startRadius: cfloat; endRadius: cfloat; sides: cint;
                       color: Color_520094161): void {.cdecl,
      importc: "DrawCylinderEx".}
else:
  static :
    hint("Declaration of " & "DrawCylinderEx" &
        " already exists, not redeclaring")
when not declared(DrawCylinderWires):
  proc DrawCylinderWires*(position: Vector3_520094147; radiusTop: cfloat;
                          radiusBottom: cfloat; height: cfloat; slices: cint;
                          color: Color_520094161): void {.cdecl,
      importc: "DrawCylinderWires".}
else:
  static :
    hint("Declaration of " & "DrawCylinderWires" &
        " already exists, not redeclaring")
when not declared(DrawCylinderWiresEx):
  proc DrawCylinderWiresEx*(startPos: Vector3_520094147; endPos: Vector3_520094147;
                            startRadius: cfloat; endRadius: cfloat; sides: cint;
                            color: Color_520094161): void {.cdecl,
      importc: "DrawCylinderWiresEx".}
else:
  static :
    hint("Declaration of " & "DrawCylinderWiresEx" &
        " already exists, not redeclaring")
when not declared(DrawCapsule):
  proc DrawCapsule*(startPos: Vector3_520094147; endPos: Vector3_520094147;
                    radius: cfloat; slices: cint; rings: cint; color: Color_520094161): void {.
      cdecl, importc: "DrawCapsule".}
else:
  static :
    hint("Declaration of " & "DrawCapsule" & " already exists, not redeclaring")
when not declared(DrawCapsuleWires):
  proc DrawCapsuleWires*(startPos: Vector3_520094147; endPos: Vector3_520094147;
                         radius: cfloat; slices: cint; rings: cint; color: Color_520094161): void {.
      cdecl, importc: "DrawCapsuleWires".}
else:
  static :
    hint("Declaration of " & "DrawCapsuleWires" &
        " already exists, not redeclaring")
when not declared(DrawPlane):
  proc DrawPlane*(centerPos: Vector3_520094147; size: Vector2_520094143;
                  color: Color_520094161): void {.cdecl, importc: "DrawPlane".}
else:
  static :
    hint("Declaration of " & "DrawPlane" & " already exists, not redeclaring")
when not declared(DrawRay):
  proc DrawRay*(ray: Ray_520094248; color: Color_520094161): void {.cdecl,
      importc: "DrawRay".}
else:
  static :
    hint("Declaration of " & "DrawRay" & " already exists, not redeclaring")
when not declared(DrawGrid):
  proc DrawGrid*(slices: cint; spacing: cfloat): void {.cdecl,
      importc: "DrawGrid".}
else:
  static :
    hint("Declaration of " & "DrawGrid" & " already exists, not redeclaring")
when not declared(LoadModel):
  proc LoadModel*(fileName: cstring): Model_520094240 {.cdecl,
      importc: "LoadModel".}
else:
  static :
    hint("Declaration of " & "LoadModel" & " already exists, not redeclaring")
when not declared(LoadModelFromMesh):
  proc LoadModelFromMesh*(mesh: Mesh_520094216): Model_520094240 {.cdecl,
      importc: "LoadModelFromMesh".}
else:
  static :
    hint("Declaration of " & "LoadModelFromMesh" &
        " already exists, not redeclaring")
when not declared(IsModelReady):
  proc IsModelReady*(model: Model_520094240): bool {.cdecl,
      importc: "IsModelReady".}
else:
  static :
    hint("Declaration of " & "IsModelReady" & " already exists, not redeclaring")
when not declared(UnloadModel):
  proc UnloadModel*(model: Model_520094240): void {.cdecl,
      importc: "UnloadModel".}
else:
  static :
    hint("Declaration of " & "UnloadModel" & " already exists, not redeclaring")
when not declared(GetModelBoundingBox):
  proc GetModelBoundingBox*(model: Model_520094240): BoundingBox_520094256 {.
      cdecl, importc: "GetModelBoundingBox".}
else:
  static :
    hint("Declaration of " & "GetModelBoundingBox" &
        " already exists, not redeclaring")
when not declared(DrawModel):
  proc DrawModel*(model: Model_520094240; position: Vector3_520094147;
                  scale: cfloat; tint: Color_520094161): void {.cdecl,
      importc: "DrawModel".}
else:
  static :
    hint("Declaration of " & "DrawModel" & " already exists, not redeclaring")
when not declared(DrawModelEx):
  proc DrawModelEx*(model: Model_520094240; position: Vector3_520094147;
                    rotationAxis: Vector3_520094147; rotationAngle: cfloat;
                    scale: Vector3_520094147; tint: Color_520094161): void {.
      cdecl, importc: "DrawModelEx".}
else:
  static :
    hint("Declaration of " & "DrawModelEx" & " already exists, not redeclaring")
when not declared(DrawModelWires):
  proc DrawModelWires*(model: Model_520094240; position: Vector3_520094147;
                       scale: cfloat; tint: Color_520094161): void {.cdecl,
      importc: "DrawModelWires".}
else:
  static :
    hint("Declaration of " & "DrawModelWires" &
        " already exists, not redeclaring")
when not declared(DrawModelWiresEx):
  proc DrawModelWiresEx*(model: Model_520094240; position: Vector3_520094147;
                         rotationAxis: Vector3_520094147; rotationAngle: cfloat;
                         scale: Vector3_520094147; tint: Color_520094161): void {.
      cdecl, importc: "DrawModelWiresEx".}
else:
  static :
    hint("Declaration of " & "DrawModelWiresEx" &
        " already exists, not redeclaring")
when not declared(DrawBoundingBox):
  proc DrawBoundingBox*(box: BoundingBox_520094256; color: Color_520094161): void {.
      cdecl, importc: "DrawBoundingBox".}
else:
  static :
    hint("Declaration of " & "DrawBoundingBox" &
        " already exists, not redeclaring")
when not declared(DrawBillboard):
  proc DrawBillboard*(camera: Camera_520094208; texture: Texture2D_520094175;
                      position: Vector3_520094147; size: cfloat; tint: Color_520094161): void {.
      cdecl, importc: "DrawBillboard".}
else:
  static :
    hint("Declaration of " & "DrawBillboard" &
        " already exists, not redeclaring")
when not declared(DrawBillboardRec):
  proc DrawBillboardRec*(camera: Camera_520094208; texture: Texture2D_520094175;
                         source: Rectangle_520094165; position: Vector3_520094147;
                         size: Vector2_520094143; tint: Color_520094161): void {.
      cdecl, importc: "DrawBillboardRec".}
else:
  static :
    hint("Declaration of " & "DrawBillboardRec" &
        " already exists, not redeclaring")
when not declared(DrawBillboardPro):
  proc DrawBillboardPro*(camera: Camera_520094208; texture: Texture2D_520094175;
                         source: Rectangle_520094165; position: Vector3_520094147;
                         up: Vector3_520094147; size: Vector2_520094143;
                         origin: Vector2_520094143; rotation: cfloat;
                         tint: Color_520094161): void {.cdecl,
      importc: "DrawBillboardPro".}
else:
  static :
    hint("Declaration of " & "DrawBillboardPro" &
        " already exists, not redeclaring")
when not declared(UploadMesh):
  proc UploadMesh*(mesh: ptr Mesh_520094216; dynamic: bool): void {.cdecl,
      importc: "UploadMesh".}
else:
  static :
    hint("Declaration of " & "UploadMesh" & " already exists, not redeclaring")
when not declared(UpdateMeshBuffer):
  proc UpdateMeshBuffer*(mesh: Mesh_520094216; index: cint; data: pointer;
                         dataSize: cint; offset: cint): void {.cdecl,
      importc: "UpdateMeshBuffer".}
else:
  static :
    hint("Declaration of " & "UpdateMeshBuffer" &
        " already exists, not redeclaring")
when not declared(UnloadMesh):
  proc UnloadMesh*(mesh: Mesh_520094216): void {.cdecl, importc: "UnloadMesh".}
else:
  static :
    hint("Declaration of " & "UnloadMesh" & " already exists, not redeclaring")
when not declared(DrawMesh):
  proc DrawMesh*(mesh: Mesh_520094216; material: Material_520094228;
                 transform: Matrix_520094157): void {.cdecl, importc: "DrawMesh".}
else:
  static :
    hint("Declaration of " & "DrawMesh" & " already exists, not redeclaring")
when not declared(DrawMeshInstanced):
  proc DrawMeshInstanced*(mesh: Mesh_520094216; material: Material_520094228;
                          transforms: ptr Matrix_520094157; instances: cint): void {.
      cdecl, importc: "DrawMeshInstanced".}
else:
  static :
    hint("Declaration of " & "DrawMeshInstanced" &
        " already exists, not redeclaring")
when not declared(GetMeshBoundingBox):
  proc GetMeshBoundingBox*(mesh: Mesh_520094216): BoundingBox_520094256 {.cdecl,
      importc: "GetMeshBoundingBox".}
else:
  static :
    hint("Declaration of " & "GetMeshBoundingBox" &
        " already exists, not redeclaring")
when not declared(GenMeshTangents):
  proc GenMeshTangents*(mesh: ptr Mesh_520094216): void {.cdecl,
      importc: "GenMeshTangents".}
else:
  static :
    hint("Declaration of " & "GenMeshTangents" &
        " already exists, not redeclaring")
when not declared(ExportMesh):
  proc ExportMesh*(mesh: Mesh_520094216; fileName: cstring): bool {.cdecl,
      importc: "ExportMesh".}
else:
  static :
    hint("Declaration of " & "ExportMesh" & " already exists, not redeclaring")
when not declared(ExportMeshAsCode):
  proc ExportMeshAsCode*(mesh: Mesh_520094216; fileName: cstring): bool {.cdecl,
      importc: "ExportMeshAsCode".}
else:
  static :
    hint("Declaration of " & "ExportMeshAsCode" &
        " already exists, not redeclaring")
when not declared(GenMeshPoly):
  proc GenMeshPoly*(sides: cint; radius: cfloat): Mesh_520094216 {.cdecl,
      importc: "GenMeshPoly".}
else:
  static :
    hint("Declaration of " & "GenMeshPoly" & " already exists, not redeclaring")
when not declared(GenMeshPlane):
  proc GenMeshPlane*(width: cfloat; length: cfloat; resX: cint; resZ: cint): Mesh_520094216 {.
      cdecl, importc: "GenMeshPlane".}
else:
  static :
    hint("Declaration of " & "GenMeshPlane" & " already exists, not redeclaring")
when not declared(GenMeshCube):
  proc GenMeshCube*(width: cfloat; height: cfloat; length: cfloat): Mesh_520094216 {.
      cdecl, importc: "GenMeshCube".}
else:
  static :
    hint("Declaration of " & "GenMeshCube" & " already exists, not redeclaring")
when not declared(GenMeshSphere):
  proc GenMeshSphere*(radius: cfloat; rings: cint; slices: cint): Mesh_520094216 {.
      cdecl, importc: "GenMeshSphere".}
else:
  static :
    hint("Declaration of " & "GenMeshSphere" &
        " already exists, not redeclaring")
when not declared(GenMeshHemiSphere):
  proc GenMeshHemiSphere*(radius: cfloat; rings: cint; slices: cint): Mesh_520094216 {.
      cdecl, importc: "GenMeshHemiSphere".}
else:
  static :
    hint("Declaration of " & "GenMeshHemiSphere" &
        " already exists, not redeclaring")
when not declared(GenMeshCylinder):
  proc GenMeshCylinder*(radius: cfloat; height: cfloat; slices: cint): Mesh_520094216 {.
      cdecl, importc: "GenMeshCylinder".}
else:
  static :
    hint("Declaration of " & "GenMeshCylinder" &
        " already exists, not redeclaring")
when not declared(GenMeshCone):
  proc GenMeshCone*(radius: cfloat; height: cfloat; slices: cint): Mesh_520094216 {.
      cdecl, importc: "GenMeshCone".}
else:
  static :
    hint("Declaration of " & "GenMeshCone" & " already exists, not redeclaring")
when not declared(GenMeshTorus):
  proc GenMeshTorus*(radius: cfloat; size: cfloat; radSeg: cint; sides: cint): Mesh_520094216 {.
      cdecl, importc: "GenMeshTorus".}
else:
  static :
    hint("Declaration of " & "GenMeshTorus" & " already exists, not redeclaring")
when not declared(GenMeshKnot):
  proc GenMeshKnot*(radius: cfloat; size: cfloat; radSeg: cint; sides: cint): Mesh_520094216 {.
      cdecl, importc: "GenMeshKnot".}
else:
  static :
    hint("Declaration of " & "GenMeshKnot" & " already exists, not redeclaring")
when not declared(GenMeshHeightmap):
  proc GenMeshHeightmap*(heightmap: Image_520094169; size: Vector3_520094147): Mesh_520094216 {.
      cdecl, importc: "GenMeshHeightmap".}
else:
  static :
    hint("Declaration of " & "GenMeshHeightmap" &
        " already exists, not redeclaring")
when not declared(GenMeshCubicmap):
  proc GenMeshCubicmap*(cubicmap: Image_520094169; cubeSize: Vector3_520094147): Mesh_520094216 {.
      cdecl, importc: "GenMeshCubicmap".}
else:
  static :
    hint("Declaration of " & "GenMeshCubicmap" &
        " already exists, not redeclaring")
when not declared(LoadMaterials):
  proc LoadMaterials*(fileName: cstring; materialCount: ptr cint): ptr Material_520094228 {.
      cdecl, importc: "LoadMaterials".}
else:
  static :
    hint("Declaration of " & "LoadMaterials" &
        " already exists, not redeclaring")
when not declared(LoadMaterialDefault):
  proc LoadMaterialDefault*(): Material_520094228 {.cdecl,
      importc: "LoadMaterialDefault".}
else:
  static :
    hint("Declaration of " & "LoadMaterialDefault" &
        " already exists, not redeclaring")
when not declared(IsMaterialReady):
  proc IsMaterialReady*(material: Material_520094228): bool {.cdecl,
      importc: "IsMaterialReady".}
else:
  static :
    hint("Declaration of " & "IsMaterialReady" &
        " already exists, not redeclaring")
when not declared(UnloadMaterial):
  proc UnloadMaterial*(material: Material_520094228): void {.cdecl,
      importc: "UnloadMaterial".}
else:
  static :
    hint("Declaration of " & "UnloadMaterial" &
        " already exists, not redeclaring")
when not declared(SetMaterialTexture):
  proc SetMaterialTexture*(material: ptr Material_520094228; mapType: cint;
                           texture: Texture2D_520094175): void {.cdecl,
      importc: "SetMaterialTexture".}
else:
  static :
    hint("Declaration of " & "SetMaterialTexture" &
        " already exists, not redeclaring")
when not declared(SetModelMeshMaterial):
  proc SetModelMeshMaterial*(model: ptr Model_520094240; meshId: cint;
                             materialId: cint): void {.cdecl,
      importc: "SetModelMeshMaterial".}
else:
  static :
    hint("Declaration of " & "SetModelMeshMaterial" &
        " already exists, not redeclaring")
when not declared(LoadModelAnimations):
  proc LoadModelAnimations*(fileName: cstring; animCount: ptr cint): ptr ModelAnimation_520094244 {.
      cdecl, importc: "LoadModelAnimations".}
else:
  static :
    hint("Declaration of " & "LoadModelAnimations" &
        " already exists, not redeclaring")
when not declared(UpdateModelAnimation):
  proc UpdateModelAnimation*(model: Model_520094240; anim: ModelAnimation_520094244;
                             frame: cint): void {.cdecl,
      importc: "UpdateModelAnimation".}
else:
  static :
    hint("Declaration of " & "UpdateModelAnimation" &
        " already exists, not redeclaring")
when not declared(UnloadModelAnimation):
  proc UnloadModelAnimation*(anim: ModelAnimation_520094244): void {.cdecl,
      importc: "UnloadModelAnimation".}
else:
  static :
    hint("Declaration of " & "UnloadModelAnimation" &
        " already exists, not redeclaring")
when not declared(UnloadModelAnimations):
  proc UnloadModelAnimations*(animations: ptr ModelAnimation_520094244;
                              animCount: cint): void {.cdecl,
      importc: "UnloadModelAnimations".}
else:
  static :
    hint("Declaration of " & "UnloadModelAnimations" &
        " already exists, not redeclaring")
when not declared(IsModelAnimationValid):
  proc IsModelAnimationValid*(model: Model_520094240; anim: ModelAnimation_520094244): bool {.
      cdecl, importc: "IsModelAnimationValid".}
else:
  static :
    hint("Declaration of " & "IsModelAnimationValid" &
        " already exists, not redeclaring")
when not declared(CheckCollisionSpheres):
  proc CheckCollisionSpheres*(center1: Vector3_520094147; radius1: cfloat;
                              center2: Vector3_520094147; radius2: cfloat): bool {.
      cdecl, importc: "CheckCollisionSpheres".}
else:
  static :
    hint("Declaration of " & "CheckCollisionSpheres" &
        " already exists, not redeclaring")
when not declared(CheckCollisionBoxes):
  proc CheckCollisionBoxes*(box1: BoundingBox_520094256; box2: BoundingBox_520094256): bool {.
      cdecl, importc: "CheckCollisionBoxes".}
else:
  static :
    hint("Declaration of " & "CheckCollisionBoxes" &
        " already exists, not redeclaring")
when not declared(CheckCollisionBoxSphere):
  proc CheckCollisionBoxSphere*(box: BoundingBox_520094256; center: Vector3_520094147;
                                radius: cfloat): bool {.cdecl,
      importc: "CheckCollisionBoxSphere".}
else:
  static :
    hint("Declaration of " & "CheckCollisionBoxSphere" &
        " already exists, not redeclaring")
when not declared(GetRayCollisionSphere):
  proc GetRayCollisionSphere*(ray: Ray_520094248; center: Vector3_520094147;
                              radius: cfloat): RayCollision_520094252 {.cdecl,
      importc: "GetRayCollisionSphere".}
else:
  static :
    hint("Declaration of " & "GetRayCollisionSphere" &
        " already exists, not redeclaring")
when not declared(GetRayCollisionBox):
  proc GetRayCollisionBox*(ray: Ray_520094248; box: BoundingBox_520094256): RayCollision_520094252 {.
      cdecl, importc: "GetRayCollisionBox".}
else:
  static :
    hint("Declaration of " & "GetRayCollisionBox" &
        " already exists, not redeclaring")
when not declared(GetRayCollisionMesh):
  proc GetRayCollisionMesh*(ray: Ray_520094248; mesh: Mesh_520094216;
                            transform: Matrix_520094157): RayCollision_520094252 {.
      cdecl, importc: "GetRayCollisionMesh".}
else:
  static :
    hint("Declaration of " & "GetRayCollisionMesh" &
        " already exists, not redeclaring")
when not declared(GetRayCollisionTriangle):
  proc GetRayCollisionTriangle*(ray: Ray_520094248; p1: Vector3_520094147;
                                p2: Vector3_520094147; p3: Vector3_520094147): RayCollision_520094252 {.
      cdecl, importc: "GetRayCollisionTriangle".}
else:
  static :
    hint("Declaration of " & "GetRayCollisionTriangle" &
        " already exists, not redeclaring")
when not declared(GetRayCollisionQuad):
  proc GetRayCollisionQuad*(ray: Ray_520094248; p1: Vector3_520094147;
                            p2: Vector3_520094147; p3: Vector3_520094147;
                            p4: Vector3_520094147): RayCollision_520094252 {.
      cdecl, importc: "GetRayCollisionQuad".}
else:
  static :
    hint("Declaration of " & "GetRayCollisionQuad" &
        " already exists, not redeclaring")
when not declared(InitAudioDevice):
  proc InitAudioDevice*(): void {.cdecl, importc: "InitAudioDevice".}
else:
  static :
    hint("Declaration of " & "InitAudioDevice" &
        " already exists, not redeclaring")
when not declared(CloseAudioDevice):
  proc CloseAudioDevice*(): void {.cdecl, importc: "CloseAudioDevice".}
else:
  static :
    hint("Declaration of " & "CloseAudioDevice" &
        " already exists, not redeclaring")
when not declared(IsAudioDeviceReady):
  proc IsAudioDeviceReady*(): bool {.cdecl, importc: "IsAudioDeviceReady".}
else:
  static :
    hint("Declaration of " & "IsAudioDeviceReady" &
        " already exists, not redeclaring")
when not declared(SetMasterVolume):
  proc SetMasterVolume*(volume: cfloat): void {.cdecl,
      importc: "SetMasterVolume".}
else:
  static :
    hint("Declaration of " & "SetMasterVolume" &
        " already exists, not redeclaring")
when not declared(GetMasterVolume):
  proc GetMasterVolume*(): cfloat {.cdecl, importc: "GetMasterVolume".}
else:
  static :
    hint("Declaration of " & "GetMasterVolume" &
        " already exists, not redeclaring")
when not declared(LoadWave):
  proc LoadWave*(fileName: cstring): Wave_520094260 {.cdecl, importc: "LoadWave".}
else:
  static :
    hint("Declaration of " & "LoadWave" & " already exists, not redeclaring")
when not declared(LoadWaveFromMemory):
  proc LoadWaveFromMemory*(fileType: cstring; fileData: ptr uint8;
                           dataSize: cint): Wave_520094260 {.cdecl,
      importc: "LoadWaveFromMemory".}
else:
  static :
    hint("Declaration of " & "LoadWaveFromMemory" &
        " already exists, not redeclaring")
when not declared(IsWaveReady):
  proc IsWaveReady*(wave: Wave_520094260): bool {.cdecl, importc: "IsWaveReady".}
else:
  static :
    hint("Declaration of " & "IsWaveReady" & " already exists, not redeclaring")
when not declared(LoadSound):
  proc LoadSound*(fileName: cstring): Sound_520094272 {.cdecl,
      importc: "LoadSound".}
else:
  static :
    hint("Declaration of " & "LoadSound" & " already exists, not redeclaring")
when not declared(LoadSoundFromWave):
  proc LoadSoundFromWave*(wave: Wave_520094260): Sound_520094272 {.cdecl,
      importc: "LoadSoundFromWave".}
else:
  static :
    hint("Declaration of " & "LoadSoundFromWave" &
        " already exists, not redeclaring")
when not declared(LoadSoundAlias):
  proc LoadSoundAlias*(source: Sound_520094272): Sound_520094272 {.cdecl,
      importc: "LoadSoundAlias".}
else:
  static :
    hint("Declaration of " & "LoadSoundAlias" &
        " already exists, not redeclaring")
when not declared(IsSoundReady):
  proc IsSoundReady*(sound: Sound_520094272): bool {.cdecl,
      importc: "IsSoundReady".}
else:
  static :
    hint("Declaration of " & "IsSoundReady" & " already exists, not redeclaring")
when not declared(UpdateSound):
  proc UpdateSound*(sound: Sound_520094272; data: pointer; sampleCount: cint): void {.
      cdecl, importc: "UpdateSound".}
else:
  static :
    hint("Declaration of " & "UpdateSound" & " already exists, not redeclaring")
when not declared(UnloadWave):
  proc UnloadWave*(wave: Wave_520094260): void {.cdecl, importc: "UnloadWave".}
else:
  static :
    hint("Declaration of " & "UnloadWave" & " already exists, not redeclaring")
when not declared(UnloadSound):
  proc UnloadSound*(sound: Sound_520094272): void {.cdecl,
      importc: "UnloadSound".}
else:
  static :
    hint("Declaration of " & "UnloadSound" & " already exists, not redeclaring")
when not declared(UnloadSoundAlias):
  proc UnloadSoundAlias*(alias: Sound_520094272): void {.cdecl,
      importc: "UnloadSoundAlias".}
else:
  static :
    hint("Declaration of " & "UnloadSoundAlias" &
        " already exists, not redeclaring")
when not declared(ExportWave):
  proc ExportWave*(wave: Wave_520094260; fileName: cstring): bool {.cdecl,
      importc: "ExportWave".}
else:
  static :
    hint("Declaration of " & "ExportWave" & " already exists, not redeclaring")
when not declared(ExportWaveAsCode):
  proc ExportWaveAsCode*(wave: Wave_520094260; fileName: cstring): bool {.cdecl,
      importc: "ExportWaveAsCode".}
else:
  static :
    hint("Declaration of " & "ExportWaveAsCode" &
        " already exists, not redeclaring")
when not declared(PlaySound):
  proc PlaySound*(sound: Sound_520094272): void {.cdecl, importc: "PlaySound".}
else:
  static :
    hint("Declaration of " & "PlaySound" & " already exists, not redeclaring")
when not declared(StopSound):
  proc StopSound*(sound: Sound_520094272): void {.cdecl, importc: "StopSound".}
else:
  static :
    hint("Declaration of " & "StopSound" & " already exists, not redeclaring")
when not declared(PauseSound):
  proc PauseSound*(sound: Sound_520094272): void {.cdecl, importc: "PauseSound".}
else:
  static :
    hint("Declaration of " & "PauseSound" & " already exists, not redeclaring")
when not declared(ResumeSound):
  proc ResumeSound*(sound: Sound_520094272): void {.cdecl,
      importc: "ResumeSound".}
else:
  static :
    hint("Declaration of " & "ResumeSound" & " already exists, not redeclaring")
when not declared(IsSoundPlaying):
  proc IsSoundPlaying*(sound: Sound_520094272): bool {.cdecl,
      importc: "IsSoundPlaying".}
else:
  static :
    hint("Declaration of " & "IsSoundPlaying" &
        " already exists, not redeclaring")
when not declared(SetSoundVolume):
  proc SetSoundVolume*(sound: Sound_520094272; volume: cfloat): void {.cdecl,
      importc: "SetSoundVolume".}
else:
  static :
    hint("Declaration of " & "SetSoundVolume" &
        " already exists, not redeclaring")
when not declared(SetSoundPitch):
  proc SetSoundPitch*(sound: Sound_520094272; pitch: cfloat): void {.cdecl,
      importc: "SetSoundPitch".}
else:
  static :
    hint("Declaration of " & "SetSoundPitch" &
        " already exists, not redeclaring")
when not declared(SetSoundPan):
  proc SetSoundPan*(sound: Sound_520094272; pan: cfloat): void {.cdecl,
      importc: "SetSoundPan".}
else:
  static :
    hint("Declaration of " & "SetSoundPan" & " already exists, not redeclaring")
when not declared(WaveCopy):
  proc WaveCopy*(wave: Wave_520094260): Wave_520094260 {.cdecl,
      importc: "WaveCopy".}
else:
  static :
    hint("Declaration of " & "WaveCopy" & " already exists, not redeclaring")
when not declared(WaveCrop):
  proc WaveCrop*(wave: ptr Wave_520094260; initSample: cint; finalSample: cint): void {.
      cdecl, importc: "WaveCrop".}
else:
  static :
    hint("Declaration of " & "WaveCrop" & " already exists, not redeclaring")
when not declared(WaveFormat):
  proc WaveFormat*(wave: ptr Wave_520094260; sampleRate: cint; sampleSize: cint;
                   channels: cint): void {.cdecl, importc: "WaveFormat".}
else:
  static :
    hint("Declaration of " & "WaveFormat" & " already exists, not redeclaring")
when not declared(LoadWaveSamples):
  proc LoadWaveSamples*(wave: Wave_520094260): ptr cfloat {.cdecl,
      importc: "LoadWaveSamples".}
else:
  static :
    hint("Declaration of " & "LoadWaveSamples" &
        " already exists, not redeclaring")
when not declared(UnloadWaveSamples):
  proc UnloadWaveSamples*(samples: ptr cfloat): void {.cdecl,
      importc: "UnloadWaveSamples".}
else:
  static :
    hint("Declaration of " & "UnloadWaveSamples" &
        " already exists, not redeclaring")
when not declared(LoadMusicStream):
  proc LoadMusicStream*(fileName: cstring): Music_520094276 {.cdecl,
      importc: "LoadMusicStream".}
else:
  static :
    hint("Declaration of " & "LoadMusicStream" &
        " already exists, not redeclaring")
when not declared(LoadMusicStreamFromMemory):
  proc LoadMusicStreamFromMemory*(fileType: cstring; data: ptr uint8;
                                  dataSize: cint): Music_520094276 {.cdecl,
      importc: "LoadMusicStreamFromMemory".}
else:
  static :
    hint("Declaration of " & "LoadMusicStreamFromMemory" &
        " already exists, not redeclaring")
when not declared(IsMusicReady):
  proc IsMusicReady*(music: Music_520094276): bool {.cdecl,
      importc: "IsMusicReady".}
else:
  static :
    hint("Declaration of " & "IsMusicReady" & " already exists, not redeclaring")
when not declared(UnloadMusicStream):
  proc UnloadMusicStream*(music: Music_520094276): void {.cdecl,
      importc: "UnloadMusicStream".}
else:
  static :
    hint("Declaration of " & "UnloadMusicStream" &
        " already exists, not redeclaring")
when not declared(PlayMusicStream):
  proc PlayMusicStream*(music: Music_520094276): void {.cdecl,
      importc: "PlayMusicStream".}
else:
  static :
    hint("Declaration of " & "PlayMusicStream" &
        " already exists, not redeclaring")
when not declared(IsMusicStreamPlaying):
  proc IsMusicStreamPlaying*(music: Music_520094276): bool {.cdecl,
      importc: "IsMusicStreamPlaying".}
else:
  static :
    hint("Declaration of " & "IsMusicStreamPlaying" &
        " already exists, not redeclaring")
when not declared(UpdateMusicStream):
  proc UpdateMusicStream*(music: Music_520094276): void {.cdecl,
      importc: "UpdateMusicStream".}
else:
  static :
    hint("Declaration of " & "UpdateMusicStream" &
        " already exists, not redeclaring")
when not declared(StopMusicStream):
  proc StopMusicStream*(music: Music_520094276): void {.cdecl,
      importc: "StopMusicStream".}
else:
  static :
    hint("Declaration of " & "StopMusicStream" &
        " already exists, not redeclaring")
when not declared(PauseMusicStream):
  proc PauseMusicStream*(music: Music_520094276): void {.cdecl,
      importc: "PauseMusicStream".}
else:
  static :
    hint("Declaration of " & "PauseMusicStream" &
        " already exists, not redeclaring")
when not declared(ResumeMusicStream):
  proc ResumeMusicStream*(music: Music_520094276): void {.cdecl,
      importc: "ResumeMusicStream".}
else:
  static :
    hint("Declaration of " & "ResumeMusicStream" &
        " already exists, not redeclaring")
when not declared(SeekMusicStream):
  proc SeekMusicStream*(music: Music_520094276; position: cfloat): void {.cdecl,
      importc: "SeekMusicStream".}
else:
  static :
    hint("Declaration of " & "SeekMusicStream" &
        " already exists, not redeclaring")
when not declared(SetMusicVolume):
  proc SetMusicVolume*(music: Music_520094276; volume: cfloat): void {.cdecl,
      importc: "SetMusicVolume".}
else:
  static :
    hint("Declaration of " & "SetMusicVolume" &
        " already exists, not redeclaring")
when not declared(SetMusicPitch):
  proc SetMusicPitch*(music: Music_520094276; pitch: cfloat): void {.cdecl,
      importc: "SetMusicPitch".}
else:
  static :
    hint("Declaration of " & "SetMusicPitch" &
        " already exists, not redeclaring")
when not declared(SetMusicPan):
  proc SetMusicPan*(music: Music_520094276; pan: cfloat): void {.cdecl,
      importc: "SetMusicPan".}
else:
  static :
    hint("Declaration of " & "SetMusicPan" & " already exists, not redeclaring")
when not declared(GetMusicTimeLength):
  proc GetMusicTimeLength*(music: Music_520094276): cfloat {.cdecl,
      importc: "GetMusicTimeLength".}
else:
  static :
    hint("Declaration of " & "GetMusicTimeLength" &
        " already exists, not redeclaring")
when not declared(GetMusicTimePlayed):
  proc GetMusicTimePlayed*(music: Music_520094276): cfloat {.cdecl,
      importc: "GetMusicTimePlayed".}
else:
  static :
    hint("Declaration of " & "GetMusicTimePlayed" &
        " already exists, not redeclaring")
when not declared(LoadAudioStream):
  proc LoadAudioStream*(sampleRate: cuint; sampleSize: cuint; channels: cuint): AudioStream_520094268 {.
      cdecl, importc: "LoadAudioStream".}
else:
  static :
    hint("Declaration of " & "LoadAudioStream" &
        " already exists, not redeclaring")
when not declared(IsAudioStreamReady):
  proc IsAudioStreamReady*(stream: AudioStream_520094268): bool {.cdecl,
      importc: "IsAudioStreamReady".}
else:
  static :
    hint("Declaration of " & "IsAudioStreamReady" &
        " already exists, not redeclaring")
when not declared(UnloadAudioStream):
  proc UnloadAudioStream*(stream: AudioStream_520094268): void {.cdecl,
      importc: "UnloadAudioStream".}
else:
  static :
    hint("Declaration of " & "UnloadAudioStream" &
        " already exists, not redeclaring")
when not declared(UpdateAudioStream):
  proc UpdateAudioStream*(stream: AudioStream_520094268; data: pointer;
                          frameCount: cint): void {.cdecl,
      importc: "UpdateAudioStream".}
else:
  static :
    hint("Declaration of " & "UpdateAudioStream" &
        " already exists, not redeclaring")
when not declared(IsAudioStreamProcessed):
  proc IsAudioStreamProcessed*(stream: AudioStream_520094268): bool {.cdecl,
      importc: "IsAudioStreamProcessed".}
else:
  static :
    hint("Declaration of " & "IsAudioStreamProcessed" &
        " already exists, not redeclaring")
when not declared(PlayAudioStream):
  proc PlayAudioStream*(stream: AudioStream_520094268): void {.cdecl,
      importc: "PlayAudioStream".}
else:
  static :
    hint("Declaration of " & "PlayAudioStream" &
        " already exists, not redeclaring")
when not declared(PauseAudioStream):
  proc PauseAudioStream*(stream: AudioStream_520094268): void {.cdecl,
      importc: "PauseAudioStream".}
else:
  static :
    hint("Declaration of " & "PauseAudioStream" &
        " already exists, not redeclaring")
when not declared(ResumeAudioStream):
  proc ResumeAudioStream*(stream: AudioStream_520094268): void {.cdecl,
      importc: "ResumeAudioStream".}
else:
  static :
    hint("Declaration of " & "ResumeAudioStream" &
        " already exists, not redeclaring")
when not declared(IsAudioStreamPlaying):
  proc IsAudioStreamPlaying*(stream: AudioStream_520094268): bool {.cdecl,
      importc: "IsAudioStreamPlaying".}
else:
  static :
    hint("Declaration of " & "IsAudioStreamPlaying" &
        " already exists, not redeclaring")
when not declared(StopAudioStream):
  proc StopAudioStream*(stream: AudioStream_520094268): void {.cdecl,
      importc: "StopAudioStream".}
else:
  static :
    hint("Declaration of " & "StopAudioStream" &
        " already exists, not redeclaring")
when not declared(SetAudioStreamVolume):
  proc SetAudioStreamVolume*(stream: AudioStream_520094268; volume: cfloat): void {.
      cdecl, importc: "SetAudioStreamVolume".}
else:
  static :
    hint("Declaration of " & "SetAudioStreamVolume" &
        " already exists, not redeclaring")
when not declared(SetAudioStreamPitch):
  proc SetAudioStreamPitch*(stream: AudioStream_520094268; pitch: cfloat): void {.
      cdecl, importc: "SetAudioStreamPitch".}
else:
  static :
    hint("Declaration of " & "SetAudioStreamPitch" &
        " already exists, not redeclaring")
when not declared(SetAudioStreamPan):
  proc SetAudioStreamPan*(stream: AudioStream_520094268; pan: cfloat): void {.
      cdecl, importc: "SetAudioStreamPan".}
else:
  static :
    hint("Declaration of " & "SetAudioStreamPan" &
        " already exists, not redeclaring")
when not declared(SetAudioStreamBufferSizeDefault):
  proc SetAudioStreamBufferSizeDefault*(size: cint): void {.cdecl,
      importc: "SetAudioStreamBufferSizeDefault".}
else:
  static :
    hint("Declaration of " & "SetAudioStreamBufferSizeDefault" &
        " already exists, not redeclaring")
when not declared(SetAudioStreamCallback):
  proc SetAudioStreamCallback*(stream: AudioStream_520094268;
                               callback: AudioCallback_520094392): void {.cdecl,
      importc: "SetAudioStreamCallback".}
else:
  static :
    hint("Declaration of " & "SetAudioStreamCallback" &
        " already exists, not redeclaring")
when not declared(AttachAudioStreamProcessor):
  proc AttachAudioStreamProcessor*(stream: AudioStream_520094268;
                                   processor: AudioCallback_520094392): void {.
      cdecl, importc: "AttachAudioStreamProcessor".}
else:
  static :
    hint("Declaration of " & "AttachAudioStreamProcessor" &
        " already exists, not redeclaring")
when not declared(DetachAudioStreamProcessor):
  proc DetachAudioStreamProcessor*(stream: AudioStream_520094268;
                                   processor: AudioCallback_520094392): void {.
      cdecl, importc: "DetachAudioStreamProcessor".}
else:
  static :
    hint("Declaration of " & "DetachAudioStreamProcessor" &
        " already exists, not redeclaring")
when not declared(AttachAudioMixedProcessor):
  proc AttachAudioMixedProcessor*(processor: AudioCallback_520094392): void {.
      cdecl, importc: "AttachAudioMixedProcessor".}
else:
  static :
    hint("Declaration of " & "AttachAudioMixedProcessor" &
        " already exists, not redeclaring")
when not declared(DetachAudioMixedProcessor):
  proc DetachAudioMixedProcessor*(processor: AudioCallback_520094392): void {.
      cdecl, importc: "DetachAudioMixedProcessor".}
else:
  static :
    hint("Declaration of " & "DetachAudioMixedProcessor" &
        " already exists, not redeclaring")
when not declared(compiler_sf):
  var compiler_sf* {.importc: "__sf".}: array[3'i64, compiler_FILE_520094536]
else:
  static :
    hint("Declaration of " & "compiler_sf" & " already exists, not redeclaring")
when not declared(compiler_sglue):
  var compiler_sglue* {.importc: "__sglue".}: struct_glue_520094538
else:
  static :
    hint("Declaration of " & "compiler_sglue" &
        " already exists, not redeclaring")
when not declared(internal_impure_data):
  var internal_impure_data* {.importc: "_impure_data".}: struct_reent_520094534
else:
  static :
    hint("Declaration of " & "internal_impure_data" &
        " already exists, not redeclaring")
when not declared(compiler_atexit):
  var compiler_atexit* {.importc: "__atexit".}: ptr struct_atexit_520094528
else:
  static :
    hint("Declaration of " & "compiler_atexit" &
        " already exists, not redeclaring")
when not declared(compiler_atexit0):
  var compiler_atexit0* {.importc: "__atexit0".}: struct_atexit_520094528
else:
  static :
    hint("Declaration of " & "compiler_atexit0" &
        " already exists, not redeclaring")
when not declared(compiler_stdio_exit_handler):
  var compiler_stdio_exit_handler* {.importc: "__stdio_exit_handler".}: proc (): void {.
      cdecl.}
else:
  static :
    hint("Declaration of " & "compiler_stdio_exit_handler" &
        " already exists, not redeclaring")
when not declared(internal_reclaim_reent):
  proc internal_reclaim_reent*(a0: ptr struct_reent_520094534): void {.cdecl,
      importc: "_reclaim_reent".}
else:
  static :
    hint("Declaration of " & "internal_reclaim_reent" &
        " already exists, not redeclaring")
when not declared(internal_fwalk_sglue):
  proc internal_fwalk_sglue*(a0: ptr struct_reent_520094534; a1: proc (
      a0: ptr struct_reent_520094534; a1: ptr compiler_FILE_520094536): cint {.
      cdecl.}; a2: ptr struct_glue_520094538): cint {.cdecl,
      importc: "_fwalk_sglue".}
else:
  static :
    hint("Declaration of " & "internal_fwalk_sglue" &
        " already exists, not redeclaring")
when not declared(atan):
  proc atan*(a0: cdouble): cdouble {.cdecl, importc: "atan".}
else:
  static :
    hint("Declaration of " & "atan" & " already exists, not redeclaring")
when not declared(cos):
  proc cos*(a0: cdouble): cdouble {.cdecl, importc: "cos".}
else:
  static :
    hint("Declaration of " & "cos" & " already exists, not redeclaring")
when not declared(sin):
  proc sin*(a0: cdouble): cdouble {.cdecl, importc: "sin".}
else:
  static :
    hint("Declaration of " & "sin" & " already exists, not redeclaring")
when not declared(tan):
  proc tan*(a0: cdouble): cdouble {.cdecl, importc: "tan".}
else:
  static :
    hint("Declaration of " & "tan" & " already exists, not redeclaring")
when not declared(tanh):
  proc tanh*(a0: cdouble): cdouble {.cdecl, importc: "tanh".}
else:
  static :
    hint("Declaration of " & "tanh" & " already exists, not redeclaring")
when not declared(frexp):
  proc frexp*(a0: cdouble; a1: ptr cint): cdouble {.cdecl, importc: "frexp".}
else:
  static :
    hint("Declaration of " & "frexp" & " already exists, not redeclaring")
when not declared(modf):
  proc modf*(a0: cdouble; a1: ptr cdouble): cdouble {.cdecl, importc: "modf".}
else:
  static :
    hint("Declaration of " & "modf" & " already exists, not redeclaring")
when not declared(ceil):
  proc ceil*(a0: cdouble): cdouble {.cdecl, importc: "ceil".}
else:
  static :
    hint("Declaration of " & "ceil" & " already exists, not redeclaring")
when not declared(fabs):
  proc fabs*(a0: cdouble): cdouble {.cdecl, importc: "fabs".}
else:
  static :
    hint("Declaration of " & "fabs" & " already exists, not redeclaring")
when not declared(floor):
  proc floor*(a0: cdouble): cdouble {.cdecl, importc: "floor".}
else:
  static :
    hint("Declaration of " & "floor" & " already exists, not redeclaring")
when not declared(acos):
  proc acos*(a0: cdouble): cdouble {.cdecl, importc: "acos".}
else:
  static :
    hint("Declaration of " & "acos" & " already exists, not redeclaring")
when not declared(asin):
  proc asin*(a0: cdouble): cdouble {.cdecl, importc: "asin".}
else:
  static :
    hint("Declaration of " & "asin" & " already exists, not redeclaring")
when not declared(atan2):
  proc atan2*(a0: cdouble; a1: cdouble): cdouble {.cdecl, importc: "atan2".}
else:
  static :
    hint("Declaration of " & "atan2" & " already exists, not redeclaring")
when not declared(cosh):
  proc cosh*(a0: cdouble): cdouble {.cdecl, importc: "cosh".}
else:
  static :
    hint("Declaration of " & "cosh" & " already exists, not redeclaring")
when not declared(sinh):
  proc sinh*(a0: cdouble): cdouble {.cdecl, importc: "sinh".}
else:
  static :
    hint("Declaration of " & "sinh" & " already exists, not redeclaring")
when not declared(exp):
  proc exp*(a0: cdouble): cdouble {.cdecl, importc: "exp".}
else:
  static :
    hint("Declaration of " & "exp" & " already exists, not redeclaring")
when not declared(ldexp):
  proc ldexp*(a0: cdouble; a1: cint): cdouble {.cdecl, importc: "ldexp".}
else:
  static :
    hint("Declaration of " & "ldexp" & " already exists, not redeclaring")
when not declared(log):
  proc log*(a0: cdouble): cdouble {.cdecl, importc: "log".}
else:
  static :
    hint("Declaration of " & "log" & " already exists, not redeclaring")
when not declared(log10):
  proc log10*(a0: cdouble): cdouble {.cdecl, importc: "log10".}
else:
  static :
    hint("Declaration of " & "log10" & " already exists, not redeclaring")
when not declared(pow):
  proc pow*(a0: cdouble; a1: cdouble): cdouble {.cdecl, importc: "pow".}
else:
  static :
    hint("Declaration of " & "pow" & " already exists, not redeclaring")
when not declared(sqrt):
  proc sqrt*(a0: cdouble): cdouble {.cdecl, importc: "sqrt".}
else:
  static :
    hint("Declaration of " & "sqrt" & " already exists, not redeclaring")
when not declared(fmod):
  proc fmod*(a0: cdouble; a1: cdouble): cdouble {.cdecl, importc: "fmod".}
else:
  static :
    hint("Declaration of " & "fmod" & " already exists, not redeclaring")
when not declared(finite):
  proc finite*(a0: cdouble): cint {.cdecl, importc: "finite".}
else:
  static :
    hint("Declaration of " & "finite" & " already exists, not redeclaring")
when not declared(finitef):
  proc finitef*(a0: cfloat): cint {.cdecl, importc: "finitef".}
else:
  static :
    hint("Declaration of " & "finitef" & " already exists, not redeclaring")
when not declared(finitel):
  proc finitel*(a0: clongdouble): cint {.cdecl, importc: "finitel".}
else:
  static :
    hint("Declaration of " & "finitel" & " already exists, not redeclaring")
when not declared(isinff):
  proc isinff*(a0: cfloat): cint {.cdecl, importc: "isinff".}
else:
  static :
    hint("Declaration of " & "isinff" & " already exists, not redeclaring")
when not declared(isnanf):
  proc isnanf*(a0: cfloat): cint {.cdecl, importc: "isnanf".}
else:
  static :
    hint("Declaration of " & "isnanf" & " already exists, not redeclaring")
when not declared(isinf):
  proc isinf*(a0: cdouble): cint {.cdecl, importc: "isinf".}
else:
  static :
    hint("Declaration of " & "isinf" & " already exists, not redeclaring")
when not declared(isnan):
  proc isnan*(a0: cdouble): cint {.cdecl, importc: "isnan".}
else:
  static :
    hint("Declaration of " & "isnan" & " already exists, not redeclaring")
when not declared(compiler_isinff):
  proc compiler_isinff*(a0: cfloat): cint {.cdecl, importc: "__isinff".}
else:
  static :
    hint("Declaration of " & "compiler_isinff" &
        " already exists, not redeclaring")
when not declared(compiler_isinfd):
  proc compiler_isinfd*(a0: cdouble): cint {.cdecl, importc: "__isinfd".}
else:
  static :
    hint("Declaration of " & "compiler_isinfd" &
        " already exists, not redeclaring")
when not declared(compiler_isnanf):
  proc compiler_isnanf*(a0: cfloat): cint {.cdecl, importc: "__isnanf".}
else:
  static :
    hint("Declaration of " & "compiler_isnanf" &
        " already exists, not redeclaring")
when not declared(compiler_isnand):
  proc compiler_isnand*(a0: cdouble): cint {.cdecl, importc: "__isnand".}
else:
  static :
    hint("Declaration of " & "compiler_isnand" &
        " already exists, not redeclaring")
when not declared(compiler_fpclassifyf):
  proc compiler_fpclassifyf*(a0: cfloat): cint {.cdecl, importc: "__fpclassifyf".}
else:
  static :
    hint("Declaration of " & "compiler_fpclassifyf" &
        " already exists, not redeclaring")
when not declared(compiler_fpclassifyd):
  proc compiler_fpclassifyd*(a0: cdouble): cint {.cdecl,
      importc: "__fpclassifyd".}
else:
  static :
    hint("Declaration of " & "compiler_fpclassifyd" &
        " already exists, not redeclaring")
when not declared(compiler_signbitf):
  proc compiler_signbitf*(a0: cfloat): cint {.cdecl, importc: "__signbitf".}
else:
  static :
    hint("Declaration of " & "compiler_signbitf" &
        " already exists, not redeclaring")
when not declared(compiler_signbitd):
  proc compiler_signbitd*(a0: cdouble): cint {.cdecl, importc: "__signbitd".}
else:
  static :
    hint("Declaration of " & "compiler_signbitd" &
        " already exists, not redeclaring")
when not declared(infinity):
  proc infinity*(): cdouble {.cdecl, importc: "infinity".}
else:
  static :
    hint("Declaration of " & "infinity" & " already exists, not redeclaring")
when not declared(nan):
  proc nan*(a0: cstring): cdouble {.cdecl, importc: "nan".}
else:
  static :
    hint("Declaration of " & "nan" & " already exists, not redeclaring")
when not declared(copysign):
  proc copysign*(a0: cdouble; a1: cdouble): cdouble {.cdecl, importc: "copysign".}
else:
  static :
    hint("Declaration of " & "copysign" & " already exists, not redeclaring")
when not declared(logb):
  proc logb*(a0: cdouble): cdouble {.cdecl, importc: "logb".}
else:
  static :
    hint("Declaration of " & "logb" & " already exists, not redeclaring")
when not declared(ilogb):
  proc ilogb*(a0: cdouble): cint {.cdecl, importc: "ilogb".}
else:
  static :
    hint("Declaration of " & "ilogb" & " already exists, not redeclaring")
when not declared(asinh):
  proc asinh*(a0: cdouble): cdouble {.cdecl, importc: "asinh".}
else:
  static :
    hint("Declaration of " & "asinh" & " already exists, not redeclaring")
when not declared(cbrt):
  proc cbrt*(a0: cdouble): cdouble {.cdecl, importc: "cbrt".}
else:
  static :
    hint("Declaration of " & "cbrt" & " already exists, not redeclaring")
when not declared(nextafter):
  proc nextafter*(a0: cdouble; a1: cdouble): cdouble {.cdecl,
      importc: "nextafter".}
else:
  static :
    hint("Declaration of " & "nextafter" & " already exists, not redeclaring")
when not declared(rint):
  proc rint*(a0: cdouble): cdouble {.cdecl, importc: "rint".}
else:
  static :
    hint("Declaration of " & "rint" & " already exists, not redeclaring")
when not declared(scalbn):
  proc scalbn*(a0: cdouble; a1: cint): cdouble {.cdecl, importc: "scalbn".}
else:
  static :
    hint("Declaration of " & "scalbn" & " already exists, not redeclaring")
when not declared(exp2):
  proc exp2*(a0: cdouble): cdouble {.cdecl, importc: "exp2".}
else:
  static :
    hint("Declaration of " & "exp2" & " already exists, not redeclaring")
when not declared(scalbln):
  proc scalbln*(a0: cdouble; a1: clong): cdouble {.cdecl, importc: "scalbln".}
else:
  static :
    hint("Declaration of " & "scalbln" & " already exists, not redeclaring")
when not declared(tgamma):
  proc tgamma*(a0: cdouble): cdouble {.cdecl, importc: "tgamma".}
else:
  static :
    hint("Declaration of " & "tgamma" & " already exists, not redeclaring")
when not declared(nearbyint):
  proc nearbyint*(a0: cdouble): cdouble {.cdecl, importc: "nearbyint".}
else:
  static :
    hint("Declaration of " & "nearbyint" & " already exists, not redeclaring")
when not declared(lrint):
  proc lrint*(a0: cdouble): clong {.cdecl, importc: "lrint".}
else:
  static :
    hint("Declaration of " & "lrint" & " already exists, not redeclaring")
when not declared(llrint):
  proc llrint*(a0: cdouble): clonglong {.cdecl, importc: "llrint".}
else:
  static :
    hint("Declaration of " & "llrint" & " already exists, not redeclaring")
when not declared(round):
  proc round*(a0: cdouble): cdouble {.cdecl, importc: "round".}
else:
  static :
    hint("Declaration of " & "round" & " already exists, not redeclaring")
when not declared(lround):
  proc lround*(a0: cdouble): clong {.cdecl, importc: "lround".}
else:
  static :
    hint("Declaration of " & "lround" & " already exists, not redeclaring")
when not declared(llround):
  proc llround*(a0: cdouble): clonglong {.cdecl, importc: "llround".}
else:
  static :
    hint("Declaration of " & "llround" & " already exists, not redeclaring")
when not declared(trunc):
  proc trunc*(a0: cdouble): cdouble {.cdecl, importc: "trunc".}
else:
  static :
    hint("Declaration of " & "trunc" & " already exists, not redeclaring")
when not declared(remquo):
  proc remquo*(a0: cdouble; a1: cdouble; a2: ptr cint): cdouble {.cdecl,
      importc: "remquo".}
else:
  static :
    hint("Declaration of " & "remquo" & " already exists, not redeclaring")
when not declared(fdim):
  proc fdim*(a0: cdouble; a1: cdouble): cdouble {.cdecl, importc: "fdim".}
else:
  static :
    hint("Declaration of " & "fdim" & " already exists, not redeclaring")
when not declared(fmax):
  proc fmax*(a0: cdouble; a1: cdouble): cdouble {.cdecl, importc: "fmax".}
else:
  static :
    hint("Declaration of " & "fmax" & " already exists, not redeclaring")
when not declared(fmin):
  proc fmin*(a0: cdouble; a1: cdouble): cdouble {.cdecl, importc: "fmin".}
else:
  static :
    hint("Declaration of " & "fmin" & " already exists, not redeclaring")
when not declared(fma):
  proc fma*(a0: cdouble; a1: cdouble; a2: cdouble): cdouble {.cdecl,
      importc: "fma".}
else:
  static :
    hint("Declaration of " & "fma" & " already exists, not redeclaring")
when not declared(log1p):
  proc log1p*(a0: cdouble): cdouble {.cdecl, importc: "log1p".}
else:
  static :
    hint("Declaration of " & "log1p" & " already exists, not redeclaring")
when not declared(expm1):
  proc expm1*(a0: cdouble): cdouble {.cdecl, importc: "expm1".}
else:
  static :
    hint("Declaration of " & "expm1" & " already exists, not redeclaring")
when not declared(acosh):
  proc acosh*(a0: cdouble): cdouble {.cdecl, importc: "acosh".}
else:
  static :
    hint("Declaration of " & "acosh" & " already exists, not redeclaring")
when not declared(atanh):
  proc atanh*(a0: cdouble): cdouble {.cdecl, importc: "atanh".}
else:
  static :
    hint("Declaration of " & "atanh" & " already exists, not redeclaring")
when not declared(remainder):
  proc remainder*(a0: cdouble; a1: cdouble): cdouble {.cdecl,
      importc: "remainder".}
else:
  static :
    hint("Declaration of " & "remainder" & " already exists, not redeclaring")
when not declared(gamma):
  proc gamma*(a0: cdouble): cdouble {.cdecl, importc: "gamma".}
else:
  static :
    hint("Declaration of " & "gamma" & " already exists, not redeclaring")
when not declared(lgamma):
  proc lgamma*(a0: cdouble): cdouble {.cdecl, importc: "lgamma".}
else:
  static :
    hint("Declaration of " & "lgamma" & " already exists, not redeclaring")
when not declared(erf):
  proc erf*(a0: cdouble): cdouble {.cdecl, importc: "erf".}
else:
  static :
    hint("Declaration of " & "erf" & " already exists, not redeclaring")
when not declared(erfc):
  proc erfc*(a0: cdouble): cdouble {.cdecl, importc: "erfc".}
else:
  static :
    hint("Declaration of " & "erfc" & " already exists, not redeclaring")
when not declared(log2):
  proc log2*(a0: cdouble): cdouble {.cdecl, importc: "log2".}
else:
  static :
    hint("Declaration of " & "log2" & " already exists, not redeclaring")
when not declared(hypot):
  proc hypot*(a0: cdouble; a1: cdouble): cdouble {.cdecl, importc: "hypot".}
else:
  static :
    hint("Declaration of " & "hypot" & " already exists, not redeclaring")
when not declared(atanf):
  proc atanf*(a0: cfloat): cfloat {.cdecl, importc: "atanf".}
else:
  static :
    hint("Declaration of " & "atanf" & " already exists, not redeclaring")
when not declared(cosf):
  proc cosf*(a0: cfloat): cfloat {.cdecl, importc: "cosf".}
else:
  static :
    hint("Declaration of " & "cosf" & " already exists, not redeclaring")
when not declared(sinf):
  proc sinf*(a0: cfloat): cfloat {.cdecl, importc: "sinf".}
else:
  static :
    hint("Declaration of " & "sinf" & " already exists, not redeclaring")
when not declared(tanf):
  proc tanf*(a0: cfloat): cfloat {.cdecl, importc: "tanf".}
else:
  static :
    hint("Declaration of " & "tanf" & " already exists, not redeclaring")
when not declared(tanhf):
  proc tanhf*(a0: cfloat): cfloat {.cdecl, importc: "tanhf".}
else:
  static :
    hint("Declaration of " & "tanhf" & " already exists, not redeclaring")
when not declared(frexpf):
  proc frexpf*(a0: cfloat; a1: ptr cint): cfloat {.cdecl, importc: "frexpf".}
else:
  static :
    hint("Declaration of " & "frexpf" & " already exists, not redeclaring")
when not declared(modff):
  proc modff*(a0: cfloat; a1: ptr cfloat): cfloat {.cdecl, importc: "modff".}
else:
  static :
    hint("Declaration of " & "modff" & " already exists, not redeclaring")
when not declared(ceilf):
  proc ceilf*(a0: cfloat): cfloat {.cdecl, importc: "ceilf".}
else:
  static :
    hint("Declaration of " & "ceilf" & " already exists, not redeclaring")
when not declared(fabsf):
  proc fabsf*(a0: cfloat): cfloat {.cdecl, importc: "fabsf".}
else:
  static :
    hint("Declaration of " & "fabsf" & " already exists, not redeclaring")
when not declared(floorf):
  proc floorf*(a0: cfloat): cfloat {.cdecl, importc: "floorf".}
else:
  static :
    hint("Declaration of " & "floorf" & " already exists, not redeclaring")
when not declared(acosf):
  proc acosf*(a0: cfloat): cfloat {.cdecl, importc: "acosf".}
else:
  static :
    hint("Declaration of " & "acosf" & " already exists, not redeclaring")
when not declared(asinf):
  proc asinf*(a0: cfloat): cfloat {.cdecl, importc: "asinf".}
else:
  static :
    hint("Declaration of " & "asinf" & " already exists, not redeclaring")
when not declared(atan2f):
  proc atan2f*(a0: cfloat; a1: cfloat): cfloat {.cdecl, importc: "atan2f".}
else:
  static :
    hint("Declaration of " & "atan2f" & " already exists, not redeclaring")
when not declared(coshf):
  proc coshf*(a0: cfloat): cfloat {.cdecl, importc: "coshf".}
else:
  static :
    hint("Declaration of " & "coshf" & " already exists, not redeclaring")
when not declared(sinhf):
  proc sinhf*(a0: cfloat): cfloat {.cdecl, importc: "sinhf".}
else:
  static :
    hint("Declaration of " & "sinhf" & " already exists, not redeclaring")
when not declared(expf):
  proc expf*(a0: cfloat): cfloat {.cdecl, importc: "expf".}
else:
  static :
    hint("Declaration of " & "expf" & " already exists, not redeclaring")
when not declared(ldexpf):
  proc ldexpf*(a0: cfloat; a1: cint): cfloat {.cdecl, importc: "ldexpf".}
else:
  static :
    hint("Declaration of " & "ldexpf" & " already exists, not redeclaring")
when not declared(logf):
  proc logf*(a0: cfloat): cfloat {.cdecl, importc: "logf".}
else:
  static :
    hint("Declaration of " & "logf" & " already exists, not redeclaring")
when not declared(log10f):
  proc log10f*(a0: cfloat): cfloat {.cdecl, importc: "log10f".}
else:
  static :
    hint("Declaration of " & "log10f" & " already exists, not redeclaring")
when not declared(powf):
  proc powf*(a0: cfloat; a1: cfloat): cfloat {.cdecl, importc: "powf".}
else:
  static :
    hint("Declaration of " & "powf" & " already exists, not redeclaring")
when not declared(sqrtf):
  proc sqrtf*(a0: cfloat): cfloat {.cdecl, importc: "sqrtf".}
else:
  static :
    hint("Declaration of " & "sqrtf" & " already exists, not redeclaring")
when not declared(fmodf):
  proc fmodf*(a0: cfloat; a1: cfloat): cfloat {.cdecl, importc: "fmodf".}
else:
  static :
    hint("Declaration of " & "fmodf" & " already exists, not redeclaring")
when not declared(exp2f):
  proc exp2f*(a0: cfloat): cfloat {.cdecl, importc: "exp2f".}
else:
  static :
    hint("Declaration of " & "exp2f" & " already exists, not redeclaring")
when not declared(scalblnf):
  proc scalblnf*(a0: cfloat; a1: clong): cfloat {.cdecl, importc: "scalblnf".}
else:
  static :
    hint("Declaration of " & "scalblnf" & " already exists, not redeclaring")
when not declared(tgammaf):
  proc tgammaf*(a0: cfloat): cfloat {.cdecl, importc: "tgammaf".}
else:
  static :
    hint("Declaration of " & "tgammaf" & " already exists, not redeclaring")
when not declared(nearbyintf):
  proc nearbyintf*(a0: cfloat): cfloat {.cdecl, importc: "nearbyintf".}
else:
  static :
    hint("Declaration of " & "nearbyintf" & " already exists, not redeclaring")
when not declared(lrintf):
  proc lrintf*(a0: cfloat): clong {.cdecl, importc: "lrintf".}
else:
  static :
    hint("Declaration of " & "lrintf" & " already exists, not redeclaring")
when not declared(llrintf):
  proc llrintf*(a0: cfloat): clonglong {.cdecl, importc: "llrintf".}
else:
  static :
    hint("Declaration of " & "llrintf" & " already exists, not redeclaring")
when not declared(roundf):
  proc roundf*(a0: cfloat): cfloat {.cdecl, importc: "roundf".}
else:
  static :
    hint("Declaration of " & "roundf" & " already exists, not redeclaring")
when not declared(lroundf):
  proc lroundf*(a0: cfloat): clong {.cdecl, importc: "lroundf".}
else:
  static :
    hint("Declaration of " & "lroundf" & " already exists, not redeclaring")
when not declared(llroundf):
  proc llroundf*(a0: cfloat): clonglong {.cdecl, importc: "llroundf".}
else:
  static :
    hint("Declaration of " & "llroundf" & " already exists, not redeclaring")
when not declared(truncf):
  proc truncf*(a0: cfloat): cfloat {.cdecl, importc: "truncf".}
else:
  static :
    hint("Declaration of " & "truncf" & " already exists, not redeclaring")
when not declared(remquof):
  proc remquof*(a0: cfloat; a1: cfloat; a2: ptr cint): cfloat {.cdecl,
      importc: "remquof".}
else:
  static :
    hint("Declaration of " & "remquof" & " already exists, not redeclaring")
when not declared(fdimf):
  proc fdimf*(a0: cfloat; a1: cfloat): cfloat {.cdecl, importc: "fdimf".}
else:
  static :
    hint("Declaration of " & "fdimf" & " already exists, not redeclaring")
when not declared(fmaxf):
  proc fmaxf*(a0: cfloat; a1: cfloat): cfloat {.cdecl, importc: "fmaxf".}
else:
  static :
    hint("Declaration of " & "fmaxf" & " already exists, not redeclaring")
when not declared(fminf):
  proc fminf*(a0: cfloat; a1: cfloat): cfloat {.cdecl, importc: "fminf".}
else:
  static :
    hint("Declaration of " & "fminf" & " already exists, not redeclaring")
when not declared(fmaf):
  proc fmaf*(a0: cfloat; a1: cfloat; a2: cfloat): cfloat {.cdecl,
      importc: "fmaf".}
else:
  static :
    hint("Declaration of " & "fmaf" & " already exists, not redeclaring")
when not declared(infinityf):
  proc infinityf*(): cfloat {.cdecl, importc: "infinityf".}
else:
  static :
    hint("Declaration of " & "infinityf" & " already exists, not redeclaring")
when not declared(nanf):
  proc nanf*(a0: cstring): cfloat {.cdecl, importc: "nanf".}
else:
  static :
    hint("Declaration of " & "nanf" & " already exists, not redeclaring")
when not declared(copysignf):
  proc copysignf*(a0: cfloat; a1: cfloat): cfloat {.cdecl, importc: "copysignf".}
else:
  static :
    hint("Declaration of " & "copysignf" & " already exists, not redeclaring")
when not declared(logbf):
  proc logbf*(a0: cfloat): cfloat {.cdecl, importc: "logbf".}
else:
  static :
    hint("Declaration of " & "logbf" & " already exists, not redeclaring")
when not declared(ilogbf):
  proc ilogbf*(a0: cfloat): cint {.cdecl, importc: "ilogbf".}
else:
  static :
    hint("Declaration of " & "ilogbf" & " already exists, not redeclaring")
when not declared(asinhf):
  proc asinhf*(a0: cfloat): cfloat {.cdecl, importc: "asinhf".}
else:
  static :
    hint("Declaration of " & "asinhf" & " already exists, not redeclaring")
when not declared(cbrtf):
  proc cbrtf*(a0: cfloat): cfloat {.cdecl, importc: "cbrtf".}
else:
  static :
    hint("Declaration of " & "cbrtf" & " already exists, not redeclaring")
when not declared(nextafterf):
  proc nextafterf*(a0: cfloat; a1: cfloat): cfloat {.cdecl,
      importc: "nextafterf".}
else:
  static :
    hint("Declaration of " & "nextafterf" & " already exists, not redeclaring")
when not declared(rintf):
  proc rintf*(a0: cfloat): cfloat {.cdecl, importc: "rintf".}
else:
  static :
    hint("Declaration of " & "rintf" & " already exists, not redeclaring")
when not declared(scalbnf):
  proc scalbnf*(a0: cfloat; a1: cint): cfloat {.cdecl, importc: "scalbnf".}
else:
  static :
    hint("Declaration of " & "scalbnf" & " already exists, not redeclaring")
when not declared(log1pf):
  proc log1pf*(a0: cfloat): cfloat {.cdecl, importc: "log1pf".}
else:
  static :
    hint("Declaration of " & "log1pf" & " already exists, not redeclaring")
when not declared(expm1f):
  proc expm1f*(a0: cfloat): cfloat {.cdecl, importc: "expm1f".}
else:
  static :
    hint("Declaration of " & "expm1f" & " already exists, not redeclaring")
when not declared(acoshf):
  proc acoshf*(a0: cfloat): cfloat {.cdecl, importc: "acoshf".}
else:
  static :
    hint("Declaration of " & "acoshf" & " already exists, not redeclaring")
when not declared(atanhf):
  proc atanhf*(a0: cfloat): cfloat {.cdecl, importc: "atanhf".}
else:
  static :
    hint("Declaration of " & "atanhf" & " already exists, not redeclaring")
when not declared(remainderf):
  proc remainderf*(a0: cfloat; a1: cfloat): cfloat {.cdecl,
      importc: "remainderf".}
else:
  static :
    hint("Declaration of " & "remainderf" & " already exists, not redeclaring")
when not declared(gammaf):
  proc gammaf*(a0: cfloat): cfloat {.cdecl, importc: "gammaf".}
else:
  static :
    hint("Declaration of " & "gammaf" & " already exists, not redeclaring")
when not declared(lgammaf):
  proc lgammaf*(a0: cfloat): cfloat {.cdecl, importc: "lgammaf".}
else:
  static :
    hint("Declaration of " & "lgammaf" & " already exists, not redeclaring")
when not declared(erff):
  proc erff*(a0: cfloat): cfloat {.cdecl, importc: "erff".}
else:
  static :
    hint("Declaration of " & "erff" & " already exists, not redeclaring")
when not declared(erfcf):
  proc erfcf*(a0: cfloat): cfloat {.cdecl, importc: "erfcf".}
else:
  static :
    hint("Declaration of " & "erfcf" & " already exists, not redeclaring")
when not declared(log2f):
  proc log2f*(a0: cfloat): cfloat {.cdecl, importc: "log2f".}
else:
  static :
    hint("Declaration of " & "log2f" & " already exists, not redeclaring")
when not declared(hypotf):
  proc hypotf*(a0: cfloat; a1: cfloat): cfloat {.cdecl, importc: "hypotf".}
else:
  static :
    hint("Declaration of " & "hypotf" & " already exists, not redeclaring")
when not declared(atanl):
  proc atanl*(a0: clongdouble): clongdouble {.cdecl, importc: "atanl".}
else:
  static :
    hint("Declaration of " & "atanl" & " already exists, not redeclaring")
when not declared(cosl):
  proc cosl*(a0: clongdouble): clongdouble {.cdecl, importc: "cosl".}
else:
  static :
    hint("Declaration of " & "cosl" & " already exists, not redeclaring")
when not declared(sinl):
  proc sinl*(a0: clongdouble): clongdouble {.cdecl, importc: "sinl".}
else:
  static :
    hint("Declaration of " & "sinl" & " already exists, not redeclaring")
when not declared(tanl):
  proc tanl*(a0: clongdouble): clongdouble {.cdecl, importc: "tanl".}
else:
  static :
    hint("Declaration of " & "tanl" & " already exists, not redeclaring")
when not declared(tanhl):
  proc tanhl*(a0: clongdouble): clongdouble {.cdecl, importc: "tanhl".}
else:
  static :
    hint("Declaration of " & "tanhl" & " already exists, not redeclaring")
when not declared(frexpl):
  proc frexpl*(a0: clongdouble; a1: ptr cint): clongdouble {.cdecl,
      importc: "frexpl".}
else:
  static :
    hint("Declaration of " & "frexpl" & " already exists, not redeclaring")
when not declared(modfl):
  proc modfl*(a0: clongdouble; a1: ptr clongdouble): clongdouble {.cdecl,
      importc: "modfl".}
else:
  static :
    hint("Declaration of " & "modfl" & " already exists, not redeclaring")
when not declared(ceill):
  proc ceill*(a0: clongdouble): clongdouble {.cdecl, importc: "ceill".}
else:
  static :
    hint("Declaration of " & "ceill" & " already exists, not redeclaring")
when not declared(fabsl):
  proc fabsl*(a0: clongdouble): clongdouble {.cdecl, importc: "fabsl".}
else:
  static :
    hint("Declaration of " & "fabsl" & " already exists, not redeclaring")
when not declared(floorl):
  proc floorl*(a0: clongdouble): clongdouble {.cdecl, importc: "floorl".}
else:
  static :
    hint("Declaration of " & "floorl" & " already exists, not redeclaring")
when not declared(log1pl):
  proc log1pl*(a0: clongdouble): clongdouble {.cdecl, importc: "log1pl".}
else:
  static :
    hint("Declaration of " & "log1pl" & " already exists, not redeclaring")
when not declared(expm1l):
  proc expm1l*(a0: clongdouble): clongdouble {.cdecl, importc: "expm1l".}
else:
  static :
    hint("Declaration of " & "expm1l" & " already exists, not redeclaring")
when not declared(acosl):
  proc acosl*(a0: clongdouble): clongdouble {.cdecl, importc: "acosl".}
else:
  static :
    hint("Declaration of " & "acosl" & " already exists, not redeclaring")
when not declared(asinl):
  proc asinl*(a0: clongdouble): clongdouble {.cdecl, importc: "asinl".}
else:
  static :
    hint("Declaration of " & "asinl" & " already exists, not redeclaring")
when not declared(atan2l):
  proc atan2l*(a0: clongdouble; a1: clongdouble): clongdouble {.cdecl,
      importc: "atan2l".}
else:
  static :
    hint("Declaration of " & "atan2l" & " already exists, not redeclaring")
when not declared(coshl):
  proc coshl*(a0: clongdouble): clongdouble {.cdecl, importc: "coshl".}
else:
  static :
    hint("Declaration of " & "coshl" & " already exists, not redeclaring")
when not declared(sinhl):
  proc sinhl*(a0: clongdouble): clongdouble {.cdecl, importc: "sinhl".}
else:
  static :
    hint("Declaration of " & "sinhl" & " already exists, not redeclaring")
when not declared(expl):
  proc expl*(a0: clongdouble): clongdouble {.cdecl, importc: "expl".}
else:
  static :
    hint("Declaration of " & "expl" & " already exists, not redeclaring")
when not declared(ldexpl):
  proc ldexpl*(a0: clongdouble; a1: cint): clongdouble {.cdecl,
      importc: "ldexpl".}
else:
  static :
    hint("Declaration of " & "ldexpl" & " already exists, not redeclaring")
when not declared(logl):
  proc logl*(a0: clongdouble): clongdouble {.cdecl, importc: "logl".}
else:
  static :
    hint("Declaration of " & "logl" & " already exists, not redeclaring")
when not declared(log10l):
  proc log10l*(a0: clongdouble): clongdouble {.cdecl, importc: "log10l".}
else:
  static :
    hint("Declaration of " & "log10l" & " already exists, not redeclaring")
when not declared(powl):
  proc powl*(a0: clongdouble; a1: clongdouble): clongdouble {.cdecl,
      importc: "powl".}
else:
  static :
    hint("Declaration of " & "powl" & " already exists, not redeclaring")
when not declared(sqrtl):
  proc sqrtl*(a0: clongdouble): clongdouble {.cdecl, importc: "sqrtl".}
else:
  static :
    hint("Declaration of " & "sqrtl" & " already exists, not redeclaring")
when not declared(fmodl):
  proc fmodl*(a0: clongdouble; a1: clongdouble): clongdouble {.cdecl,
      importc: "fmodl".}
else:
  static :
    hint("Declaration of " & "fmodl" & " already exists, not redeclaring")
when not declared(hypotl):
  proc hypotl*(a0: clongdouble; a1: clongdouble): clongdouble {.cdecl,
      importc: "hypotl".}
else:
  static :
    hint("Declaration of " & "hypotl" & " already exists, not redeclaring")
when not declared(copysignl):
  proc copysignl*(a0: clongdouble; a1: clongdouble): clongdouble {.cdecl,
      importc: "copysignl".}
else:
  static :
    hint("Declaration of " & "copysignl" & " already exists, not redeclaring")
when not declared(nanl):
  proc nanl*(a0: cstring): clongdouble {.cdecl, importc: "nanl".}
else:
  static :
    hint("Declaration of " & "nanl" & " already exists, not redeclaring")
when not declared(ilogbl):
  proc ilogbl*(a0: clongdouble): cint {.cdecl, importc: "ilogbl".}
else:
  static :
    hint("Declaration of " & "ilogbl" & " already exists, not redeclaring")
when not declared(asinhl):
  proc asinhl*(a0: clongdouble): clongdouble {.cdecl, importc: "asinhl".}
else:
  static :
    hint("Declaration of " & "asinhl" & " already exists, not redeclaring")
when not declared(cbrtl):
  proc cbrtl*(a0: clongdouble): clongdouble {.cdecl, importc: "cbrtl".}
else:
  static :
    hint("Declaration of " & "cbrtl" & " already exists, not redeclaring")
when not declared(nextafterl):
  proc nextafterl*(a0: clongdouble; a1: clongdouble): clongdouble {.cdecl,
      importc: "nextafterl".}
else:
  static :
    hint("Declaration of " & "nextafterl" & " already exists, not redeclaring")
when not declared(nexttowardf):
  proc nexttowardf*(a0: cfloat; a1: clongdouble): cfloat {.cdecl,
      importc: "nexttowardf".}
else:
  static :
    hint("Declaration of " & "nexttowardf" & " already exists, not redeclaring")
when not declared(nexttoward):
  proc nexttoward*(a0: cdouble; a1: clongdouble): cdouble {.cdecl,
      importc: "nexttoward".}
else:
  static :
    hint("Declaration of " & "nexttoward" & " already exists, not redeclaring")
when not declared(nexttowardl):
  proc nexttowardl*(a0: clongdouble; a1: clongdouble): clongdouble {.cdecl,
      importc: "nexttowardl".}
else:
  static :
    hint("Declaration of " & "nexttowardl" & " already exists, not redeclaring")
when not declared(logbl):
  proc logbl*(a0: clongdouble): clongdouble {.cdecl, importc: "logbl".}
else:
  static :
    hint("Declaration of " & "logbl" & " already exists, not redeclaring")
when not declared(log2l):
  proc log2l*(a0: clongdouble): clongdouble {.cdecl, importc: "log2l".}
else:
  static :
    hint("Declaration of " & "log2l" & " already exists, not redeclaring")
when not declared(rintl):
  proc rintl*(a0: clongdouble): clongdouble {.cdecl, importc: "rintl".}
else:
  static :
    hint("Declaration of " & "rintl" & " already exists, not redeclaring")
when not declared(scalbnl):
  proc scalbnl*(a0: clongdouble; a1: cint): clongdouble {.cdecl,
      importc: "scalbnl".}
else:
  static :
    hint("Declaration of " & "scalbnl" & " already exists, not redeclaring")
when not declared(exp2l):
  proc exp2l*(a0: clongdouble): clongdouble {.cdecl, importc: "exp2l".}
else:
  static :
    hint("Declaration of " & "exp2l" & " already exists, not redeclaring")
when not declared(scalblnl):
  proc scalblnl*(a0: clongdouble; a1: clong): clongdouble {.cdecl,
      importc: "scalblnl".}
else:
  static :
    hint("Declaration of " & "scalblnl" & " already exists, not redeclaring")
when not declared(tgammal):
  proc tgammal*(a0: clongdouble): clongdouble {.cdecl, importc: "tgammal".}
else:
  static :
    hint("Declaration of " & "tgammal" & " already exists, not redeclaring")
when not declared(nearbyintl):
  proc nearbyintl*(a0: clongdouble): clongdouble {.cdecl, importc: "nearbyintl".}
else:
  static :
    hint("Declaration of " & "nearbyintl" & " already exists, not redeclaring")
when not declared(lrintl):
  proc lrintl*(a0: clongdouble): clong {.cdecl, importc: "lrintl".}
else:
  static :
    hint("Declaration of " & "lrintl" & " already exists, not redeclaring")
when not declared(llrintl):
  proc llrintl*(a0: clongdouble): clonglong {.cdecl, importc: "llrintl".}
else:
  static :
    hint("Declaration of " & "llrintl" & " already exists, not redeclaring")
when not declared(roundl):
  proc roundl*(a0: clongdouble): clongdouble {.cdecl, importc: "roundl".}
else:
  static :
    hint("Declaration of " & "roundl" & " already exists, not redeclaring")
when not declared(lroundl):
  proc lroundl*(a0: clongdouble): clong {.cdecl, importc: "lroundl".}
else:
  static :
    hint("Declaration of " & "lroundl" & " already exists, not redeclaring")
when not declared(llroundl):
  proc llroundl*(a0: clongdouble): clonglong {.cdecl, importc: "llroundl".}
else:
  static :
    hint("Declaration of " & "llroundl" & " already exists, not redeclaring")
when not declared(truncl):
  proc truncl*(a0: clongdouble): clongdouble {.cdecl, importc: "truncl".}
else:
  static :
    hint("Declaration of " & "truncl" & " already exists, not redeclaring")
when not declared(remquol):
  proc remquol*(a0: clongdouble; a1: clongdouble; a2: ptr cint): clongdouble {.
      cdecl, importc: "remquol".}
else:
  static :
    hint("Declaration of " & "remquol" & " already exists, not redeclaring")
when not declared(fdiml):
  proc fdiml*(a0: clongdouble; a1: clongdouble): clongdouble {.cdecl,
      importc: "fdiml".}
else:
  static :
    hint("Declaration of " & "fdiml" & " already exists, not redeclaring")
when not declared(fmaxl):
  proc fmaxl*(a0: clongdouble; a1: clongdouble): clongdouble {.cdecl,
      importc: "fmaxl".}
else:
  static :
    hint("Declaration of " & "fmaxl" & " already exists, not redeclaring")
when not declared(fminl):
  proc fminl*(a0: clongdouble; a1: clongdouble): clongdouble {.cdecl,
      importc: "fminl".}
else:
  static :
    hint("Declaration of " & "fminl" & " already exists, not redeclaring")
when not declared(fmal):
  proc fmal*(a0: clongdouble; a1: clongdouble; a2: clongdouble): clongdouble {.
      cdecl, importc: "fmal".}
else:
  static :
    hint("Declaration of " & "fmal" & " already exists, not redeclaring")
when not declared(acoshl):
  proc acoshl*(a0: clongdouble): clongdouble {.cdecl, importc: "acoshl".}
else:
  static :
    hint("Declaration of " & "acoshl" & " already exists, not redeclaring")
when not declared(atanhl):
  proc atanhl*(a0: clongdouble): clongdouble {.cdecl, importc: "atanhl".}
else:
  static :
    hint("Declaration of " & "atanhl" & " already exists, not redeclaring")
when not declared(remainderl):
  proc remainderl*(a0: clongdouble; a1: clongdouble): clongdouble {.cdecl,
      importc: "remainderl".}
else:
  static :
    hint("Declaration of " & "remainderl" & " already exists, not redeclaring")
when not declared(lgammal):
  proc lgammal*(a0: clongdouble): clongdouble {.cdecl, importc: "lgammal".}
else:
  static :
    hint("Declaration of " & "lgammal" & " already exists, not redeclaring")
when not declared(erfl):
  proc erfl*(a0: clongdouble): clongdouble {.cdecl, importc: "erfl".}
else:
  static :
    hint("Declaration of " & "erfl" & " already exists, not redeclaring")
when not declared(erfcl):
  proc erfcl*(a0: clongdouble): clongdouble {.cdecl, importc: "erfcl".}
else:
  static :
    hint("Declaration of " & "erfcl" & " already exists, not redeclaring")
when not declared(drem):
  proc drem*(a0: cdouble; a1: cdouble): cdouble {.cdecl, importc: "drem".}
else:
  static :
    hint("Declaration of " & "drem" & " already exists, not redeclaring")
when not declared(dremf):
  proc dremf*(a0: cfloat; a1: cfloat): cfloat {.cdecl, importc: "dremf".}
else:
  static :
    hint("Declaration of " & "dremf" & " already exists, not redeclaring")
when not declared(gamma_r):
  proc gamma_r*(a0: cdouble; a1: ptr cint): cdouble {.cdecl, importc: "gamma_r".}
else:
  static :
    hint("Declaration of " & "gamma_r" & " already exists, not redeclaring")
when not declared(lgamma_r):
  proc lgamma_r*(a0: cdouble; a1: ptr cint): cdouble {.cdecl,
      importc: "lgamma_r".}
else:
  static :
    hint("Declaration of " & "lgamma_r" & " already exists, not redeclaring")
when not declared(gammaf_r):
  proc gammaf_r*(a0: cfloat; a1: ptr cint): cfloat {.cdecl, importc: "gammaf_r".}
else:
  static :
    hint("Declaration of " & "gammaf_r" & " already exists, not redeclaring")
when not declared(lgammaf_r):
  proc lgammaf_r*(a0: cfloat; a1: ptr cint): cfloat {.cdecl,
      importc: "lgammaf_r".}
else:
  static :
    hint("Declaration of " & "lgammaf_r" & " already exists, not redeclaring")
when not declared(y0):
  proc y0*(a0: cdouble): cdouble {.cdecl, importc: "y0".}
else:
  static :
    hint("Declaration of " & "y0" & " already exists, not redeclaring")
when not declared(y1):
  proc y1*(a0: cdouble): cdouble {.cdecl, importc: "y1".}
else:
  static :
    hint("Declaration of " & "y1" & " already exists, not redeclaring")
when not declared(yn):
  proc yn*(a0: cint; a1: cdouble): cdouble {.cdecl, importc: "yn".}
else:
  static :
    hint("Declaration of " & "yn" & " already exists, not redeclaring")
when not declared(j0):
  proc j0*(a0: cdouble): cdouble {.cdecl, importc: "j0".}
else:
  static :
    hint("Declaration of " & "j0" & " already exists, not redeclaring")
when not declared(j1):
  proc j1*(a0: cdouble): cdouble {.cdecl, importc: "j1".}
else:
  static :
    hint("Declaration of " & "j1" & " already exists, not redeclaring")
when not declared(jn):
  proc jn*(a0: cint; a1: cdouble): cdouble {.cdecl, importc: "jn".}
else:
  static :
    hint("Declaration of " & "jn" & " already exists, not redeclaring")
when not declared(y0f):
  proc y0f*(a0: cfloat): cfloat {.cdecl, importc: "y0f".}
else:
  static :
    hint("Declaration of " & "y0f" & " already exists, not redeclaring")
when not declared(y1f):
  proc y1f*(a0: cfloat): cfloat {.cdecl, importc: "y1f".}
else:
  static :
    hint("Declaration of " & "y1f" & " already exists, not redeclaring")
when not declared(ynf):
  proc ynf*(a0: cint; a1: cfloat): cfloat {.cdecl, importc: "ynf".}
else:
  static :
    hint("Declaration of " & "ynf" & " already exists, not redeclaring")
when not declared(j0f):
  proc j0f*(a0: cfloat): cfloat {.cdecl, importc: "j0f".}
else:
  static :
    hint("Declaration of " & "j0f" & " already exists, not redeclaring")
when not declared(j1f):
  proc j1f*(a0: cfloat): cfloat {.cdecl, importc: "j1f".}
else:
  static :
    hint("Declaration of " & "j1f" & " already exists, not redeclaring")
when not declared(jnf):
  proc jnf*(a0: cint; a1: cfloat): cfloat {.cdecl, importc: "jnf".}
else:
  static :
    hint("Declaration of " & "jnf" & " already exists, not redeclaring")
when not declared(compiler_signgam):
  proc compiler_signgam*(): ptr cint {.cdecl, importc: "__signgam".}
else:
  static :
    hint("Declaration of " & "compiler_signgam" &
        " already exists, not redeclaring")
when not declared(rlMatrixMode):
  proc rlMatrixMode*(mode: cint): void {.cdecl, importc: "rlMatrixMode".}
else:
  static :
    hint("Declaration of " & "rlMatrixMode" & " already exists, not redeclaring")
when not declared(rlPushMatrix):
  proc rlPushMatrix*(): void {.cdecl, importc: "rlPushMatrix".}
else:
  static :
    hint("Declaration of " & "rlPushMatrix" & " already exists, not redeclaring")
when not declared(rlPopMatrix):
  proc rlPopMatrix*(): void {.cdecl, importc: "rlPopMatrix".}
else:
  static :
    hint("Declaration of " & "rlPopMatrix" & " already exists, not redeclaring")
when not declared(rlLoadIdentity):
  proc rlLoadIdentity*(): void {.cdecl, importc: "rlLoadIdentity".}
else:
  static :
    hint("Declaration of " & "rlLoadIdentity" &
        " already exists, not redeclaring")
when not declared(rlTranslatef):
  proc rlTranslatef*(x: cfloat; y: cfloat; z: cfloat): void {.cdecl,
      importc: "rlTranslatef".}
else:
  static :
    hint("Declaration of " & "rlTranslatef" & " already exists, not redeclaring")
when not declared(rlRotatef):
  proc rlRotatef*(angle: cfloat; x: cfloat; y: cfloat; z: cfloat): void {.cdecl,
      importc: "rlRotatef".}
else:
  static :
    hint("Declaration of " & "rlRotatef" & " already exists, not redeclaring")
when not declared(rlScalef):
  proc rlScalef*(x: cfloat; y: cfloat; z: cfloat): void {.cdecl,
      importc: "rlScalef".}
else:
  static :
    hint("Declaration of " & "rlScalef" & " already exists, not redeclaring")
when not declared(rlMultMatrixf):
  proc rlMultMatrixf*(matf: ptr cfloat): void {.cdecl, importc: "rlMultMatrixf".}
else:
  static :
    hint("Declaration of " & "rlMultMatrixf" &
        " already exists, not redeclaring")
when not declared(rlFrustum):
  proc rlFrustum*(left: cdouble; right: cdouble; bottom: cdouble; top: cdouble;
                  znear: cdouble; zfar: cdouble): void {.cdecl,
      importc: "rlFrustum".}
else:
  static :
    hint("Declaration of " & "rlFrustum" & " already exists, not redeclaring")
when not declared(rlOrtho):
  proc rlOrtho*(left: cdouble; right: cdouble; bottom: cdouble; top: cdouble;
                znear: cdouble; zfar: cdouble): void {.cdecl, importc: "rlOrtho".}
else:
  static :
    hint("Declaration of " & "rlOrtho" & " already exists, not redeclaring")
when not declared(rlViewport):
  proc rlViewport*(x: cint; y: cint; width: cint; height: cint): void {.cdecl,
      importc: "rlViewport".}
else:
  static :
    hint("Declaration of " & "rlViewport" & " already exists, not redeclaring")
when not declared(rlBegin):
  proc rlBegin*(mode: cint): void {.cdecl, importc: "rlBegin".}
else:
  static :
    hint("Declaration of " & "rlBegin" & " already exists, not redeclaring")
when not declared(rlEnd):
  proc rlEnd*(): void {.cdecl, importc: "rlEnd".}
else:
  static :
    hint("Declaration of " & "rlEnd" & " already exists, not redeclaring")
when not declared(rlVertex2i):
  proc rlVertex2i*(x: cint; y: cint): void {.cdecl, importc: "rlVertex2i".}
else:
  static :
    hint("Declaration of " & "rlVertex2i" & " already exists, not redeclaring")
when not declared(rlVertex2f):
  proc rlVertex2f*(x: cfloat; y: cfloat): void {.cdecl, importc: "rlVertex2f".}
else:
  static :
    hint("Declaration of " & "rlVertex2f" & " already exists, not redeclaring")
when not declared(rlVertex3f):
  proc rlVertex3f*(x: cfloat; y: cfloat; z: cfloat): void {.cdecl,
      importc: "rlVertex3f".}
else:
  static :
    hint("Declaration of " & "rlVertex3f" & " already exists, not redeclaring")
when not declared(rlTexCoord2f):
  proc rlTexCoord2f*(x: cfloat; y: cfloat): void {.cdecl,
      importc: "rlTexCoord2f".}
else:
  static :
    hint("Declaration of " & "rlTexCoord2f" & " already exists, not redeclaring")
when not declared(rlNormal3f):
  proc rlNormal3f*(x: cfloat; y: cfloat; z: cfloat): void {.cdecl,
      importc: "rlNormal3f".}
else:
  static :
    hint("Declaration of " & "rlNormal3f" & " already exists, not redeclaring")
when not declared(rlColor4ub):
  proc rlColor4ub*(r: uint8; g: uint8; b: uint8; a: uint8): void {.cdecl,
      importc: "rlColor4ub".}
else:
  static :
    hint("Declaration of " & "rlColor4ub" & " already exists, not redeclaring")
when not declared(rlColor3f):
  proc rlColor3f*(x: cfloat; y: cfloat; z: cfloat): void {.cdecl,
      importc: "rlColor3f".}
else:
  static :
    hint("Declaration of " & "rlColor3f" & " already exists, not redeclaring")
when not declared(rlColor4f):
  proc rlColor4f*(x: cfloat; y: cfloat; z: cfloat; w: cfloat): void {.cdecl,
      importc: "rlColor4f".}
else:
  static :
    hint("Declaration of " & "rlColor4f" & " already exists, not redeclaring")
when not declared(rlEnableVertexArray):
  proc rlEnableVertexArray*(vaoId: cuint): bool {.cdecl,
      importc: "rlEnableVertexArray".}
else:
  static :
    hint("Declaration of " & "rlEnableVertexArray" &
        " already exists, not redeclaring")
when not declared(rlDisableVertexArray):
  proc rlDisableVertexArray*(): void {.cdecl, importc: "rlDisableVertexArray".}
else:
  static :
    hint("Declaration of " & "rlDisableVertexArray" &
        " already exists, not redeclaring")
when not declared(rlEnableVertexBuffer):
  proc rlEnableVertexBuffer*(id: cuint): void {.cdecl,
      importc: "rlEnableVertexBuffer".}
else:
  static :
    hint("Declaration of " & "rlEnableVertexBuffer" &
        " already exists, not redeclaring")
when not declared(rlDisableVertexBuffer):
  proc rlDisableVertexBuffer*(): void {.cdecl, importc: "rlDisableVertexBuffer".}
else:
  static :
    hint("Declaration of " & "rlDisableVertexBuffer" &
        " already exists, not redeclaring")
when not declared(rlEnableVertexBufferElement):
  proc rlEnableVertexBufferElement*(id: cuint): void {.cdecl,
      importc: "rlEnableVertexBufferElement".}
else:
  static :
    hint("Declaration of " & "rlEnableVertexBufferElement" &
        " already exists, not redeclaring")
when not declared(rlDisableVertexBufferElement):
  proc rlDisableVertexBufferElement*(): void {.cdecl,
      importc: "rlDisableVertexBufferElement".}
else:
  static :
    hint("Declaration of " & "rlDisableVertexBufferElement" &
        " already exists, not redeclaring")
when not declared(rlEnableVertexAttribute):
  proc rlEnableVertexAttribute*(index: cuint): void {.cdecl,
      importc: "rlEnableVertexAttribute".}
else:
  static :
    hint("Declaration of " & "rlEnableVertexAttribute" &
        " already exists, not redeclaring")
when not declared(rlDisableVertexAttribute):
  proc rlDisableVertexAttribute*(index: cuint): void {.cdecl,
      importc: "rlDisableVertexAttribute".}
else:
  static :
    hint("Declaration of " & "rlDisableVertexAttribute" &
        " already exists, not redeclaring")
when not declared(rlActiveTextureSlot):
  proc rlActiveTextureSlot*(slot: cint): void {.cdecl,
      importc: "rlActiveTextureSlot".}
else:
  static :
    hint("Declaration of " & "rlActiveTextureSlot" &
        " already exists, not redeclaring")
when not declared(rlEnableTexture):
  proc rlEnableTexture*(id: cuint): void {.cdecl, importc: "rlEnableTexture".}
else:
  static :
    hint("Declaration of " & "rlEnableTexture" &
        " already exists, not redeclaring")
when not declared(rlDisableTexture):
  proc rlDisableTexture*(): void {.cdecl, importc: "rlDisableTexture".}
else:
  static :
    hint("Declaration of " & "rlDisableTexture" &
        " already exists, not redeclaring")
when not declared(rlEnableTextureCubemap):
  proc rlEnableTextureCubemap*(id: cuint): void {.cdecl,
      importc: "rlEnableTextureCubemap".}
else:
  static :
    hint("Declaration of " & "rlEnableTextureCubemap" &
        " already exists, not redeclaring")
when not declared(rlDisableTextureCubemap):
  proc rlDisableTextureCubemap*(): void {.cdecl,
      importc: "rlDisableTextureCubemap".}
else:
  static :
    hint("Declaration of " & "rlDisableTextureCubemap" &
        " already exists, not redeclaring")
when not declared(rlTextureParameters):
  proc rlTextureParameters*(id: cuint; param: cint; value: cint): void {.cdecl,
      importc: "rlTextureParameters".}
else:
  static :
    hint("Declaration of " & "rlTextureParameters" &
        " already exists, not redeclaring")
when not declared(rlCubemapParameters):
  proc rlCubemapParameters*(id: cuint; param: cint; value: cint): void {.cdecl,
      importc: "rlCubemapParameters".}
else:
  static :
    hint("Declaration of " & "rlCubemapParameters" &
        " already exists, not redeclaring")
when not declared(rlEnableShader):
  proc rlEnableShader*(id: cuint): void {.cdecl, importc: "rlEnableShader".}
else:
  static :
    hint("Declaration of " & "rlEnableShader" &
        " already exists, not redeclaring")
when not declared(rlDisableShader):
  proc rlDisableShader*(): void {.cdecl, importc: "rlDisableShader".}
else:
  static :
    hint("Declaration of " & "rlDisableShader" &
        " already exists, not redeclaring")
when not declared(rlEnableFramebuffer):
  proc rlEnableFramebuffer*(id: cuint): void {.cdecl,
      importc: "rlEnableFramebuffer".}
else:
  static :
    hint("Declaration of " & "rlEnableFramebuffer" &
        " already exists, not redeclaring")
when not declared(rlDisableFramebuffer):
  proc rlDisableFramebuffer*(): void {.cdecl, importc: "rlDisableFramebuffer".}
else:
  static :
    hint("Declaration of " & "rlDisableFramebuffer" &
        " already exists, not redeclaring")
when not declared(rlGetActiveFramebuffer):
  proc rlGetActiveFramebuffer*(): cuint {.cdecl,
      importc: "rlGetActiveFramebuffer".}
else:
  static :
    hint("Declaration of " & "rlGetActiveFramebuffer" &
        " already exists, not redeclaring")
when not declared(rlActiveDrawBuffers):
  proc rlActiveDrawBuffers*(count: cint): void {.cdecl,
      importc: "rlActiveDrawBuffers".}
else:
  static :
    hint("Declaration of " & "rlActiveDrawBuffers" &
        " already exists, not redeclaring")
when not declared(rlBlitFramebuffer):
  proc rlBlitFramebuffer*(srcX: cint; srcY: cint; srcWidth: cint;
                          srcHeight: cint; dstX: cint; dstY: cint;
                          dstWidth: cint; dstHeight: cint; bufferMask: cint): void {.
      cdecl, importc: "rlBlitFramebuffer".}
else:
  static :
    hint("Declaration of " & "rlBlitFramebuffer" &
        " already exists, not redeclaring")
when not declared(rlBindFramebuffer):
  proc rlBindFramebuffer*(target: cuint; framebuffer: cuint): void {.cdecl,
      importc: "rlBindFramebuffer".}
else:
  static :
    hint("Declaration of " & "rlBindFramebuffer" &
        " already exists, not redeclaring")
when not declared(rlEnableColorBlend):
  proc rlEnableColorBlend*(): void {.cdecl, importc: "rlEnableColorBlend".}
else:
  static :
    hint("Declaration of " & "rlEnableColorBlend" &
        " already exists, not redeclaring")
when not declared(rlDisableColorBlend):
  proc rlDisableColorBlend*(): void {.cdecl, importc: "rlDisableColorBlend".}
else:
  static :
    hint("Declaration of " & "rlDisableColorBlend" &
        " already exists, not redeclaring")
when not declared(rlEnableDepthTest):
  proc rlEnableDepthTest*(): void {.cdecl, importc: "rlEnableDepthTest".}
else:
  static :
    hint("Declaration of " & "rlEnableDepthTest" &
        " already exists, not redeclaring")
when not declared(rlDisableDepthTest):
  proc rlDisableDepthTest*(): void {.cdecl, importc: "rlDisableDepthTest".}
else:
  static :
    hint("Declaration of " & "rlDisableDepthTest" &
        " already exists, not redeclaring")
when not declared(rlEnableDepthMask):
  proc rlEnableDepthMask*(): void {.cdecl, importc: "rlEnableDepthMask".}
else:
  static :
    hint("Declaration of " & "rlEnableDepthMask" &
        " already exists, not redeclaring")
when not declared(rlDisableDepthMask):
  proc rlDisableDepthMask*(): void {.cdecl, importc: "rlDisableDepthMask".}
else:
  static :
    hint("Declaration of " & "rlDisableDepthMask" &
        " already exists, not redeclaring")
when not declared(rlEnableBackfaceCulling):
  proc rlEnableBackfaceCulling*(): void {.cdecl,
      importc: "rlEnableBackfaceCulling".}
else:
  static :
    hint("Declaration of " & "rlEnableBackfaceCulling" &
        " already exists, not redeclaring")
when not declared(rlDisableBackfaceCulling):
  proc rlDisableBackfaceCulling*(): void {.cdecl,
      importc: "rlDisableBackfaceCulling".}
else:
  static :
    hint("Declaration of " & "rlDisableBackfaceCulling" &
        " already exists, not redeclaring")
when not declared(rlColorMask):
  proc rlColorMask*(r: bool; g: bool; b: bool; a: bool): void {.cdecl,
      importc: "rlColorMask".}
else:
  static :
    hint("Declaration of " & "rlColorMask" & " already exists, not redeclaring")
when not declared(rlSetCullFace):
  proc rlSetCullFace*(mode: cint): void {.cdecl, importc: "rlSetCullFace".}
else:
  static :
    hint("Declaration of " & "rlSetCullFace" &
        " already exists, not redeclaring")
when not declared(rlEnableScissorTest):
  proc rlEnableScissorTest*(): void {.cdecl, importc: "rlEnableScissorTest".}
else:
  static :
    hint("Declaration of " & "rlEnableScissorTest" &
        " already exists, not redeclaring")
when not declared(rlDisableScissorTest):
  proc rlDisableScissorTest*(): void {.cdecl, importc: "rlDisableScissorTest".}
else:
  static :
    hint("Declaration of " & "rlDisableScissorTest" &
        " already exists, not redeclaring")
when not declared(rlScissor):
  proc rlScissor*(x: cint; y: cint; width: cint; height: cint): void {.cdecl,
      importc: "rlScissor".}
else:
  static :
    hint("Declaration of " & "rlScissor" & " already exists, not redeclaring")
when not declared(rlEnableWireMode):
  proc rlEnableWireMode*(): void {.cdecl, importc: "rlEnableWireMode".}
else:
  static :
    hint("Declaration of " & "rlEnableWireMode" &
        " already exists, not redeclaring")
when not declared(rlEnablePointMode):
  proc rlEnablePointMode*(): void {.cdecl, importc: "rlEnablePointMode".}
else:
  static :
    hint("Declaration of " & "rlEnablePointMode" &
        " already exists, not redeclaring")
when not declared(rlDisableWireMode):
  proc rlDisableWireMode*(): void {.cdecl, importc: "rlDisableWireMode".}
else:
  static :
    hint("Declaration of " & "rlDisableWireMode" &
        " already exists, not redeclaring")
when not declared(rlSetLineWidth):
  proc rlSetLineWidth*(width: cfloat): void {.cdecl, importc: "rlSetLineWidth".}
else:
  static :
    hint("Declaration of " & "rlSetLineWidth" &
        " already exists, not redeclaring")
when not declared(rlGetLineWidth):
  proc rlGetLineWidth*(): cfloat {.cdecl, importc: "rlGetLineWidth".}
else:
  static :
    hint("Declaration of " & "rlGetLineWidth" &
        " already exists, not redeclaring")
when not declared(rlEnableSmoothLines):
  proc rlEnableSmoothLines*(): void {.cdecl, importc: "rlEnableSmoothLines".}
else:
  static :
    hint("Declaration of " & "rlEnableSmoothLines" &
        " already exists, not redeclaring")
when not declared(rlDisableSmoothLines):
  proc rlDisableSmoothLines*(): void {.cdecl, importc: "rlDisableSmoothLines".}
else:
  static :
    hint("Declaration of " & "rlDisableSmoothLines" &
        " already exists, not redeclaring")
when not declared(rlEnableStereoRender):
  proc rlEnableStereoRender*(): void {.cdecl, importc: "rlEnableStereoRender".}
else:
  static :
    hint("Declaration of " & "rlEnableStereoRender" &
        " already exists, not redeclaring")
when not declared(rlDisableStereoRender):
  proc rlDisableStereoRender*(): void {.cdecl, importc: "rlDisableStereoRender".}
else:
  static :
    hint("Declaration of " & "rlDisableStereoRender" &
        " already exists, not redeclaring")
when not declared(rlIsStereoRenderEnabled):
  proc rlIsStereoRenderEnabled*(): bool {.cdecl,
      importc: "rlIsStereoRenderEnabled".}
else:
  static :
    hint("Declaration of " & "rlIsStereoRenderEnabled" &
        " already exists, not redeclaring")
when not declared(rlClearColor):
  proc rlClearColor*(r: uint8; g: uint8; b: uint8; a: uint8): void {.cdecl,
      importc: "rlClearColor".}
else:
  static :
    hint("Declaration of " & "rlClearColor" & " already exists, not redeclaring")
when not declared(rlClearScreenBuffers):
  proc rlClearScreenBuffers*(): void {.cdecl, importc: "rlClearScreenBuffers".}
else:
  static :
    hint("Declaration of " & "rlClearScreenBuffers" &
        " already exists, not redeclaring")
when not declared(rlCheckErrors):
  proc rlCheckErrors*(): void {.cdecl, importc: "rlCheckErrors".}
else:
  static :
    hint("Declaration of " & "rlCheckErrors" &
        " already exists, not redeclaring")
when not declared(rlSetBlendMode):
  proc rlSetBlendMode*(mode: cint): void {.cdecl, importc: "rlSetBlendMode".}
else:
  static :
    hint("Declaration of " & "rlSetBlendMode" &
        " already exists, not redeclaring")
when not declared(rlSetBlendFactors):
  proc rlSetBlendFactors*(glSrcFactor: cint; glDstFactor: cint; glEquation: cint): void {.
      cdecl, importc: "rlSetBlendFactors".}
else:
  static :
    hint("Declaration of " & "rlSetBlendFactors" &
        " already exists, not redeclaring")
when not declared(rlSetBlendFactorsSeparate):
  proc rlSetBlendFactorsSeparate*(glSrcRGB: cint; glDstRGB: cint;
                                  glSrcAlpha: cint; glDstAlpha: cint;
                                  glEqRGB: cint; glEqAlpha: cint): void {.cdecl,
      importc: "rlSetBlendFactorsSeparate".}
else:
  static :
    hint("Declaration of " & "rlSetBlendFactorsSeparate" &
        " already exists, not redeclaring")
when not declared(rlglInit):
  proc rlglInit*(width: cint; height: cint): void {.cdecl, importc: "rlglInit".}
else:
  static :
    hint("Declaration of " & "rlglInit" & " already exists, not redeclaring")
when not declared(rlglClose):
  proc rlglClose*(): void {.cdecl, importc: "rlglClose".}
else:
  static :
    hint("Declaration of " & "rlglClose" & " already exists, not redeclaring")
when not declared(rlLoadExtensions):
  proc rlLoadExtensions*(loader: pointer): void {.cdecl,
      importc: "rlLoadExtensions".}
else:
  static :
    hint("Declaration of " & "rlLoadExtensions" &
        " already exists, not redeclaring")
when not declared(rlGetVersion):
  proc rlGetVersion*(): cint {.cdecl, importc: "rlGetVersion".}
else:
  static :
    hint("Declaration of " & "rlGetVersion" & " already exists, not redeclaring")
when not declared(rlSetFramebufferWidth):
  proc rlSetFramebufferWidth*(width: cint): void {.cdecl,
      importc: "rlSetFramebufferWidth".}
else:
  static :
    hint("Declaration of " & "rlSetFramebufferWidth" &
        " already exists, not redeclaring")
when not declared(rlGetFramebufferWidth):
  proc rlGetFramebufferWidth*(): cint {.cdecl, importc: "rlGetFramebufferWidth".}
else:
  static :
    hint("Declaration of " & "rlGetFramebufferWidth" &
        " already exists, not redeclaring")
when not declared(rlSetFramebufferHeight):
  proc rlSetFramebufferHeight*(height: cint): void {.cdecl,
      importc: "rlSetFramebufferHeight".}
else:
  static :
    hint("Declaration of " & "rlSetFramebufferHeight" &
        " already exists, not redeclaring")
when not declared(rlGetFramebufferHeight):
  proc rlGetFramebufferHeight*(): cint {.cdecl,
      importc: "rlGetFramebufferHeight".}
else:
  static :
    hint("Declaration of " & "rlGetFramebufferHeight" &
        " already exists, not redeclaring")
when not declared(rlGetTextureIdDefault):
  proc rlGetTextureIdDefault*(): cuint {.cdecl, importc: "rlGetTextureIdDefault".}
else:
  static :
    hint("Declaration of " & "rlGetTextureIdDefault" &
        " already exists, not redeclaring")
when not declared(rlGetShaderIdDefault):
  proc rlGetShaderIdDefault*(): cuint {.cdecl, importc: "rlGetShaderIdDefault".}
else:
  static :
    hint("Declaration of " & "rlGetShaderIdDefault" &
        " already exists, not redeclaring")
when not declared(rlGetShaderLocsDefault):
  proc rlGetShaderLocsDefault*(): ptr cint {.cdecl,
      importc: "rlGetShaderLocsDefault".}
else:
  static :
    hint("Declaration of " & "rlGetShaderLocsDefault" &
        " already exists, not redeclaring")
when not declared(rlLoadRenderBatch):
  proc rlLoadRenderBatch*(numBuffers: cint; bufferElements: cint): rlRenderBatch_520094556 {.
      cdecl, importc: "rlLoadRenderBatch".}
else:
  static :
    hint("Declaration of " & "rlLoadRenderBatch" &
        " already exists, not redeclaring")
when not declared(rlUnloadRenderBatch):
  proc rlUnloadRenderBatch*(batch: rlRenderBatch_520094556): void {.cdecl,
      importc: "rlUnloadRenderBatch".}
else:
  static :
    hint("Declaration of " & "rlUnloadRenderBatch" &
        " already exists, not redeclaring")
when not declared(rlDrawRenderBatch):
  proc rlDrawRenderBatch*(batch: ptr rlRenderBatch_520094556): void {.cdecl,
      importc: "rlDrawRenderBatch".}
else:
  static :
    hint("Declaration of " & "rlDrawRenderBatch" &
        " already exists, not redeclaring")
when not declared(rlSetRenderBatchActive):
  proc rlSetRenderBatchActive*(batch: ptr rlRenderBatch_520094556): void {.
      cdecl, importc: "rlSetRenderBatchActive".}
else:
  static :
    hint("Declaration of " & "rlSetRenderBatchActive" &
        " already exists, not redeclaring")
when not declared(rlDrawRenderBatchActive):
  proc rlDrawRenderBatchActive*(): void {.cdecl,
      importc: "rlDrawRenderBatchActive".}
else:
  static :
    hint("Declaration of " & "rlDrawRenderBatchActive" &
        " already exists, not redeclaring")
when not declared(rlCheckRenderBatchLimit):
  proc rlCheckRenderBatchLimit*(vCount: cint): bool {.cdecl,
      importc: "rlCheckRenderBatchLimit".}
else:
  static :
    hint("Declaration of " & "rlCheckRenderBatchLimit" &
        " already exists, not redeclaring")
when not declared(rlSetTexture):
  proc rlSetTexture*(id: cuint): void {.cdecl, importc: "rlSetTexture".}
else:
  static :
    hint("Declaration of " & "rlSetTexture" & " already exists, not redeclaring")
when not declared(rlLoadVertexArray):
  proc rlLoadVertexArray*(): cuint {.cdecl, importc: "rlLoadVertexArray".}
else:
  static :
    hint("Declaration of " & "rlLoadVertexArray" &
        " already exists, not redeclaring")
when not declared(rlLoadVertexBuffer):
  proc rlLoadVertexBuffer*(buffer: pointer; size: cint; dynamic: bool): cuint {.
      cdecl, importc: "rlLoadVertexBuffer".}
else:
  static :
    hint("Declaration of " & "rlLoadVertexBuffer" &
        " already exists, not redeclaring")
when not declared(rlLoadVertexBufferElement):
  proc rlLoadVertexBufferElement*(buffer: pointer; size: cint; dynamic: bool): cuint {.
      cdecl, importc: "rlLoadVertexBufferElement".}
else:
  static :
    hint("Declaration of " & "rlLoadVertexBufferElement" &
        " already exists, not redeclaring")
when not declared(rlUpdateVertexBuffer):
  proc rlUpdateVertexBuffer*(bufferId: cuint; data: pointer; dataSize: cint;
                             offset: cint): void {.cdecl,
      importc: "rlUpdateVertexBuffer".}
else:
  static :
    hint("Declaration of " & "rlUpdateVertexBuffer" &
        " already exists, not redeclaring")
when not declared(rlUpdateVertexBufferElements):
  proc rlUpdateVertexBufferElements*(id: cuint; data: pointer; dataSize: cint;
                                     offset: cint): void {.cdecl,
      importc: "rlUpdateVertexBufferElements".}
else:
  static :
    hint("Declaration of " & "rlUpdateVertexBufferElements" &
        " already exists, not redeclaring")
when not declared(rlUnloadVertexArray):
  proc rlUnloadVertexArray*(vaoId: cuint): void {.cdecl,
      importc: "rlUnloadVertexArray".}
else:
  static :
    hint("Declaration of " & "rlUnloadVertexArray" &
        " already exists, not redeclaring")
when not declared(rlUnloadVertexBuffer):
  proc rlUnloadVertexBuffer*(vboId: cuint): void {.cdecl,
      importc: "rlUnloadVertexBuffer".}
else:
  static :
    hint("Declaration of " & "rlUnloadVertexBuffer" &
        " already exists, not redeclaring")
when not declared(rlSetVertexAttribute):
  proc rlSetVertexAttribute*(index: cuint; compSize: cint; type_arg: cint;
                             normalized: bool; stride: cint;
                             pointer_arg: pointer): void {.cdecl,
      importc: "rlSetVertexAttribute".}
else:
  static :
    hint("Declaration of " & "rlSetVertexAttribute" &
        " already exists, not redeclaring")
when not declared(rlSetVertexAttributeDivisor):
  proc rlSetVertexAttributeDivisor*(index: cuint; divisor: cint): void {.cdecl,
      importc: "rlSetVertexAttributeDivisor".}
else:
  static :
    hint("Declaration of " & "rlSetVertexAttributeDivisor" &
        " already exists, not redeclaring")
when not declared(rlSetVertexAttributeDefault):
  proc rlSetVertexAttributeDefault*(locIndex: cint; value: pointer;
                                    attribType: cint; count: cint): void {.
      cdecl, importc: "rlSetVertexAttributeDefault".}
else:
  static :
    hint("Declaration of " & "rlSetVertexAttributeDefault" &
        " already exists, not redeclaring")
when not declared(rlDrawVertexArray):
  proc rlDrawVertexArray*(offset: cint; count: cint): void {.cdecl,
      importc: "rlDrawVertexArray".}
else:
  static :
    hint("Declaration of " & "rlDrawVertexArray" &
        " already exists, not redeclaring")
when not declared(rlDrawVertexArrayElements):
  proc rlDrawVertexArrayElements*(offset: cint; count: cint; buffer: pointer): void {.
      cdecl, importc: "rlDrawVertexArrayElements".}
else:
  static :
    hint("Declaration of " & "rlDrawVertexArrayElements" &
        " already exists, not redeclaring")
when not declared(rlDrawVertexArrayInstanced):
  proc rlDrawVertexArrayInstanced*(offset: cint; count: cint; instances: cint): void {.
      cdecl, importc: "rlDrawVertexArrayInstanced".}
else:
  static :
    hint("Declaration of " & "rlDrawVertexArrayInstanced" &
        " already exists, not redeclaring")
when not declared(rlDrawVertexArrayElementsInstanced):
  proc rlDrawVertexArrayElementsInstanced*(offset: cint; count: cint;
      buffer: pointer; instances: cint): void {.cdecl,
      importc: "rlDrawVertexArrayElementsInstanced".}
else:
  static :
    hint("Declaration of " & "rlDrawVertexArrayElementsInstanced" &
        " already exists, not redeclaring")
when not declared(rlLoadTexture):
  proc rlLoadTexture*(data: pointer; width: cint; height: cint; format: cint;
                      mipmapCount: cint): cuint {.cdecl,
      importc: "rlLoadTexture".}
else:
  static :
    hint("Declaration of " & "rlLoadTexture" &
        " already exists, not redeclaring")
when not declared(rlLoadTextureDepth):
  proc rlLoadTextureDepth*(width: cint; height: cint; useRenderBuffer: bool): cuint {.
      cdecl, importc: "rlLoadTextureDepth".}
else:
  static :
    hint("Declaration of " & "rlLoadTextureDepth" &
        " already exists, not redeclaring")
when not declared(rlLoadTextureCubemap):
  proc rlLoadTextureCubemap*(data: pointer; size: cint; format: cint): cuint {.
      cdecl, importc: "rlLoadTextureCubemap".}
else:
  static :
    hint("Declaration of " & "rlLoadTextureCubemap" &
        " already exists, not redeclaring")
when not declared(rlUpdateTexture):
  proc rlUpdateTexture*(id: cuint; offsetX: cint; offsetY: cint; width: cint;
                        height: cint; format: cint; data: pointer): void {.
      cdecl, importc: "rlUpdateTexture".}
else:
  static :
    hint("Declaration of " & "rlUpdateTexture" &
        " already exists, not redeclaring")
when not declared(rlGetGlTextureFormats):
  proc rlGetGlTextureFormats*(format: cint; glInternalFormat: ptr cuint;
                              glFormat: ptr cuint; glType: ptr cuint): void {.
      cdecl, importc: "rlGetGlTextureFormats".}
else:
  static :
    hint("Declaration of " & "rlGetGlTextureFormats" &
        " already exists, not redeclaring")
when not declared(rlGetPixelFormatName):
  proc rlGetPixelFormatName*(format: cuint): cstring {.cdecl,
      importc: "rlGetPixelFormatName".}
else:
  static :
    hint("Declaration of " & "rlGetPixelFormatName" &
        " already exists, not redeclaring")
when not declared(rlUnloadTexture):
  proc rlUnloadTexture*(id: cuint): void {.cdecl, importc: "rlUnloadTexture".}
else:
  static :
    hint("Declaration of " & "rlUnloadTexture" &
        " already exists, not redeclaring")
when not declared(rlGenTextureMipmaps):
  proc rlGenTextureMipmaps*(id: cuint; width: cint; height: cint; format: cint;
                            mipmaps: ptr cint): void {.cdecl,
      importc: "rlGenTextureMipmaps".}
else:
  static :
    hint("Declaration of " & "rlGenTextureMipmaps" &
        " already exists, not redeclaring")
when not declared(rlReadTexturePixels):
  proc rlReadTexturePixels*(id: cuint; width: cint; height: cint; format: cint): pointer {.
      cdecl, importc: "rlReadTexturePixels".}
else:
  static :
    hint("Declaration of " & "rlReadTexturePixels" &
        " already exists, not redeclaring")
when not declared(rlReadScreenPixels):
  proc rlReadScreenPixels*(width: cint; height: cint): ptr uint8 {.cdecl,
      importc: "rlReadScreenPixels".}
else:
  static :
    hint("Declaration of " & "rlReadScreenPixels" &
        " already exists, not redeclaring")
when not declared(rlLoadFramebuffer):
  proc rlLoadFramebuffer*(): cuint {.cdecl, importc: "rlLoadFramebuffer".}
else:
  static :
    hint("Declaration of " & "rlLoadFramebuffer" &
        " already exists, not redeclaring")
when not declared(rlFramebufferAttach):
  proc rlFramebufferAttach*(fboId: cuint; texId: cuint; attachType: cint;
                            texType: cint; mipLevel: cint): void {.cdecl,
      importc: "rlFramebufferAttach".}
else:
  static :
    hint("Declaration of " & "rlFramebufferAttach" &
        " already exists, not redeclaring")
when not declared(rlFramebufferComplete):
  proc rlFramebufferComplete*(id: cuint): bool {.cdecl,
      importc: "rlFramebufferComplete".}
else:
  static :
    hint("Declaration of " & "rlFramebufferComplete" &
        " already exists, not redeclaring")
when not declared(rlUnloadFramebuffer):
  proc rlUnloadFramebuffer*(id: cuint): void {.cdecl,
      importc: "rlUnloadFramebuffer".}
else:
  static :
    hint("Declaration of " & "rlUnloadFramebuffer" &
        " already exists, not redeclaring")
when not declared(rlLoadShaderCode):
  proc rlLoadShaderCode*(vsCode: cstring; fsCode: cstring): cuint {.cdecl,
      importc: "rlLoadShaderCode".}
else:
  static :
    hint("Declaration of " & "rlLoadShaderCode" &
        " already exists, not redeclaring")
when not declared(rlCompileShader):
  proc rlCompileShader*(shaderCode: cstring; type_arg: cint): cuint {.cdecl,
      importc: "rlCompileShader".}
else:
  static :
    hint("Declaration of " & "rlCompileShader" &
        " already exists, not redeclaring")
when not declared(rlLoadShaderProgram):
  proc rlLoadShaderProgram*(vShaderId: cuint; fShaderId: cuint): cuint {.cdecl,
      importc: "rlLoadShaderProgram".}
else:
  static :
    hint("Declaration of " & "rlLoadShaderProgram" &
        " already exists, not redeclaring")
when not declared(rlUnloadShaderProgram):
  proc rlUnloadShaderProgram*(id: cuint): void {.cdecl,
      importc: "rlUnloadShaderProgram".}
else:
  static :
    hint("Declaration of " & "rlUnloadShaderProgram" &
        " already exists, not redeclaring")
when not declared(rlGetLocationUniform):
  proc rlGetLocationUniform*(shaderId: cuint; uniformName: cstring): cint {.
      cdecl, importc: "rlGetLocationUniform".}
else:
  static :
    hint("Declaration of " & "rlGetLocationUniform" &
        " already exists, not redeclaring")
when not declared(rlGetLocationAttrib):
  proc rlGetLocationAttrib*(shaderId: cuint; attribName: cstring): cint {.cdecl,
      importc: "rlGetLocationAttrib".}
else:
  static :
    hint("Declaration of " & "rlGetLocationAttrib" &
        " already exists, not redeclaring")
when not declared(rlSetUniform):
  proc rlSetUniform*(locIndex: cint; value: pointer; uniformType: cint;
                     count: cint): void {.cdecl, importc: "rlSetUniform".}
else:
  static :
    hint("Declaration of " & "rlSetUniform" & " already exists, not redeclaring")
when not declared(rlSetUniformMatrix):
  proc rlSetUniformMatrix*(locIndex: cint; mat: Matrix_520094157): void {.cdecl,
      importc: "rlSetUniformMatrix".}
else:
  static :
    hint("Declaration of " & "rlSetUniformMatrix" &
        " already exists, not redeclaring")
when not declared(rlSetUniformSampler):
  proc rlSetUniformSampler*(locIndex: cint; textureId: cuint): void {.cdecl,
      importc: "rlSetUniformSampler".}
else:
  static :
    hint("Declaration of " & "rlSetUniformSampler" &
        " already exists, not redeclaring")
when not declared(rlSetShader):
  proc rlSetShader*(id: cuint; locs: ptr cint): void {.cdecl,
      importc: "rlSetShader".}
else:
  static :
    hint("Declaration of " & "rlSetShader" & " already exists, not redeclaring")
when not declared(rlLoadComputeShaderProgram):
  proc rlLoadComputeShaderProgram*(shaderId: cuint): cuint {.cdecl,
      importc: "rlLoadComputeShaderProgram".}
else:
  static :
    hint("Declaration of " & "rlLoadComputeShaderProgram" &
        " already exists, not redeclaring")
when not declared(rlComputeShaderDispatch):
  proc rlComputeShaderDispatch*(groupX: cuint; groupY: cuint; groupZ: cuint): void {.
      cdecl, importc: "rlComputeShaderDispatch".}
else:
  static :
    hint("Declaration of " & "rlComputeShaderDispatch" &
        " already exists, not redeclaring")
when not declared(rlLoadShaderBuffer):
  proc rlLoadShaderBuffer*(size: cuint; data: pointer; usageHint: cint): cuint {.
      cdecl, importc: "rlLoadShaderBuffer".}
else:
  static :
    hint("Declaration of " & "rlLoadShaderBuffer" &
        " already exists, not redeclaring")
when not declared(rlUnloadShaderBuffer):
  proc rlUnloadShaderBuffer*(ssboId: cuint): void {.cdecl,
      importc: "rlUnloadShaderBuffer".}
else:
  static :
    hint("Declaration of " & "rlUnloadShaderBuffer" &
        " already exists, not redeclaring")
when not declared(rlUpdateShaderBuffer):
  proc rlUpdateShaderBuffer*(id: cuint; data: pointer; dataSize: cuint;
                             offset: cuint): void {.cdecl,
      importc: "rlUpdateShaderBuffer".}
else:
  static :
    hint("Declaration of " & "rlUpdateShaderBuffer" &
        " already exists, not redeclaring")
when not declared(rlBindShaderBuffer):
  proc rlBindShaderBuffer*(id: cuint; index: cuint): void {.cdecl,
      importc: "rlBindShaderBuffer".}
else:
  static :
    hint("Declaration of " & "rlBindShaderBuffer" &
        " already exists, not redeclaring")
when not declared(rlReadShaderBuffer):
  proc rlReadShaderBuffer*(id: cuint; dest: pointer; count: cuint; offset: cuint): void {.
      cdecl, importc: "rlReadShaderBuffer".}
else:
  static :
    hint("Declaration of " & "rlReadShaderBuffer" &
        " already exists, not redeclaring")
when not declared(rlCopyShaderBuffer):
  proc rlCopyShaderBuffer*(destId: cuint; srcId: cuint; destOffset: cuint;
                           srcOffset: cuint; count: cuint): void {.cdecl,
      importc: "rlCopyShaderBuffer".}
else:
  static :
    hint("Declaration of " & "rlCopyShaderBuffer" &
        " already exists, not redeclaring")
when not declared(rlGetShaderBufferSize):
  proc rlGetShaderBufferSize*(id: cuint): cuint {.cdecl,
      importc: "rlGetShaderBufferSize".}
else:
  static :
    hint("Declaration of " & "rlGetShaderBufferSize" &
        " already exists, not redeclaring")
when not declared(rlBindImageTexture):
  proc rlBindImageTexture*(id: cuint; index: cuint; format: cint; readonly: bool): void {.
      cdecl, importc: "rlBindImageTexture".}
else:
  static :
    hint("Declaration of " & "rlBindImageTexture" &
        " already exists, not redeclaring")
when not declared(rlGetMatrixModelview):
  proc rlGetMatrixModelview*(): Matrix_520094157 {.cdecl,
      importc: "rlGetMatrixModelview".}
else:
  static :
    hint("Declaration of " & "rlGetMatrixModelview" &
        " already exists, not redeclaring")
when not declared(rlGetMatrixProjection):
  proc rlGetMatrixProjection*(): Matrix_520094157 {.cdecl,
      importc: "rlGetMatrixProjection".}
else:
  static :
    hint("Declaration of " & "rlGetMatrixProjection" &
        " already exists, not redeclaring")
when not declared(rlGetMatrixTransform):
  proc rlGetMatrixTransform*(): Matrix_520094157 {.cdecl,
      importc: "rlGetMatrixTransform".}
else:
  static :
    hint("Declaration of " & "rlGetMatrixTransform" &
        " already exists, not redeclaring")
when not declared(rlGetMatrixProjectionStereo):
  proc rlGetMatrixProjectionStereo*(eye: cint): Matrix_520094157 {.cdecl,
      importc: "rlGetMatrixProjectionStereo".}
else:
  static :
    hint("Declaration of " & "rlGetMatrixProjectionStereo" &
        " already exists, not redeclaring")
when not declared(rlGetMatrixViewOffsetStereo):
  proc rlGetMatrixViewOffsetStereo*(eye: cint): Matrix_520094157 {.cdecl,
      importc: "rlGetMatrixViewOffsetStereo".}
else:
  static :
    hint("Declaration of " & "rlGetMatrixViewOffsetStereo" &
        " already exists, not redeclaring")
when not declared(rlSetMatrixProjection):
  proc rlSetMatrixProjection*(proj: Matrix_520094157): void {.cdecl,
      importc: "rlSetMatrixProjection".}
else:
  static :
    hint("Declaration of " & "rlSetMatrixProjection" &
        " already exists, not redeclaring")
when not declared(rlSetMatrixModelview):
  proc rlSetMatrixModelview*(view: Matrix_520094157): void {.cdecl,
      importc: "rlSetMatrixModelview".}
else:
  static :
    hint("Declaration of " & "rlSetMatrixModelview" &
        " already exists, not redeclaring")
when not declared(rlSetMatrixProjectionStereo):
  proc rlSetMatrixProjectionStereo*(right: Matrix_520094157; left: Matrix_520094157): void {.
      cdecl, importc: "rlSetMatrixProjectionStereo".}
else:
  static :
    hint("Declaration of " & "rlSetMatrixProjectionStereo" &
        " already exists, not redeclaring")
when not declared(rlSetMatrixViewOffsetStereo):
  proc rlSetMatrixViewOffsetStereo*(right: Matrix_520094157; left: Matrix_520094157): void {.
      cdecl, importc: "rlSetMatrixViewOffsetStereo".}
else:
  static :
    hint("Declaration of " & "rlSetMatrixViewOffsetStereo" &
        " already exists, not redeclaring")
when not declared(rlLoadDrawCube):
  proc rlLoadDrawCube*(): void {.cdecl, importc: "rlLoadDrawCube".}
else:
  static :
    hint("Declaration of " & "rlLoadDrawCube" &
        " already exists, not redeclaring")
when not declared(rlLoadDrawQuad):
  proc rlLoadDrawQuad*(): void {.cdecl, importc: "rlLoadDrawQuad".}
else:
  static :
    hint("Declaration of " & "rlLoadDrawQuad" &
        " already exists, not redeclaring")
