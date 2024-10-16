
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from macros import hint, warning, newLit, getSize

from os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

type
  enum_rlGlVersion_520098331* {.size: sizeof(cuint).} = enum
    RL_OPENGL_11 = 1, RL_OPENGL_21 = 2, RL_OPENGL_33 = 3, RL_OPENGL_43 = 4,
    RL_OPENGL_ES_20 = 5, RL_OPENGL_ES_30 = 6
type
  enum_rlTraceLogLevel_520098335* {.size: sizeof(cuint).} = enum
    RL_LOG_ALL = 0, RL_LOG_TRACE = 1, RL_LOG_DEBUG = 2, RL_LOG_INFO = 3,
    RL_LOG_WARNING = 4, RL_LOG_ERROR = 5, RL_LOG_FATAL = 6, RL_LOG_NONE = 7
type
  enum_rlPixelFormat_520098339* {.size: sizeof(cuint).} = enum
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
  enum_rlTextureFilter_520098343* {.size: sizeof(cuint).} = enum
    RL_TEXTURE_FILTER_POINT = 0, RL_TEXTURE_FILTER_BILINEAR = 1,
    RL_TEXTURE_FILTER_TRILINEAR = 2, RL_TEXTURE_FILTER_ANISOTROPIC_4X = 3,
    RL_TEXTURE_FILTER_ANISOTROPIC_8X = 4, RL_TEXTURE_FILTER_ANISOTROPIC_16X = 5
type
  enum_rlBlendMode_520098347* {.size: sizeof(cuint).} = enum
    RL_BLEND_ALPHA = 0, RL_BLEND_ADDITIVE = 1, RL_BLEND_MULTIPLIED = 2,
    RL_BLEND_ADD_COLORS = 3, RL_BLEND_SUBTRACT_COLORS = 4,
    RL_BLEND_ALPHA_PREMULTIPLY = 5, RL_BLEND_CUSTOM = 6,
    RL_BLEND_CUSTOM_SEPARATE = 7
type
  enum_rlShaderLocationIndex_520098351* {.size: sizeof(cuint).} = enum
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
  enum_rlShaderUniformDataType_520098355* {.size: sizeof(cuint).} = enum
    RL_SHADER_UNIFORM_FLOAT = 0, RL_SHADER_UNIFORM_VEC2 = 1,
    RL_SHADER_UNIFORM_VEC3 = 2, RL_SHADER_UNIFORM_VEC4 = 3,
    RL_SHADER_UNIFORM_INT = 4, RL_SHADER_UNIFORM_IVEC2 = 5,
    RL_SHADER_UNIFORM_IVEC3 = 6, RL_SHADER_UNIFORM_IVEC4 = 7,
    RL_SHADER_UNIFORM_SAMPLER2D = 8
type
  enum_rlShaderAttributeDataType_520098359* {.size: sizeof(cuint).} = enum
    RL_SHADER_ATTRIB_FLOAT = 0, RL_SHADER_ATTRIB_VEC2 = 1,
    RL_SHADER_ATTRIB_VEC3 = 2, RL_SHADER_ATTRIB_VEC4 = 3
type
  enum_rlFramebufferAttachType_520098363* {.size: sizeof(cuint).} = enum
    RL_ATTACHMENT_COLOR_CHANNEL0 = 0, RL_ATTACHMENT_COLOR_CHANNEL1 = 1,
    RL_ATTACHMENT_COLOR_CHANNEL2 = 2, RL_ATTACHMENT_COLOR_CHANNEL3 = 3,
    RL_ATTACHMENT_COLOR_CHANNEL4 = 4, RL_ATTACHMENT_COLOR_CHANNEL5 = 5,
    RL_ATTACHMENT_COLOR_CHANNEL6 = 6, RL_ATTACHMENT_COLOR_CHANNEL7 = 7,
    RL_ATTACHMENT_DEPTH = 100, RL_ATTACHMENT_STENCIL = 200
type
  enum_rlFramebufferAttachTextureType_520098367* {.size: sizeof(cuint).} = enum
    RL_ATTACHMENT_CUBEMAP_POSITIVE_X = 0, RL_ATTACHMENT_CUBEMAP_NEGATIVE_X = 1,
    RL_ATTACHMENT_CUBEMAP_POSITIVE_Y = 2, RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y = 3,
    RL_ATTACHMENT_CUBEMAP_POSITIVE_Z = 4, RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z = 5,
    RL_ATTACHMENT_TEXTURE2D = 100, RL_ATTACHMENT_RENDERBUFFER = 200
type
  enum_rlCullMode_520098371* {.size: sizeof(cuint).} = enum
    RL_CULL_FACE_FRONT = 0, RL_CULL_FACE_BACK = 1
type
  struct_Matrix_520098315 {.pure, inheritable, bycopy.} = object
    m0*: cfloat              ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:338:16
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
  Matrix_520098317 = struct_Matrix_520098316 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:343:3
  struct_rlVertexBuffer_520098319 {.pure, inheritable, bycopy.} = object
    elementCount*: cint      ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:348:16
    vertices*: ptr cfloat
    texcoords*: ptr cfloat
    colors*: ptr uint8
    indices*: ptr cuint
    vaoId*: cuint
    vboId*: array[4'i64, cuint]
  rlVertexBuffer_520098321 = struct_rlVertexBuffer_520098320 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:362:3
  struct_rlDrawCall_520098323 {.pure, inheritable, bycopy.} = object
    mode*: cint              ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:368:16
    vertexCount*: cint
    vertexAlignment*: cint
    textureId*: cuint
  rlDrawCall_520098325 = struct_rlDrawCall_520098324 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:378:3
  struct_rlRenderBatch_520098327 {.pure, inheritable, bycopy.} = object
    bufferCount*: cint       ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:381:16
    currentBuffer*: cint
    vertexBuffer*: ptr rlVertexBuffer_520098322
    draws*: ptr rlDrawCall_520098326
    drawCounter*: cint
    currentDepth*: cfloat
  rlRenderBatch_520098329 = struct_rlRenderBatch_520098328 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:389:3
  rlGlVersion_520098333 = enum_rlGlVersion_520098332 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:399:3
  rlTraceLogLevel_520098337 = enum_rlTraceLogLevel_520098336 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:412:3
  rlPixelFormat_520098341 = enum_rlPixelFormat_520098340 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:441:3
  rlTextureFilter_520098345 = enum_rlTextureFilter_520098344 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:453:3
  rlBlendMode_520098349 = enum_rlBlendMode_520098348 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:465:3
  rlShaderLocationIndex_520098353 = enum_rlShaderLocationIndex_520098352 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:495:3
  rlShaderUniformDataType_520098357 = enum_rlShaderUniformDataType_520098356 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:511:3
  rlShaderAttributeDataType_520098361 = enum_rlShaderAttributeDataType_520098360 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:519:3
  rlFramebufferAttachType_520098365 = enum_rlFramebufferAttachType_520098364 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:534:3
  rlFramebufferAttachTextureType_520098369 = enum_rlFramebufferAttachTextureType_520098368 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:546:3
  rlCullMode_520098373 = enum_rlCullMode_520098372 ## Generated based on /opt/libdragon/mips64-elf/include/rlgl.h:552:3
  enum_rlShaderLocationIndex_520098352 = (when declared(
      enum_rlShaderLocationIndex):
    when ownSizeof(enum_rlShaderLocationIndex) !=
        ownSizeof(enum_rlShaderLocationIndex_520098351):
      static :
        warning("Declaration of " & "enum_rlShaderLocationIndex" &
            " exists but with different size")
    enum_rlShaderLocationIndex
   else:
    enum_rlShaderLocationIndex_520098351)
  rlShaderLocationIndex_520098354 = (when declared(rlShaderLocationIndex):
    when ownSizeof(rlShaderLocationIndex) != ownSizeof(rlShaderLocationIndex_520098353):
      static :
        warning("Declaration of " & "rlShaderLocationIndex" &
            " exists but with different size")
    rlShaderLocationIndex
   else:
    rlShaderLocationIndex_520098353)
  rlGlVersion_520098334 = (when declared(rlGlVersion):
    when ownSizeof(rlGlVersion) != ownSizeof(rlGlVersion_520098333):
      static :
        warning("Declaration of " & "rlGlVersion" &
            " exists but with different size")
    rlGlVersion
   else:
    rlGlVersion_520098333)
  enum_rlFramebufferAttachType_520098364 = (when declared(
      enum_rlFramebufferAttachType):
    when ownSizeof(enum_rlFramebufferAttachType) !=
        ownSizeof(enum_rlFramebufferAttachType_520098363):
      static :
        warning("Declaration of " & "enum_rlFramebufferAttachType" &
            " exists but with different size")
    enum_rlFramebufferAttachType
   else:
    enum_rlFramebufferAttachType_520098363)
  enum_rlPixelFormat_520098340 = (when declared(enum_rlPixelFormat):
    when ownSizeof(enum_rlPixelFormat) != ownSizeof(enum_rlPixelFormat_520098339):
      static :
        warning("Declaration of " & "enum_rlPixelFormat" &
            " exists but with different size")
    enum_rlPixelFormat
   else:
    enum_rlPixelFormat_520098339)
  rlBlendMode_520098350 = (when declared(rlBlendMode):
    when ownSizeof(rlBlendMode) != ownSizeof(rlBlendMode_520098349):
      static :
        warning("Declaration of " & "rlBlendMode" &
            " exists but with different size")
    rlBlendMode
   else:
    rlBlendMode_520098349)
  rlShaderUniformDataType_520098358 = (when declared(rlShaderUniformDataType):
    when ownSizeof(rlShaderUniformDataType) !=
        ownSizeof(rlShaderUniformDataType_520098357):
      static :
        warning("Declaration of " & "rlShaderUniformDataType" &
            " exists but with different size")
    rlShaderUniformDataType
   else:
    rlShaderUniformDataType_520098357)
  rlDrawCall_520098326 = (when declared(rlDrawCall):
    when ownSizeof(rlDrawCall) != ownSizeof(rlDrawCall_520098325):
      static :
        warning("Declaration of " & "rlDrawCall" &
            " exists but with different size")
    rlDrawCall
   else:
    rlDrawCall_520098325)
  struct_rlRenderBatch_520098328 = (when declared(struct_rlRenderBatch):
    when ownSizeof(struct_rlRenderBatch) != ownSizeof(struct_rlRenderBatch_520098327):
      static :
        warning("Declaration of " & "struct_rlRenderBatch" &
            " exists but with different size")
    struct_rlRenderBatch
   else:
    struct_rlRenderBatch_520098327)
  enum_rlTraceLogLevel_520098336 = (when declared(enum_rlTraceLogLevel):
    when ownSizeof(enum_rlTraceLogLevel) != ownSizeof(enum_rlTraceLogLevel_520098335):
      static :
        warning("Declaration of " & "enum_rlTraceLogLevel" &
            " exists but with different size")
    enum_rlTraceLogLevel
   else:
    enum_rlTraceLogLevel_520098335)
  rlPixelFormat_520098342 = (when declared(rlPixelFormat):
    when ownSizeof(rlPixelFormat) != ownSizeof(rlPixelFormat_520098341):
      static :
        warning("Declaration of " & "rlPixelFormat" &
            " exists but with different size")
    rlPixelFormat
   else:
    rlPixelFormat_520098341)
  enum_rlShaderAttributeDataType_520098360 = (when declared(
      enum_rlShaderAttributeDataType):
    when ownSizeof(enum_rlShaderAttributeDataType) !=
        ownSizeof(enum_rlShaderAttributeDataType_520098359):
      static :
        warning("Declaration of " & "enum_rlShaderAttributeDataType" &
            " exists but with different size")
    enum_rlShaderAttributeDataType
   else:
    enum_rlShaderAttributeDataType_520098359)
  rlFramebufferAttachTextureType_520098370 = (when declared(
      rlFramebufferAttachTextureType):
    when ownSizeof(rlFramebufferAttachTextureType) !=
        ownSizeof(rlFramebufferAttachTextureType_520098369):
      static :
        warning("Declaration of " & "rlFramebufferAttachTextureType" &
            " exists but with different size")
    rlFramebufferAttachTextureType
   else:
    rlFramebufferAttachTextureType_520098369)
  enum_rlCullMode_520098372 = (when declared(enum_rlCullMode):
    when ownSizeof(enum_rlCullMode) != ownSizeof(enum_rlCullMode_520098371):
      static :
        warning("Declaration of " & "enum_rlCullMode" &
            " exists but with different size")
    enum_rlCullMode
   else:
    enum_rlCullMode_520098371)
  struct_rlVertexBuffer_520098320 = (when declared(struct_rlVertexBuffer):
    when ownSizeof(struct_rlVertexBuffer) != ownSizeof(struct_rlVertexBuffer_520098319):
      static :
        warning("Declaration of " & "struct_rlVertexBuffer" &
            " exists but with different size")
    struct_rlVertexBuffer
   else:
    struct_rlVertexBuffer_520098319)
  rlTraceLogLevel_520098338 = (when declared(rlTraceLogLevel):
    when ownSizeof(rlTraceLogLevel) != ownSizeof(rlTraceLogLevel_520098337):
      static :
        warning("Declaration of " & "rlTraceLogLevel" &
            " exists but with different size")
    rlTraceLogLevel
   else:
    rlTraceLogLevel_520098337)
  enum_rlTextureFilter_520098344 = (when declared(enum_rlTextureFilter):
    when ownSizeof(enum_rlTextureFilter) != ownSizeof(enum_rlTextureFilter_520098343):
      static :
        warning("Declaration of " & "enum_rlTextureFilter" &
            " exists but with different size")
    enum_rlTextureFilter
   else:
    enum_rlTextureFilter_520098343)
  rlRenderBatch_520098330 = (when declared(rlRenderBatch):
    when ownSizeof(rlRenderBatch) != ownSizeof(rlRenderBatch_520098329):
      static :
        warning("Declaration of " & "rlRenderBatch" &
            " exists but with different size")
    rlRenderBatch
   else:
    rlRenderBatch_520098329)
  rlTextureFilter_520098346 = (when declared(rlTextureFilter):
    when ownSizeof(rlTextureFilter) != ownSizeof(rlTextureFilter_520098345):
      static :
        warning("Declaration of " & "rlTextureFilter" &
            " exists but with different size")
    rlTextureFilter
   else:
    rlTextureFilter_520098345)
  enum_rlBlendMode_520098348 = (when declared(enum_rlBlendMode):
    when ownSizeof(enum_rlBlendMode) != ownSizeof(enum_rlBlendMode_520098347):
      static :
        warning("Declaration of " & "enum_rlBlendMode" &
            " exists but with different size")
    enum_rlBlendMode
   else:
    enum_rlBlendMode_520098347)
  enum_rlGlVersion_520098332 = (when declared(enum_rlGlVersion):
    when ownSizeof(enum_rlGlVersion) != ownSizeof(enum_rlGlVersion_520098331):
      static :
        warning("Declaration of " & "enum_rlGlVersion" &
            " exists but with different size")
    enum_rlGlVersion
   else:
    enum_rlGlVersion_520098331)
  enum_rlShaderUniformDataType_520098356 = (when declared(
      enum_rlShaderUniformDataType):
    when ownSizeof(enum_rlShaderUniformDataType) !=
        ownSizeof(enum_rlShaderUniformDataType_520098355):
      static :
        warning("Declaration of " & "enum_rlShaderUniformDataType" &
            " exists but with different size")
    enum_rlShaderUniformDataType
   else:
    enum_rlShaderUniformDataType_520098355)
  rlCullMode_520098374 = (when declared(rlCullMode):
    when ownSizeof(rlCullMode) != ownSizeof(rlCullMode_520098373):
      static :
        warning("Declaration of " & "rlCullMode" &
            " exists but with different size")
    rlCullMode
   else:
    rlCullMode_520098373)
  struct_rlDrawCall_520098324 = (when declared(struct_rlDrawCall):
    when ownSizeof(struct_rlDrawCall) != ownSizeof(struct_rlDrawCall_520098323):
      static :
        warning("Declaration of " & "struct_rlDrawCall" &
            " exists but with different size")
    struct_rlDrawCall
   else:
    struct_rlDrawCall_520098323)
  Matrix_520098318 = (when declared(Matrix):
    when ownSizeof(Matrix) != ownSizeof(Matrix_520098317):
      static :
        warning("Declaration of " & "Matrix" & " exists but with different size")
    Matrix
   else:
    Matrix_520098317)
  rlFramebufferAttachType_520098366 = (when declared(rlFramebufferAttachType):
    when ownSizeof(rlFramebufferAttachType) !=
        ownSizeof(rlFramebufferAttachType_520098365):
      static :
        warning("Declaration of " & "rlFramebufferAttachType" &
            " exists but with different size")
    rlFramebufferAttachType
   else:
    rlFramebufferAttachType_520098365)
  enum_rlFramebufferAttachTextureType_520098368 = (when declared(
      enum_rlFramebufferAttachTextureType):
    when ownSizeof(enum_rlFramebufferAttachTextureType) !=
        ownSizeof(enum_rlFramebufferAttachTextureType_520098367):
      static :
        warning("Declaration of " & "enum_rlFramebufferAttachTextureType" &
            " exists but with different size")
    enum_rlFramebufferAttachTextureType
   else:
    enum_rlFramebufferAttachTextureType_520098367)
  rlShaderAttributeDataType_520098362 = (when declared(rlShaderAttributeDataType):
    when ownSizeof(rlShaderAttributeDataType) !=
        ownSizeof(rlShaderAttributeDataType_520098361):
      static :
        warning("Declaration of " & "rlShaderAttributeDataType" &
            " exists but with different size")
    rlShaderAttributeDataType
   else:
    rlShaderAttributeDataType_520098361)
  rlVertexBuffer_520098322 = (when declared(rlVertexBuffer):
    when ownSizeof(rlVertexBuffer) != ownSizeof(rlVertexBuffer_520098321):
      static :
        warning("Declaration of " & "rlVertexBuffer" &
            " exists but with different size")
    rlVertexBuffer
   else:
    rlVertexBuffer_520098321)
  struct_Matrix_520098316 = (when declared(struct_Matrix):
    when ownSizeof(struct_Matrix) != ownSizeof(struct_Matrix_520098315):
      static :
        warning("Declaration of " & "struct_Matrix" &
            " exists but with different size")
    struct_Matrix
   else:
    struct_Matrix_520098315)
when not declared(enum_rlShaderLocationIndex):
  type
    enum_rlShaderLocationIndex* = enum_rlShaderLocationIndex_520098351
else:
  static :
    hint("Declaration of " & "enum_rlShaderLocationIndex" &
        " already exists, not redeclaring")
when not declared(rlShaderLocationIndex):
  type
    rlShaderLocationIndex* = rlShaderLocationIndex_520098353
else:
  static :
    hint("Declaration of " & "rlShaderLocationIndex" &
        " already exists, not redeclaring")
when not declared(rlGlVersion):
  type
    rlGlVersion* = rlGlVersion_520098333
else:
  static :
    hint("Declaration of " & "rlGlVersion" & " already exists, not redeclaring")
when not declared(enum_rlFramebufferAttachType):
  type
    enum_rlFramebufferAttachType* = enum_rlFramebufferAttachType_520098363
else:
  static :
    hint("Declaration of " & "enum_rlFramebufferAttachType" &
        " already exists, not redeclaring")
when not declared(enum_rlPixelFormat):
  type
    enum_rlPixelFormat* = enum_rlPixelFormat_520098339
else:
  static :
    hint("Declaration of " & "enum_rlPixelFormat" &
        " already exists, not redeclaring")
when not declared(rlBlendMode):
  type
    rlBlendMode* = rlBlendMode_520098349
else:
  static :
    hint("Declaration of " & "rlBlendMode" & " already exists, not redeclaring")
when not declared(rlShaderUniformDataType):
  type
    rlShaderUniformDataType* = rlShaderUniformDataType_520098357
else:
  static :
    hint("Declaration of " & "rlShaderUniformDataType" &
        " already exists, not redeclaring")
when not declared(rlDrawCall):
  type
    rlDrawCall* = rlDrawCall_520098325
else:
  static :
    hint("Declaration of " & "rlDrawCall" & " already exists, not redeclaring")
when not declared(struct_rlRenderBatch):
  type
    struct_rlRenderBatch* = struct_rlRenderBatch_520098327
else:
  static :
    hint("Declaration of " & "struct_rlRenderBatch" &
        " already exists, not redeclaring")
when not declared(enum_rlTraceLogLevel):
  type
    enum_rlTraceLogLevel* = enum_rlTraceLogLevel_520098335
else:
  static :
    hint("Declaration of " & "enum_rlTraceLogLevel" &
        " already exists, not redeclaring")
when not declared(rlPixelFormat):
  type
    rlPixelFormat* = rlPixelFormat_520098341
else:
  static :
    hint("Declaration of " & "rlPixelFormat" &
        " already exists, not redeclaring")
when not declared(enum_rlShaderAttributeDataType):
  type
    enum_rlShaderAttributeDataType* = enum_rlShaderAttributeDataType_520098359
else:
  static :
    hint("Declaration of " & "enum_rlShaderAttributeDataType" &
        " already exists, not redeclaring")
when not declared(rlFramebufferAttachTextureType):
  type
    rlFramebufferAttachTextureType* = rlFramebufferAttachTextureType_520098369
else:
  static :
    hint("Declaration of " & "rlFramebufferAttachTextureType" &
        " already exists, not redeclaring")
when not declared(enum_rlCullMode):
  type
    enum_rlCullMode* = enum_rlCullMode_520098371
else:
  static :
    hint("Declaration of " & "enum_rlCullMode" &
        " already exists, not redeclaring")
when not declared(struct_rlVertexBuffer):
  type
    struct_rlVertexBuffer* = struct_rlVertexBuffer_520098319
else:
  static :
    hint("Declaration of " & "struct_rlVertexBuffer" &
        " already exists, not redeclaring")
when not declared(rlTraceLogLevel):
  type
    rlTraceLogLevel* = rlTraceLogLevel_520098337
else:
  static :
    hint("Declaration of " & "rlTraceLogLevel" &
        " already exists, not redeclaring")
when not declared(enum_rlTextureFilter):
  type
    enum_rlTextureFilter* = enum_rlTextureFilter_520098343
else:
  static :
    hint("Declaration of " & "enum_rlTextureFilter" &
        " already exists, not redeclaring")
when not declared(rlRenderBatch):
  type
    rlRenderBatch* = rlRenderBatch_520098329
else:
  static :
    hint("Declaration of " & "rlRenderBatch" &
        " already exists, not redeclaring")
when not declared(rlTextureFilter):
  type
    rlTextureFilter* = rlTextureFilter_520098345
else:
  static :
    hint("Declaration of " & "rlTextureFilter" &
        " already exists, not redeclaring")
when not declared(enum_rlBlendMode):
  type
    enum_rlBlendMode* = enum_rlBlendMode_520098347
else:
  static :
    hint("Declaration of " & "enum_rlBlendMode" &
        " already exists, not redeclaring")
when not declared(enum_rlGlVersion):
  type
    enum_rlGlVersion* = enum_rlGlVersion_520098331
else:
  static :
    hint("Declaration of " & "enum_rlGlVersion" &
        " already exists, not redeclaring")
when not declared(enum_rlShaderUniformDataType):
  type
    enum_rlShaderUniformDataType* = enum_rlShaderUniformDataType_520098355
else:
  static :
    hint("Declaration of " & "enum_rlShaderUniformDataType" &
        " already exists, not redeclaring")
when not declared(rlCullMode):
  type
    rlCullMode* = rlCullMode_520098373
else:
  static :
    hint("Declaration of " & "rlCullMode" & " already exists, not redeclaring")
when not declared(struct_rlDrawCall):
  type
    struct_rlDrawCall* = struct_rlDrawCall_520098323
else:
  static :
    hint("Declaration of " & "struct_rlDrawCall" &
        " already exists, not redeclaring")
when not declared(Matrix):
  type
    Matrix* = Matrix_520098317
else:
  static :
    hint("Declaration of " & "Matrix" & " already exists, not redeclaring")
when not declared(rlFramebufferAttachType):
  type
    rlFramebufferAttachType* = rlFramebufferAttachType_520098365
else:
  static :
    hint("Declaration of " & "rlFramebufferAttachType" &
        " already exists, not redeclaring")
when not declared(enum_rlFramebufferAttachTextureType):
  type
    enum_rlFramebufferAttachTextureType* = enum_rlFramebufferAttachTextureType_520098367
else:
  static :
    hint("Declaration of " & "enum_rlFramebufferAttachTextureType" &
        " already exists, not redeclaring")
when not declared(rlShaderAttributeDataType):
  type
    rlShaderAttributeDataType* = rlShaderAttributeDataType_520098361
else:
  static :
    hint("Declaration of " & "rlShaderAttributeDataType" &
        " already exists, not redeclaring")
when not declared(rlVertexBuffer):
  type
    rlVertexBuffer* = rlVertexBuffer_520098321
else:
  static :
    hint("Declaration of " & "rlVertexBuffer" &
        " already exists, not redeclaring")
when not declared(struct_Matrix):
  type
    struct_Matrix* = struct_Matrix_520098315
else:
  static :
    hint("Declaration of " & "struct_Matrix" &
        " already exists, not redeclaring")
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
  proc rlLoadRenderBatch*(numBuffers: cint; bufferElements: cint): rlRenderBatch_520098330 {.
      cdecl, importc: "rlLoadRenderBatch".}
else:
  static :
    hint("Declaration of " & "rlLoadRenderBatch" &
        " already exists, not redeclaring")
when not declared(rlUnloadRenderBatch):
  proc rlUnloadRenderBatch*(batch: rlRenderBatch_520098330): void {.cdecl,
      importc: "rlUnloadRenderBatch".}
else:
  static :
    hint("Declaration of " & "rlUnloadRenderBatch" &
        " already exists, not redeclaring")
when not declared(rlDrawRenderBatch):
  proc rlDrawRenderBatch*(batch: ptr rlRenderBatch_520098330): void {.cdecl,
      importc: "rlDrawRenderBatch".}
else:
  static :
    hint("Declaration of " & "rlDrawRenderBatch" &
        " already exists, not redeclaring")
when not declared(rlSetRenderBatchActive):
  proc rlSetRenderBatchActive*(batch: ptr rlRenderBatch_520098330): void {.
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
  proc rlSetUniformMatrix*(locIndex: cint; mat: Matrix_520098318): void {.cdecl,
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
  proc rlGetMatrixModelview*(): Matrix_520098318 {.cdecl,
      importc: "rlGetMatrixModelview".}
else:
  static :
    hint("Declaration of " & "rlGetMatrixModelview" &
        " already exists, not redeclaring")
when not declared(rlGetMatrixProjection):
  proc rlGetMatrixProjection*(): Matrix_520098318 {.cdecl,
      importc: "rlGetMatrixProjection".}
else:
  static :
    hint("Declaration of " & "rlGetMatrixProjection" &
        " already exists, not redeclaring")
when not declared(rlGetMatrixTransform):
  proc rlGetMatrixTransform*(): Matrix_520098318 {.cdecl,
      importc: "rlGetMatrixTransform".}
else:
  static :
    hint("Declaration of " & "rlGetMatrixTransform" &
        " already exists, not redeclaring")
when not declared(rlGetMatrixProjectionStereo):
  proc rlGetMatrixProjectionStereo*(eye: cint): Matrix_520098318 {.cdecl,
      importc: "rlGetMatrixProjectionStereo".}
else:
  static :
    hint("Declaration of " & "rlGetMatrixProjectionStereo" &
        " already exists, not redeclaring")
when not declared(rlGetMatrixViewOffsetStereo):
  proc rlGetMatrixViewOffsetStereo*(eye: cint): Matrix_520098318 {.cdecl,
      importc: "rlGetMatrixViewOffsetStereo".}
else:
  static :
    hint("Declaration of " & "rlGetMatrixViewOffsetStereo" &
        " already exists, not redeclaring")
when not declared(rlSetMatrixProjection):
  proc rlSetMatrixProjection*(proj: Matrix_520098318): void {.cdecl,
      importc: "rlSetMatrixProjection".}
else:
  static :
    hint("Declaration of " & "rlSetMatrixProjection" &
        " already exists, not redeclaring")
when not declared(rlSetMatrixModelview):
  proc rlSetMatrixModelview*(view: Matrix_520098318): void {.cdecl,
      importc: "rlSetMatrixModelview".}
else:
  static :
    hint("Declaration of " & "rlSetMatrixModelview" &
        " already exists, not redeclaring")
when not declared(rlSetMatrixProjectionStereo):
  proc rlSetMatrixProjectionStereo*(right: Matrix_520098318; left: Matrix_520098318): void {.
      cdecl, importc: "rlSetMatrixProjectionStereo".}
else:
  static :
    hint("Declaration of " & "rlSetMatrixProjectionStereo" &
        " already exists, not redeclaring")
when not declared(rlSetMatrixViewOffsetStereo):
  proc rlSetMatrixViewOffsetStereo*(right: Matrix_520098318; left: Matrix_520098318): void {.
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