
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from macros import hint, warning, newLit, getSize

from os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

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
  struct_Vector2_520097022 {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:114:16
    y*: cfloat
  Vector2_520097024 = struct_Vector2_520097023 ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:117:3
  struct_Vector3_520097026 {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:123:16
    y*: cfloat
    z*: cfloat
  Vector3_520097028 = struct_Vector3_520097027 ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:127:3
  struct_Vector4_520097030 {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:133:16
    y*: cfloat
    z*: cfloat
    w*: cfloat
  Vector4_520097032 = struct_Vector4_520097031 ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:138:3
  Quaternion_520097034 = Vector4_520097033 ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:144:17
  struct_Matrix_520097036 {.pure, inheritable, bycopy.} = object
    m0*: cfloat              ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:150:16
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
  Matrix_520097038 = struct_Matrix_520097037 ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:155:3
  struct_float3_520097040 {.pure, inheritable, bycopy.} = object
    v*: array[3'i64, cfloat] ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:160:16
  float3_520097042 = struct_float3_520097041 ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:162:3
  struct_float16_520097044 {.pure, inheritable, bycopy.} = object
    v*: array[16'i64, cfloat] ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:164:16
  float16_520097046 = struct_float16_520097045 ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:166:3
  compiler_int8_t_520097048 = cschar ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:41:23
  compiler_uint8_t_520097050 = uint8 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:43:24
  compiler_int16_t_520097052 = cshort ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:55:24
  compiler_uint16_t_520097054 = cushort ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:57:25
  compiler_int32_t_520097056 = cint ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:77:24
  compiler_uint32_t_520097058 = cuint ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:79:25
  compiler_int64_t_520097060 = clong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:103:24
  compiler_uint64_t_520097062 = culong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:105:25
  compiler_int_least8_t_520097064 = cschar ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:134:29
  compiler_uint_least8_t_520097066 = uint8 ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:136:30
  compiler_int_least16_t_520097068 = cshort ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:160:30
  compiler_uint_least16_t_520097070 = cushort ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:162:31
  compiler_int_least32_t_520097072 = cint ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:182:30
  compiler_uint_least32_t_520097074 = cuint ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:184:31
  compiler_int_least64_t_520097076 = clong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:200:30
  compiler_uint_least64_t_520097078 = culong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:202:31
  compiler_intmax_t_520097080 = clong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:214:25
  compiler_uintmax_t_520097082 = culong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:222:26
  compiler_intptr_t_520097084 = clong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:230:25
  compiler_uintptr_t_520097086 = culong ## Generated based on /opt/libdragon/mips64-elf/include/machine/_default_types.h:232:26
  compiler_blkcnt_t_520097088 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:30:14
  compiler_blksize_t_520097090 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:34:14
  compiler_fsblkcnt_t_520097092 = compiler_uint64_t_520097063 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:38:20
  compiler_fsfilcnt_t_520097094 = compiler_uint32_t_520097059 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:42:20
  internal_off_t_520097096 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:46:14
  compiler_pid_t_520097098 = cint ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:52:13
  compiler_dev_t_520097100 = cshort ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:56:15
  compiler_uid_t_520097102 = cushort ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:60:24
  compiler_gid_t_520097104 = cushort ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:63:24
  compiler_id_t_520097106 = compiler_uint32_t_520097059 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:67:20
  compiler_ino_t_520097108 = cushort ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:75:24
  compiler_mode_t_520097110 = compiler_uint32_t_520097059 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:90:20
  internal_off64_t_520097112 = clonglong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:96:33
  compiler_off_t_520097114 = internal_off_t_520097097 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:102:16
  compiler_loff_t_520097116 = internal_off64_t_520097113 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:105:18
  compiler_key_t_520097118 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:108:14
  internal_fpos_t_520097120 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:116:14
  compiler_size_t_520097122 = culong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:131:23
  internal_ssize_t_520097124 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:147:23
  compiler_ssize_t_520097126 = internal_ssize_t_520097125 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:158:18
  struct_mbstate_t_compiler_value_t {.union, bycopy.} = object
    compiler_wch*: wint_t_520097131
    compiler_wchb*: array[4'i64, uint8]
  struct_mbstate_t_520097128 {.pure, inheritable, bycopy.} = object
    compiler_count*: cint    ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:162:9
    compiler_value*: struct_mbstate_t_compiler_value_t
  wint_t_520097130 = cuint   ## Generated based on /usr/include/clang/18.1.3/include/__stddef_wint_t.h:13:23
  internal_mbstate_t_520097132 = struct_mbstate_t_520097129 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:170:3
  internal_iconv_t_520097134 = pointer ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:175:15
  compiler_clock_t_520097136 = culong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:182:19
  compiler_time_t_520097138 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:189:18
  compiler_clockid_t_520097140 = culong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:195:21
  compiler_daddr_t_520097142 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:198:15
  compiler_timer_t_520097144 = culong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:202:19
  compiler_sa_family_t_520097146 = compiler_uint8_t_520097051 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:205:19
  compiler_socklen_t_520097148 = compiler_uint32_t_520097059 ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:209:20
  compiler_nl_item_520097150 = cint ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:212:14
  compiler_nlink_t_520097152 = cushort ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:213:24
  compiler_suseconds_t_520097154 = clong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:214:15
  compiler_useconds_t_520097156 = culong ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:215:23
  compiler_va_list_520097158 = compiler_builtin_va_list ## Generated based on /opt/libdragon/mips64-elf/include/sys/_types.h:223:27
  compiler_ULong_520097160 = cuint ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:26:25
  internal_LOCK_T_520097162 = cint ## Generated based on /opt/libdragon/mips64-elf/include/sys/lock.h:11:13
  internal_LOCK_RECURSIVE_T_520097164 = cint ## Generated based on /opt/libdragon/mips64-elf/include/sys/lock.h:12:13
  internal_flock_t_520097166 = internal_LOCK_RECURSIVE_T_520097165 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:36:27
  struct_Bigint_520097168 {.pure, inheritable, bycopy.} = object
    internal_next*: ptr struct_Bigint_520097169 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:53:8
    internal_k*: cint
    internal_maxwds*: cint
    internal_sign*: cint
    internal_wds*: cint
    internal_x*: array[1'i64, compiler_ULong_520097161]
  struct_tm_520097170 {.pure, inheritable, bycopy.} = object
    compiler_tm_sec*: cint   ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:61:8
    compiler_tm_min*: cint
    compiler_tm_hour*: cint
    compiler_tm_mday*: cint
    compiler_tm_mon*: cint
    compiler_tm_year*: cint
    compiler_tm_wday*: cint
    compiler_tm_yday*: cint
    compiler_tm_isdst*: cint
  struct_on_exit_args_520097172 {.pure, inheritable, bycopy.} = object
    internal_fnargs*: array[32'i64, pointer] ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:80:8
    internal_dso_handle*: array[32'i64, pointer]
    internal_fntypes*: compiler_ULong_520097161
    internal_is_cxa*: compiler_ULong_520097161
  struct_atexit_520097174 {.pure, inheritable, bycopy.} = object
    internal_next*: ptr struct_atexit_520097175 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:99:8
    internal_ind*: cint
    internal_fns*: array[32'i64, proc (): void {.cdecl.}]
    internal_on_exit_args*: struct_on_exit_args_520097173
  struct_sbuf_520097176 {.pure, inheritable, bycopy.} = object
    internal_base*: ptr uint8 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:116:8
    internal_size*: cint
  struct_sFILE_520097178 {.pure, inheritable, bycopy.} = object
    internal_p*: ptr uint8   ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:153:8
    internal_r*: cint
    internal_w*: cint
    internal_flags*: cshort
    internal_file*: cshort
    internal_bf*: struct_sbuf_520097177
    internal_lbfsize*: cint
    internal_cookie*: pointer
    internal_read*: proc (a0: ptr struct_reent_520097181; a1: pointer;
                          a2: cstring; a3: cint): cint {.cdecl.}
    internal_write*: proc (a0: ptr struct_reent_520097181; a1: pointer;
                           a2: cstring; a3: cint): cint {.cdecl.}
    internal_seek*: proc (a0: ptr struct_reent_520097181; a1: pointer;
                          a2: internal_fpos_t_520097121; a3: cint): internal_fpos_t_520097121 {.
        cdecl.}
    internal_close*: proc (a0: ptr struct_reent_520097181; a1: pointer): cint {.
        cdecl.}
    internal_ub*: struct_sbuf_520097177
    internal_up*: ptr uint8
    internal_ur*: cint
    internal_ubuf*: array[3'i64, uint8]
    internal_nbuf*: array[1'i64, uint8]
    internal_lb*: struct_sbuf_520097177
    internal_blksize*: cint
    internal_offset*: internal_off_t_520097097
    internal_data*: ptr struct_reent_520097181
    internal_lock*: internal_flock_t_520097167
    internal_mbstate*: internal_mbstate_t_520097133
    internal_flags2*: cint
  struct_reent_internal_new_t_internal_reent_t {.pure, inheritable, bycopy.} = object
    internal_strtok_last*: cstring
    internal_asctime_buf*: array[26'i64, cschar]
    internal_localtime_buf*: struct_tm_520097171
    internal_gamma_signgam*: cint
    internal_rand_next*: culonglong
    internal_r48*: struct_rand48_520097187
    internal_mblen_state*: internal_mbstate_t_520097133
    internal_mbtowc_state*: internal_mbstate_t_520097133
    internal_wctomb_state*: internal_mbstate_t_520097133
    internal_l64a_buf*: array[8'i64, cschar]
    internal_signal_buf*: array[24'i64, cschar]
    internal_getdate_err*: cint
    internal_mbrlen_state*: internal_mbstate_t_520097133
    internal_mbrtowc_state*: internal_mbstate_t_520097133
    internal_mbsrtowcs_state*: internal_mbstate_t_520097133
    internal_wcrtomb_state*: internal_mbstate_t_520097133
    internal_wcsrtombs_state*: internal_mbstate_t_520097133
    internal_h_errno*: cint
  struct_reent_internal_new_t {.union, bycopy.} = object
    internal_reent*: struct_reent_internal_new_t_internal_reent_t
  struct_reent_520097180 {.pure, inheritable, bycopy.} = object
    internal_errno*: cint    ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:568:8
    internal_stdin*: ptr compiler_FILE_520097183
    internal_stdout*: ptr compiler_FILE_520097183
    internal_stderr*: ptr compiler_FILE_520097183
    internal_inc*: cint
    internal_emergency*: array[25'i64, cschar]
    internal_locale*: ptr struct_locale_t
    compiler_cleanup*: proc (a0: ptr struct_reent_520097181): void {.cdecl.}
    internal_result*: ptr struct_Bigint_520097169
    internal_result_k*: cint
    internal_p5s*: ptr struct_Bigint_520097169
    internal_freelist*: ptr ptr struct_Bigint_520097169
    internal_cvtlen*: cint
    internal_cvtbuf*: cstring
    internal_new*: struct_reent_internal_new_t
    internal_sig_func*: proc (a0: cint): void {.cdecl.}
  compiler_FILE_520097182 = struct_sFILE_520097179 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:270:26
  struct_glue_520097184 {.pure, inheritable, bycopy.} = object
    internal_next*: ptr struct_glue_520097185 ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:276:8
    internal_niobs*: cint
    internal_iobs*: ptr compiler_FILE_520097183
  struct_rand48_520097186 {.pure, inheritable, bycopy.} = object
    internal_seed*: array[3'i64, cushort] ## Generated based on /opt/libdragon/mips64-elf/include/sys/reent.h:306:8
    internal_mult*: array[3'i64, cushort]
    internal_add*: cushort
  float_t_520097188 = cfloat ## Generated based on /opt/libdragon/mips64-elf/include/math.h:160:20
  double_t_520097190 = cdouble ## Generated based on /opt/libdragon/mips64-elf/include/math.h:161:20
  compiler_blksize_t_520097091 = (when declared(compiler_blksize_t):
    when ownSizeof(compiler_blksize_t) != ownSizeof(compiler_blksize_t_520097090):
      static :
        warning("Declaration of " & "compiler_blksize_t" &
            " exists but with different size")
    compiler_blksize_t
   else:
    compiler_blksize_t_520097090)
  internal_ssize_t_520097125 = (when declared(internal_ssize_t):
    when ownSizeof(internal_ssize_t) != ownSizeof(internal_ssize_t_520097124):
      static :
        warning("Declaration of " & "internal_ssize_t" &
            " exists but with different size")
    internal_ssize_t
   else:
    internal_ssize_t_520097124)
  compiler_intptr_t_520097085 = (when declared(compiler_intptr_t):
    when ownSizeof(compiler_intptr_t) != ownSizeof(compiler_intptr_t_520097084):
      static :
        warning("Declaration of " & "compiler_intptr_t" &
            " exists but with different size")
    compiler_intptr_t
   else:
    compiler_intptr_t_520097084)
  float16_520097047 = (when declared(float16):
    when ownSizeof(float16) != ownSizeof(float16_520097046):
      static :
        warning("Declaration of " & "float16" &
            " exists but with different size")
    float16
   else:
    float16_520097046)
  compiler_uint16_t_520097055 = (when declared(compiler_uint16_t):
    when ownSizeof(compiler_uint16_t) != ownSizeof(compiler_uint16_t_520097054):
      static :
        warning("Declaration of " & "compiler_uint16_t" &
            " exists but with different size")
    compiler_uint16_t
   else:
    compiler_uint16_t_520097054)
  compiler_id_t_520097107 = (when declared(compiler_id_t):
    when ownSizeof(compiler_id_t) != ownSizeof(compiler_id_t_520097106):
      static :
        warning("Declaration of " & "compiler_id_t" &
            " exists but with different size")
    compiler_id_t
   else:
    compiler_id_t_520097106)
  struct_mbstate_t_520097129 = (when declared(struct_mbstate_t):
    when ownSizeof(struct_mbstate_t) != ownSizeof(struct_mbstate_t_520097128):
      static :
        warning("Declaration of " & "struct_mbstate_t" &
            " exists but with different size")
    struct_mbstate_t
   else:
    struct_mbstate_t_520097128)
  Vector2_520097025 = (when declared(Vector2):
    when ownSizeof(Vector2) != ownSizeof(Vector2_520097024):
      static :
        warning("Declaration of " & "Vector2" &
            " exists but with different size")
    Vector2
   else:
    Vector2_520097024)
  compiler_off_t_520097115 = (when declared(compiler_off_t):
    when ownSizeof(compiler_off_t) != ownSizeof(compiler_off_t_520097114):
      static :
        warning("Declaration of " & "compiler_off_t" &
            " exists but with different size")
    compiler_off_t
   else:
    compiler_off_t_520097114)
  internal_iconv_t_520097135 = (when declared(internal_iconv_t):
    when ownSizeof(internal_iconv_t) != ownSizeof(internal_iconv_t_520097134):
      static :
        warning("Declaration of " & "internal_iconv_t" &
            " exists but with different size")
    internal_iconv_t
   else:
    internal_iconv_t_520097134)
  wint_t_520097131 = (when declared(wint_t):
    when ownSizeof(wint_t) != ownSizeof(wint_t_520097130):
      static :
        warning("Declaration of " & "wint_t" & " exists but with different size")
    wint_t
   else:
    wint_t_520097130)
  compiler_int_least32_t_520097073 = (when declared(compiler_int_least32_t):
    when ownSizeof(compiler_int_least32_t) != ownSizeof(compiler_int_least32_t_520097072):
      static :
        warning("Declaration of " & "compiler_int_least32_t" &
            " exists but with different size")
    compiler_int_least32_t
   else:
    compiler_int_least32_t_520097072)
  internal_fpos_t_520097121 = (when declared(internal_fpos_t):
    when ownSizeof(internal_fpos_t) != ownSizeof(internal_fpos_t_520097120):
      static :
        warning("Declaration of " & "internal_fpos_t" &
            " exists but with different size")
    internal_fpos_t
   else:
    internal_fpos_t_520097120)
  compiler_daddr_t_520097143 = (when declared(compiler_daddr_t):
    when ownSizeof(compiler_daddr_t) != ownSizeof(compiler_daddr_t_520097142):
      static :
        warning("Declaration of " & "compiler_daddr_t" &
            " exists but with different size")
    compiler_daddr_t
   else:
    compiler_daddr_t_520097142)
  compiler_int32_t_520097057 = (when declared(compiler_int32_t):
    when ownSizeof(compiler_int32_t) != ownSizeof(compiler_int32_t_520097056):
      static :
        warning("Declaration of " & "compiler_int32_t" &
            " exists but with different size")
    compiler_int32_t
   else:
    compiler_int32_t_520097056)
  compiler_uint64_t_520097063 = (when declared(compiler_uint64_t):
    when ownSizeof(compiler_uint64_t) != ownSizeof(compiler_uint64_t_520097062):
      static :
        warning("Declaration of " & "compiler_uint64_t" &
            " exists but with different size")
    compiler_uint64_t
   else:
    compiler_uint64_t_520097062)
  compiler_timer_t_520097145 = (when declared(compiler_timer_t):
    when ownSizeof(compiler_timer_t) != ownSizeof(compiler_timer_t_520097144):
      static :
        warning("Declaration of " & "compiler_timer_t" &
            " exists but with different size")
    compiler_timer_t
   else:
    compiler_timer_t_520097144)
  internal_LOCK_T_520097163 = (when declared(internal_LOCK_T):
    when ownSizeof(internal_LOCK_T) != ownSizeof(internal_LOCK_T_520097162):
      static :
        warning("Declaration of " & "internal_LOCK_T" &
            " exists but with different size")
    internal_LOCK_T
   else:
    internal_LOCK_T_520097162)
  struct_reent_520097181 = (when declared(struct_reent):
    when ownSizeof(struct_reent) != ownSizeof(struct_reent_520097180):
      static :
        warning("Declaration of " & "struct_reent" &
            " exists but with different size")
    struct_reent
   else:
    struct_reent_520097180)
  struct_float3_520097041 = (when declared(struct_float3):
    when ownSizeof(struct_float3) != ownSizeof(struct_float3_520097040):
      static :
        warning("Declaration of " & "struct_float3" &
            " exists but with different size")
    struct_float3
   else:
    struct_float3_520097040)
  compiler_sa_family_t_520097147 = (when declared(compiler_sa_family_t):
    when ownSizeof(compiler_sa_family_t) != ownSizeof(compiler_sa_family_t_520097146):
      static :
        warning("Declaration of " & "compiler_sa_family_t" &
            " exists but with different size")
    compiler_sa_family_t
   else:
    compiler_sa_family_t_520097146)
  struct_tm_520097171 = (when declared(struct_tm):
    when ownSizeof(struct_tm) != ownSizeof(struct_tm_520097170):
      static :
        warning("Declaration of " & "struct_tm" &
            " exists but with different size")
    struct_tm
   else:
    struct_tm_520097170)
  struct_atexit_520097175 = (when declared(struct_atexit):
    when ownSizeof(struct_atexit) != ownSizeof(struct_atexit_520097174):
      static :
        warning("Declaration of " & "struct_atexit" &
            " exists but with different size")
    struct_atexit
   else:
    struct_atexit_520097174)
  compiler_uint_least16_t_520097071 = (when declared(compiler_uint_least16_t):
    when ownSizeof(compiler_uint_least16_t) !=
        ownSizeof(compiler_uint_least16_t_520097070):
      static :
        warning("Declaration of " & "compiler_uint_least16_t" &
            " exists but with different size")
    compiler_uint_least16_t
   else:
    compiler_uint_least16_t_520097070)
  compiler_fsfilcnt_t_520097095 = (when declared(compiler_fsfilcnt_t):
    when ownSizeof(compiler_fsfilcnt_t) != ownSizeof(compiler_fsfilcnt_t_520097094):
      static :
        warning("Declaration of " & "compiler_fsfilcnt_t" &
            " exists but with different size")
    compiler_fsfilcnt_t
   else:
    compiler_fsfilcnt_t_520097094)
  compiler_useconds_t_520097157 = (when declared(compiler_useconds_t):
    when ownSizeof(compiler_useconds_t) != ownSizeof(compiler_useconds_t_520097156):
      static :
        warning("Declaration of " & "compiler_useconds_t" &
            " exists but with different size")
    compiler_useconds_t
   else:
    compiler_useconds_t_520097156)
  struct_glue_520097185 = (when declared(struct_glue):
    when ownSizeof(struct_glue) != ownSizeof(struct_glue_520097184):
      static :
        warning("Declaration of " & "struct_glue" &
            " exists but with different size")
    struct_glue
   else:
    struct_glue_520097184)
  compiler_uint8_t_520097051 = (when declared(compiler_uint8_t):
    when ownSizeof(compiler_uint8_t) != ownSizeof(compiler_uint8_t_520097050):
      static :
        warning("Declaration of " & "compiler_uint8_t" &
            " exists but with different size")
    compiler_uint8_t
   else:
    compiler_uint8_t_520097050)
  compiler_ULong_520097161 = (when declared(compiler_ULong):
    when ownSizeof(compiler_ULong) != ownSizeof(compiler_ULong_520097160):
      static :
        warning("Declaration of " & "compiler_ULong" &
            " exists but with different size")
    compiler_ULong
   else:
    compiler_ULong_520097160)
  compiler_int_least16_t_520097069 = (when declared(compiler_int_least16_t):
    when ownSizeof(compiler_int_least16_t) != ownSizeof(compiler_int_least16_t_520097068):
      static :
        warning("Declaration of " & "compiler_int_least16_t" &
            " exists but with different size")
    compiler_int_least16_t
   else:
    compiler_int_least16_t_520097068)
  compiler_uint_least64_t_520097079 = (when declared(compiler_uint_least64_t):
    when ownSizeof(compiler_uint_least64_t) !=
        ownSizeof(compiler_uint_least64_t_520097078):
      static :
        warning("Declaration of " & "compiler_uint_least64_t" &
            " exists but with different size")
    compiler_uint_least64_t
   else:
    compiler_uint_least64_t_520097078)
  compiler_suseconds_t_520097155 = (when declared(compiler_suseconds_t):
    when ownSizeof(compiler_suseconds_t) != ownSizeof(compiler_suseconds_t_520097154):
      static :
        warning("Declaration of " & "compiler_suseconds_t" &
            " exists but with different size")
    compiler_suseconds_t
   else:
    compiler_suseconds_t_520097154)
  compiler_mode_t_520097111 = (when declared(compiler_mode_t):
    when ownSizeof(compiler_mode_t) != ownSizeof(compiler_mode_t_520097110):
      static :
        warning("Declaration of " & "compiler_mode_t" &
            " exists but with different size")
    compiler_mode_t
   else:
    compiler_mode_t_520097110)
  struct_on_exit_args_520097173 = (when declared(struct_on_exit_args):
    when ownSizeof(struct_on_exit_args) != ownSizeof(struct_on_exit_args_520097172):
      static :
        warning("Declaration of " & "struct_on_exit_args" &
            " exists but with different size")
    struct_on_exit_args
   else:
    struct_on_exit_args_520097172)
  struct_rand48_520097187 = (when declared(struct_rand48):
    when ownSizeof(struct_rand48) != ownSizeof(struct_rand48_520097186):
      static :
        warning("Declaration of " & "struct_rand48" &
            " exists but with different size")
    struct_rand48
   else:
    struct_rand48_520097186)
  compiler_uid_t_520097103 = (when declared(compiler_uid_t):
    when ownSizeof(compiler_uid_t) != ownSizeof(compiler_uid_t_520097102):
      static :
        warning("Declaration of " & "compiler_uid_t" &
            " exists but with different size")
    compiler_uid_t
   else:
    compiler_uid_t_520097102)
  compiler_uint_least32_t_520097075 = (when declared(compiler_uint_least32_t):
    when ownSizeof(compiler_uint_least32_t) !=
        ownSizeof(compiler_uint_least32_t_520097074):
      static :
        warning("Declaration of " & "compiler_uint_least32_t" &
            " exists but with different size")
    compiler_uint_least32_t
   else:
    compiler_uint_least32_t_520097074)
  struct_Matrix_520097037 = (when declared(struct_Matrix):
    when ownSizeof(struct_Matrix) != ownSizeof(struct_Matrix_520097036):
      static :
        warning("Declaration of " & "struct_Matrix" &
            " exists but with different size")
    struct_Matrix
   else:
    struct_Matrix_520097036)
  internal_off_t_520097097 = (when declared(internal_off_t):
    when ownSizeof(internal_off_t) != ownSizeof(internal_off_t_520097096):
      static :
        warning("Declaration of " & "internal_off_t" &
            " exists but with different size")
    internal_off_t
   else:
    internal_off_t_520097096)
  internal_off64_t_520097113 = (when declared(internal_off64_t):
    when ownSizeof(internal_off64_t) != ownSizeof(internal_off64_t_520097112):
      static :
        warning("Declaration of " & "internal_off64_t" &
            " exists but with different size")
    internal_off64_t
   else:
    internal_off64_t_520097112)
  compiler_clock_t_520097137 = (when declared(compiler_clock_t):
    when ownSizeof(compiler_clock_t) != ownSizeof(compiler_clock_t_520097136):
      static :
        warning("Declaration of " & "compiler_clock_t" &
            " exists but with different size")
    compiler_clock_t
   else:
    compiler_clock_t_520097136)
  struct_float16_520097045 = (when declared(struct_float16):
    when ownSizeof(struct_float16) != ownSizeof(struct_float16_520097044):
      static :
        warning("Declaration of " & "struct_float16" &
            " exists but with different size")
    struct_float16
   else:
    struct_float16_520097044)
  compiler_dev_t_520097101 = (when declared(compiler_dev_t):
    when ownSizeof(compiler_dev_t) != ownSizeof(compiler_dev_t_520097100):
      static :
        warning("Declaration of " & "compiler_dev_t" &
            " exists but with different size")
    compiler_dev_t
   else:
    compiler_dev_t_520097100)
  internal_mbstate_t_520097133 = (when declared(internal_mbstate_t):
    when ownSizeof(internal_mbstate_t) != ownSizeof(internal_mbstate_t_520097132):
      static :
        warning("Declaration of " & "internal_mbstate_t" &
            " exists but with different size")
    internal_mbstate_t
   else:
    internal_mbstate_t_520097132)
  compiler_ssize_t_520097127 = (when declared(compiler_ssize_t):
    when ownSizeof(compiler_ssize_t) != ownSizeof(compiler_ssize_t_520097126):
      static :
        warning("Declaration of " & "compiler_ssize_t" &
            " exists but with different size")
    compiler_ssize_t
   else:
    compiler_ssize_t_520097126)
  compiler_ino_t_520097109 = (when declared(compiler_ino_t):
    when ownSizeof(compiler_ino_t) != ownSizeof(compiler_ino_t_520097108):
      static :
        warning("Declaration of " & "compiler_ino_t" &
            " exists but with different size")
    compiler_ino_t
   else:
    compiler_ino_t_520097108)
  float3_520097043 = (when declared(float3):
    when ownSizeof(float3) != ownSizeof(float3_520097042):
      static :
        warning("Declaration of " & "float3" & " exists but with different size")
    float3
   else:
    float3_520097042)
  struct_sFILE_520097179 = (when declared(struct_sFILE):
    when ownSizeof(struct_sFILE) != ownSizeof(struct_sFILE_520097178):
      static :
        warning("Declaration of " & "struct_sFILE" &
            " exists but with different size")
    struct_sFILE
   else:
    struct_sFILE_520097178)
  Vector3_520097029 = (when declared(Vector3):
    when ownSizeof(Vector3) != ownSizeof(Vector3_520097028):
      static :
        warning("Declaration of " & "Vector3" &
            " exists but with different size")
    Vector3
   else:
    Vector3_520097028)
  Vector4_520097033 = (when declared(Vector4):
    when ownSizeof(Vector4) != ownSizeof(Vector4_520097032):
      static :
        warning("Declaration of " & "Vector4" &
            " exists but with different size")
    Vector4
   else:
    Vector4_520097032)
  compiler_int_least8_t_520097065 = (when declared(compiler_int_least8_t):
    when ownSizeof(compiler_int_least8_t) != ownSizeof(compiler_int_least8_t_520097064):
      static :
        warning("Declaration of " & "compiler_int_least8_t" &
            " exists but with different size")
    compiler_int_least8_t
   else:
    compiler_int_least8_t_520097064)
  compiler_intmax_t_520097081 = (when declared(compiler_intmax_t):
    when ownSizeof(compiler_intmax_t) != ownSizeof(compiler_intmax_t_520097080):
      static :
        warning("Declaration of " & "compiler_intmax_t" &
            " exists but with different size")
    compiler_intmax_t
   else:
    compiler_intmax_t_520097080)
  struct_Vector2_520097023 = (when declared(struct_Vector2):
    when ownSizeof(struct_Vector2) != ownSizeof(struct_Vector2_520097022):
      static :
        warning("Declaration of " & "struct_Vector2" &
            " exists but with different size")
    struct_Vector2
   else:
    struct_Vector2_520097022)
  compiler_uintmax_t_520097083 = (when declared(compiler_uintmax_t):
    when ownSizeof(compiler_uintmax_t) != ownSizeof(compiler_uintmax_t_520097082):
      static :
        warning("Declaration of " & "compiler_uintmax_t" &
            " exists but with different size")
    compiler_uintmax_t
   else:
    compiler_uintmax_t_520097082)
  compiler_uintptr_t_520097087 = (when declared(compiler_uintptr_t):
    when ownSizeof(compiler_uintptr_t) != ownSizeof(compiler_uintptr_t_520097086):
      static :
        warning("Declaration of " & "compiler_uintptr_t" &
            " exists but with different size")
    compiler_uintptr_t
   else:
    compiler_uintptr_t_520097086)
  internal_LOCK_RECURSIVE_T_520097165 = (when declared(internal_LOCK_RECURSIVE_T):
    when ownSizeof(internal_LOCK_RECURSIVE_T) !=
        ownSizeof(internal_LOCK_RECURSIVE_T_520097164):
      static :
        warning("Declaration of " & "internal_LOCK_RECURSIVE_T" &
            " exists but with different size")
    internal_LOCK_RECURSIVE_T
   else:
    internal_LOCK_RECURSIVE_T_520097164)
  compiler_int64_t_520097061 = (when declared(compiler_int64_t):
    when ownSizeof(compiler_int64_t) != ownSizeof(compiler_int64_t_520097060):
      static :
        warning("Declaration of " & "compiler_int64_t" &
            " exists but with different size")
    compiler_int64_t
   else:
    compiler_int64_t_520097060)
  compiler_int_least64_t_520097077 = (when declared(compiler_int_least64_t):
    when ownSizeof(compiler_int_least64_t) != ownSizeof(compiler_int_least64_t_520097076):
      static :
        warning("Declaration of " & "compiler_int_least64_t" &
            " exists but with different size")
    compiler_int_least64_t
   else:
    compiler_int_least64_t_520097076)
  float_t_520097189 = (when declared(float_t):
    when ownSizeof(float_t) != ownSizeof(float_t_520097188):
      static :
        warning("Declaration of " & "float_t" &
            " exists but with different size")
    float_t
   else:
    float_t_520097188)
  double_t_520097191 = (when declared(double_t):
    when ownSizeof(double_t) != ownSizeof(double_t_520097190):
      static :
        warning("Declaration of " & "double_t" &
            " exists but with different size")
    double_t
   else:
    double_t_520097190)
  internal_flock_t_520097167 = (when declared(internal_flock_t):
    when ownSizeof(internal_flock_t) != ownSizeof(internal_flock_t_520097166):
      static :
        warning("Declaration of " & "internal_flock_t" &
            " exists but with different size")
    internal_flock_t
   else:
    internal_flock_t_520097166)
  compiler_int8_t_520097049 = (when declared(compiler_int8_t):
    when ownSizeof(compiler_int8_t) != ownSizeof(compiler_int8_t_520097048):
      static :
        warning("Declaration of " & "compiler_int8_t" &
            " exists but with different size")
    compiler_int8_t
   else:
    compiler_int8_t_520097048)
  compiler_gid_t_520097105 = (when declared(compiler_gid_t):
    when ownSizeof(compiler_gid_t) != ownSizeof(compiler_gid_t_520097104):
      static :
        warning("Declaration of " & "compiler_gid_t" &
            " exists but with different size")
    compiler_gid_t
   else:
    compiler_gid_t_520097104)
  compiler_int16_t_520097053 = (when declared(compiler_int16_t):
    when ownSizeof(compiler_int16_t) != ownSizeof(compiler_int16_t_520097052):
      static :
        warning("Declaration of " & "compiler_int16_t" &
            " exists but with different size")
    compiler_int16_t
   else:
    compiler_int16_t_520097052)
  compiler_socklen_t_520097149 = (when declared(compiler_socklen_t):
    when ownSizeof(compiler_socklen_t) != ownSizeof(compiler_socklen_t_520097148):
      static :
        warning("Declaration of " & "compiler_socklen_t" &
            " exists but with different size")
    compiler_socklen_t
   else:
    compiler_socklen_t_520097148)
  struct_Bigint_520097169 = (when declared(struct_Bigint):
    when ownSizeof(struct_Bigint) != ownSizeof(struct_Bigint_520097168):
      static :
        warning("Declaration of " & "struct_Bigint" &
            " exists but with different size")
    struct_Bigint
   else:
    struct_Bigint_520097168)
  compiler_uint32_t_520097059 = (when declared(compiler_uint32_t):
    when ownSizeof(compiler_uint32_t) != ownSizeof(compiler_uint32_t_520097058):
      static :
        warning("Declaration of " & "compiler_uint32_t" &
            " exists but with different size")
    compiler_uint32_t
   else:
    compiler_uint32_t_520097058)
  compiler_nl_item_520097151 = (when declared(compiler_nl_item):
    when ownSizeof(compiler_nl_item) != ownSizeof(compiler_nl_item_520097150):
      static :
        warning("Declaration of " & "compiler_nl_item" &
            " exists but with different size")
    compiler_nl_item
   else:
    compiler_nl_item_520097150)
  struct_Vector3_520097027 = (when declared(struct_Vector3):
    when ownSizeof(struct_Vector3) != ownSizeof(struct_Vector3_520097026):
      static :
        warning("Declaration of " & "struct_Vector3" &
            " exists but with different size")
    struct_Vector3
   else:
    struct_Vector3_520097026)
  compiler_va_list_520097159 = (when declared(compiler_va_list):
    when ownSizeof(compiler_va_list) != ownSizeof(compiler_va_list_520097158):
      static :
        warning("Declaration of " & "compiler_va_list" &
            " exists but with different size")
    compiler_va_list
   else:
    compiler_va_list_520097158)
  compiler_nlink_t_520097153 = (when declared(compiler_nlink_t):
    when ownSizeof(compiler_nlink_t) != ownSizeof(compiler_nlink_t_520097152):
      static :
        warning("Declaration of " & "compiler_nlink_t" &
            " exists but with different size")
    compiler_nlink_t
   else:
    compiler_nlink_t_520097152)
  compiler_key_t_520097119 = (when declared(compiler_key_t):
    when ownSizeof(compiler_key_t) != ownSizeof(compiler_key_t_520097118):
      static :
        warning("Declaration of " & "compiler_key_t" &
            " exists but with different size")
    compiler_key_t
   else:
    compiler_key_t_520097118)
  compiler_FILE_520097183 = (when declared(compiler_FILE):
    when ownSizeof(compiler_FILE) != ownSizeof(compiler_FILE_520097182):
      static :
        warning("Declaration of " & "compiler_FILE" &
            " exists but with different size")
    compiler_FILE
   else:
    compiler_FILE_520097182)
  compiler_size_t_520097123 = (when declared(compiler_size_t):
    when ownSizeof(compiler_size_t) != ownSizeof(compiler_size_t_520097122):
      static :
        warning("Declaration of " & "compiler_size_t" &
            " exists but with different size")
    compiler_size_t
   else:
    compiler_size_t_520097122)
  compiler_pid_t_520097099 = (when declared(compiler_pid_t):
    when ownSizeof(compiler_pid_t) != ownSizeof(compiler_pid_t_520097098):
      static :
        warning("Declaration of " & "compiler_pid_t" &
            " exists but with different size")
    compiler_pid_t
   else:
    compiler_pid_t_520097098)
  compiler_time_t_520097139 = (when declared(compiler_time_t):
    when ownSizeof(compiler_time_t) != ownSizeof(compiler_time_t_520097138):
      static :
        warning("Declaration of " & "compiler_time_t" &
            " exists but with different size")
    compiler_time_t
   else:
    compiler_time_t_520097138)
  compiler_clockid_t_520097141 = (when declared(compiler_clockid_t):
    when ownSizeof(compiler_clockid_t) != ownSizeof(compiler_clockid_t_520097140):
      static :
        warning("Declaration of " & "compiler_clockid_t" &
            " exists but with different size")
    compiler_clockid_t
   else:
    compiler_clockid_t_520097140)
  Matrix_520097039 = (when declared(Matrix):
    when ownSizeof(Matrix) != ownSizeof(Matrix_520097038):
      static :
        warning("Declaration of " & "Matrix" & " exists but with different size")
    Matrix
   else:
    Matrix_520097038)
  struct_sbuf_520097177 = (when declared(struct_sbuf):
    when ownSizeof(struct_sbuf) != ownSizeof(struct_sbuf_520097176):
      static :
        warning("Declaration of " & "struct_sbuf" &
            " exists but with different size")
    struct_sbuf
   else:
    struct_sbuf_520097176)
  compiler_blkcnt_t_520097089 = (when declared(compiler_blkcnt_t):
    when ownSizeof(compiler_blkcnt_t) != ownSizeof(compiler_blkcnt_t_520097088):
      static :
        warning("Declaration of " & "compiler_blkcnt_t" &
            " exists but with different size")
    compiler_blkcnt_t
   else:
    compiler_blkcnt_t_520097088)
  struct_Vector4_520097031 = (when declared(struct_Vector4):
    when ownSizeof(struct_Vector4) != ownSizeof(struct_Vector4_520097030):
      static :
        warning("Declaration of " & "struct_Vector4" &
            " exists but with different size")
    struct_Vector4
   else:
    struct_Vector4_520097030)
  compiler_loff_t_520097117 = (when declared(compiler_loff_t):
    when ownSizeof(compiler_loff_t) != ownSizeof(compiler_loff_t_520097116):
      static :
        warning("Declaration of " & "compiler_loff_t" &
            " exists but with different size")
    compiler_loff_t
   else:
    compiler_loff_t_520097116)
  compiler_uint_least8_t_520097067 = (when declared(compiler_uint_least8_t):
    when ownSizeof(compiler_uint_least8_t) != ownSizeof(compiler_uint_least8_t_520097066):
      static :
        warning("Declaration of " & "compiler_uint_least8_t" &
            " exists but with different size")
    compiler_uint_least8_t
   else:
    compiler_uint_least8_t_520097066)
  compiler_fsblkcnt_t_520097093 = (when declared(compiler_fsblkcnt_t):
    when ownSizeof(compiler_fsblkcnt_t) != ownSizeof(compiler_fsblkcnt_t_520097092):
      static :
        warning("Declaration of " & "compiler_fsblkcnt_t" &
            " exists but with different size")
    compiler_fsblkcnt_t
   else:
    compiler_fsblkcnt_t_520097092)
  Quaternion_520097035 = (when declared(Quaternion):
    when ownSizeof(Quaternion) != ownSizeof(Quaternion_520097034):
      static :
        warning("Declaration of " & "Quaternion" &
            " exists but with different size")
    Quaternion
   else:
    Quaternion_520097034)
when not declared(compiler_blksize_t):
  type
    compiler_blksize_t* = compiler_blksize_t_520097090
else:
  static :
    hint("Declaration of " & "compiler_blksize_t" &
        " already exists, not redeclaring")
when not declared(internal_ssize_t):
  type
    internal_ssize_t* = internal_ssize_t_520097124
else:
  static :
    hint("Declaration of " & "internal_ssize_t" &
        " already exists, not redeclaring")
when not declared(compiler_intptr_t):
  type
    compiler_intptr_t* = compiler_intptr_t_520097084
else:
  static :
    hint("Declaration of " & "compiler_intptr_t" &
        " already exists, not redeclaring")
when not declared(float16):
  type
    float16* = float16_520097046
else:
  static :
    hint("Declaration of " & "float16" & " already exists, not redeclaring")
when not declared(compiler_uint16_t):
  type
    compiler_uint16_t* = compiler_uint16_t_520097054
else:
  static :
    hint("Declaration of " & "compiler_uint16_t" &
        " already exists, not redeclaring")
when not declared(compiler_id_t):
  type
    compiler_id_t* = compiler_id_t_520097106
else:
  static :
    hint("Declaration of " & "compiler_id_t" &
        " already exists, not redeclaring")
when not declared(struct_mbstate_t):
  type
    struct_mbstate_t* = struct_mbstate_t_520097128
else:
  static :
    hint("Declaration of " & "struct_mbstate_t" &
        " already exists, not redeclaring")
when not declared(Vector2):
  type
    Vector2* = Vector2_520097024
else:
  static :
    hint("Declaration of " & "Vector2" & " already exists, not redeclaring")
when not declared(compiler_off_t):
  type
    compiler_off_t* = compiler_off_t_520097114
else:
  static :
    hint("Declaration of " & "compiler_off_t" &
        " already exists, not redeclaring")
when not declared(internal_iconv_t):
  type
    internal_iconv_t* = internal_iconv_t_520097134
else:
  static :
    hint("Declaration of " & "internal_iconv_t" &
        " already exists, not redeclaring")
when not declared(wint_t):
  type
    wint_t* = wint_t_520097130
else:
  static :
    hint("Declaration of " & "wint_t" & " already exists, not redeclaring")
when not declared(compiler_int_least32_t):
  type
    compiler_int_least32_t* = compiler_int_least32_t_520097072
else:
  static :
    hint("Declaration of " & "compiler_int_least32_t" &
        " already exists, not redeclaring")
when not declared(internal_fpos_t):
  type
    internal_fpos_t* = internal_fpos_t_520097120
else:
  static :
    hint("Declaration of " & "internal_fpos_t" &
        " already exists, not redeclaring")
when not declared(compiler_daddr_t):
  type
    compiler_daddr_t* = compiler_daddr_t_520097142
else:
  static :
    hint("Declaration of " & "compiler_daddr_t" &
        " already exists, not redeclaring")
when not declared(compiler_int32_t):
  type
    compiler_int32_t* = compiler_int32_t_520097056
else:
  static :
    hint("Declaration of " & "compiler_int32_t" &
        " already exists, not redeclaring")
when not declared(compiler_uint64_t):
  type
    compiler_uint64_t* = compiler_uint64_t_520097062
else:
  static :
    hint("Declaration of " & "compiler_uint64_t" &
        " already exists, not redeclaring")
when not declared(compiler_timer_t):
  type
    compiler_timer_t* = compiler_timer_t_520097144
else:
  static :
    hint("Declaration of " & "compiler_timer_t" &
        " already exists, not redeclaring")
when not declared(internal_LOCK_T):
  type
    internal_LOCK_T* = internal_LOCK_T_520097162
else:
  static :
    hint("Declaration of " & "internal_LOCK_T" &
        " already exists, not redeclaring")
when not declared(struct_reent):
  type
    struct_reent* = struct_reent_520097180
else:
  static :
    hint("Declaration of " & "struct_reent" & " already exists, not redeclaring")
when not declared(struct_float3):
  type
    struct_float3* = struct_float3_520097040
else:
  static :
    hint("Declaration of " & "struct_float3" &
        " already exists, not redeclaring")
when not declared(compiler_sa_family_t):
  type
    compiler_sa_family_t* = compiler_sa_family_t_520097146
else:
  static :
    hint("Declaration of " & "compiler_sa_family_t" &
        " already exists, not redeclaring")
when not declared(struct_tm):
  type
    struct_tm* = struct_tm_520097170
else:
  static :
    hint("Declaration of " & "struct_tm" & " already exists, not redeclaring")
when not declared(struct_atexit):
  type
    struct_atexit* = struct_atexit_520097174
else:
  static :
    hint("Declaration of " & "struct_atexit" &
        " already exists, not redeclaring")
when not declared(compiler_uint_least16_t):
  type
    compiler_uint_least16_t* = compiler_uint_least16_t_520097070
else:
  static :
    hint("Declaration of " & "compiler_uint_least16_t" &
        " already exists, not redeclaring")
when not declared(compiler_fsfilcnt_t):
  type
    compiler_fsfilcnt_t* = compiler_fsfilcnt_t_520097094
else:
  static :
    hint("Declaration of " & "compiler_fsfilcnt_t" &
        " already exists, not redeclaring")
when not declared(compiler_useconds_t):
  type
    compiler_useconds_t* = compiler_useconds_t_520097156
else:
  static :
    hint("Declaration of " & "compiler_useconds_t" &
        " already exists, not redeclaring")
when not declared(struct_glue):
  type
    struct_glue* = struct_glue_520097184
else:
  static :
    hint("Declaration of " & "struct_glue" & " already exists, not redeclaring")
when not declared(compiler_uint8_t):
  type
    compiler_uint8_t* = compiler_uint8_t_520097050
else:
  static :
    hint("Declaration of " & "compiler_uint8_t" &
        " already exists, not redeclaring")
when not declared(compiler_ULong):
  type
    compiler_ULong* = compiler_ULong_520097160
else:
  static :
    hint("Declaration of " & "compiler_ULong" &
        " already exists, not redeclaring")
when not declared(compiler_int_least16_t):
  type
    compiler_int_least16_t* = compiler_int_least16_t_520097068
else:
  static :
    hint("Declaration of " & "compiler_int_least16_t" &
        " already exists, not redeclaring")
when not declared(compiler_uint_least64_t):
  type
    compiler_uint_least64_t* = compiler_uint_least64_t_520097078
else:
  static :
    hint("Declaration of " & "compiler_uint_least64_t" &
        " already exists, not redeclaring")
when not declared(compiler_suseconds_t):
  type
    compiler_suseconds_t* = compiler_suseconds_t_520097154
else:
  static :
    hint("Declaration of " & "compiler_suseconds_t" &
        " already exists, not redeclaring")
when not declared(compiler_mode_t):
  type
    compiler_mode_t* = compiler_mode_t_520097110
else:
  static :
    hint("Declaration of " & "compiler_mode_t" &
        " already exists, not redeclaring")
when not declared(struct_on_exit_args):
  type
    struct_on_exit_args* = struct_on_exit_args_520097172
else:
  static :
    hint("Declaration of " & "struct_on_exit_args" &
        " already exists, not redeclaring")
when not declared(struct_rand48):
  type
    struct_rand48* = struct_rand48_520097186
else:
  static :
    hint("Declaration of " & "struct_rand48" &
        " already exists, not redeclaring")
when not declared(compiler_uid_t):
  type
    compiler_uid_t* = compiler_uid_t_520097102
else:
  static :
    hint("Declaration of " & "compiler_uid_t" &
        " already exists, not redeclaring")
when not declared(compiler_uint_least32_t):
  type
    compiler_uint_least32_t* = compiler_uint_least32_t_520097074
else:
  static :
    hint("Declaration of " & "compiler_uint_least32_t" &
        " already exists, not redeclaring")
when not declared(struct_Matrix):
  type
    struct_Matrix* = struct_Matrix_520097036
else:
  static :
    hint("Declaration of " & "struct_Matrix" &
        " already exists, not redeclaring")
when not declared(internal_off_t):
  type
    internal_off_t* = internal_off_t_520097096
else:
  static :
    hint("Declaration of " & "internal_off_t" &
        " already exists, not redeclaring")
when not declared(internal_off64_t):
  type
    internal_off64_t* = internal_off64_t_520097112
else:
  static :
    hint("Declaration of " & "internal_off64_t" &
        " already exists, not redeclaring")
when not declared(compiler_clock_t):
  type
    compiler_clock_t* = compiler_clock_t_520097136
else:
  static :
    hint("Declaration of " & "compiler_clock_t" &
        " already exists, not redeclaring")
when not declared(struct_float16):
  type
    struct_float16* = struct_float16_520097044
else:
  static :
    hint("Declaration of " & "struct_float16" &
        " already exists, not redeclaring")
when not declared(compiler_dev_t):
  type
    compiler_dev_t* = compiler_dev_t_520097100
else:
  static :
    hint("Declaration of " & "compiler_dev_t" &
        " already exists, not redeclaring")
when not declared(internal_mbstate_t):
  type
    internal_mbstate_t* = internal_mbstate_t_520097132
else:
  static :
    hint("Declaration of " & "internal_mbstate_t" &
        " already exists, not redeclaring")
when not declared(compiler_ssize_t):
  type
    compiler_ssize_t* = compiler_ssize_t_520097126
else:
  static :
    hint("Declaration of " & "compiler_ssize_t" &
        " already exists, not redeclaring")
when not declared(compiler_ino_t):
  type
    compiler_ino_t* = compiler_ino_t_520097108
else:
  static :
    hint("Declaration of " & "compiler_ino_t" &
        " already exists, not redeclaring")
when not declared(float3):
  type
    float3* = float3_520097042
else:
  static :
    hint("Declaration of " & "float3" & " already exists, not redeclaring")
when not declared(struct_sFILE):
  type
    struct_sFILE* = struct_sFILE_520097178
else:
  static :
    hint("Declaration of " & "struct_sFILE" & " already exists, not redeclaring")
when not declared(Vector3):
  type
    Vector3* = Vector3_520097028
else:
  static :
    hint("Declaration of " & "Vector3" & " already exists, not redeclaring")
when not declared(Vector4):
  type
    Vector4* = Vector4_520097032
else:
  static :
    hint("Declaration of " & "Vector4" & " already exists, not redeclaring")
when not declared(compiler_int_least8_t):
  type
    compiler_int_least8_t* = compiler_int_least8_t_520097064
else:
  static :
    hint("Declaration of " & "compiler_int_least8_t" &
        " already exists, not redeclaring")
when not declared(compiler_intmax_t):
  type
    compiler_intmax_t* = compiler_intmax_t_520097080
else:
  static :
    hint("Declaration of " & "compiler_intmax_t" &
        " already exists, not redeclaring")
when not declared(struct_Vector2):
  type
    struct_Vector2* = struct_Vector2_520097022
else:
  static :
    hint("Declaration of " & "struct_Vector2" &
        " already exists, not redeclaring")
when not declared(compiler_uintmax_t):
  type
    compiler_uintmax_t* = compiler_uintmax_t_520097082
else:
  static :
    hint("Declaration of " & "compiler_uintmax_t" &
        " already exists, not redeclaring")
when not declared(compiler_uintptr_t):
  type
    compiler_uintptr_t* = compiler_uintptr_t_520097086
else:
  static :
    hint("Declaration of " & "compiler_uintptr_t" &
        " already exists, not redeclaring")
when not declared(internal_LOCK_RECURSIVE_T):
  type
    internal_LOCK_RECURSIVE_T* = internal_LOCK_RECURSIVE_T_520097164
else:
  static :
    hint("Declaration of " & "internal_LOCK_RECURSIVE_T" &
        " already exists, not redeclaring")
when not declared(compiler_int64_t):
  type
    compiler_int64_t* = compiler_int64_t_520097060
else:
  static :
    hint("Declaration of " & "compiler_int64_t" &
        " already exists, not redeclaring")
when not declared(compiler_int_least64_t):
  type
    compiler_int_least64_t* = compiler_int_least64_t_520097076
else:
  static :
    hint("Declaration of " & "compiler_int_least64_t" &
        " already exists, not redeclaring")
when not declared(float_t):
  type
    float_t* = float_t_520097188
else:
  static :
    hint("Declaration of " & "float_t" & " already exists, not redeclaring")
when not declared(double_t):
  type
    double_t* = double_t_520097190
else:
  static :
    hint("Declaration of " & "double_t" & " already exists, not redeclaring")
when not declared(internal_flock_t):
  type
    internal_flock_t* = internal_flock_t_520097166
else:
  static :
    hint("Declaration of " & "internal_flock_t" &
        " already exists, not redeclaring")
when not declared(compiler_int8_t):
  type
    compiler_int8_t* = compiler_int8_t_520097048
else:
  static :
    hint("Declaration of " & "compiler_int8_t" &
        " already exists, not redeclaring")
when not declared(compiler_gid_t):
  type
    compiler_gid_t* = compiler_gid_t_520097104
else:
  static :
    hint("Declaration of " & "compiler_gid_t" &
        " already exists, not redeclaring")
when not declared(compiler_int16_t):
  type
    compiler_int16_t* = compiler_int16_t_520097052
else:
  static :
    hint("Declaration of " & "compiler_int16_t" &
        " already exists, not redeclaring")
when not declared(compiler_socklen_t):
  type
    compiler_socklen_t* = compiler_socklen_t_520097148
else:
  static :
    hint("Declaration of " & "compiler_socklen_t" &
        " already exists, not redeclaring")
when not declared(struct_Bigint):
  type
    struct_Bigint* = struct_Bigint_520097168
else:
  static :
    hint("Declaration of " & "struct_Bigint" &
        " already exists, not redeclaring")
when not declared(compiler_uint32_t):
  type
    compiler_uint32_t* = compiler_uint32_t_520097058
else:
  static :
    hint("Declaration of " & "compiler_uint32_t" &
        " already exists, not redeclaring")
when not declared(compiler_nl_item):
  type
    compiler_nl_item* = compiler_nl_item_520097150
else:
  static :
    hint("Declaration of " & "compiler_nl_item" &
        " already exists, not redeclaring")
when not declared(struct_Vector3):
  type
    struct_Vector3* = struct_Vector3_520097026
else:
  static :
    hint("Declaration of " & "struct_Vector3" &
        " already exists, not redeclaring")
when not declared(compiler_va_list):
  type
    compiler_va_list* = compiler_va_list_520097158
else:
  static :
    hint("Declaration of " & "compiler_va_list" &
        " already exists, not redeclaring")
when not declared(compiler_nlink_t):
  type
    compiler_nlink_t* = compiler_nlink_t_520097152
else:
  static :
    hint("Declaration of " & "compiler_nlink_t" &
        " already exists, not redeclaring")
when not declared(compiler_key_t):
  type
    compiler_key_t* = compiler_key_t_520097118
else:
  static :
    hint("Declaration of " & "compiler_key_t" &
        " already exists, not redeclaring")
when not declared(compiler_FILE):
  type
    compiler_FILE* = compiler_FILE_520097182
else:
  static :
    hint("Declaration of " & "compiler_FILE" &
        " already exists, not redeclaring")
when not declared(compiler_size_t):
  type
    compiler_size_t* = compiler_size_t_520097122
else:
  static :
    hint("Declaration of " & "compiler_size_t" &
        " already exists, not redeclaring")
when not declared(compiler_pid_t):
  type
    compiler_pid_t* = compiler_pid_t_520097098
else:
  static :
    hint("Declaration of " & "compiler_pid_t" &
        " already exists, not redeclaring")
when not declared(compiler_time_t):
  type
    compiler_time_t* = compiler_time_t_520097138
else:
  static :
    hint("Declaration of " & "compiler_time_t" &
        " already exists, not redeclaring")
when not declared(compiler_clockid_t):
  type
    compiler_clockid_t* = compiler_clockid_t_520097140
else:
  static :
    hint("Declaration of " & "compiler_clockid_t" &
        " already exists, not redeclaring")
when not declared(Matrix):
  type
    Matrix* = Matrix_520097038
else:
  static :
    hint("Declaration of " & "Matrix" & " already exists, not redeclaring")
when not declared(struct_sbuf):
  type
    struct_sbuf* = struct_sbuf_520097176
else:
  static :
    hint("Declaration of " & "struct_sbuf" & " already exists, not redeclaring")
when not declared(compiler_blkcnt_t):
  type
    compiler_blkcnt_t* = compiler_blkcnt_t_520097088
else:
  static :
    hint("Declaration of " & "compiler_blkcnt_t" &
        " already exists, not redeclaring")
when not declared(struct_Vector4):
  type
    struct_Vector4* = struct_Vector4_520097030
else:
  static :
    hint("Declaration of " & "struct_Vector4" &
        " already exists, not redeclaring")
when not declared(compiler_loff_t):
  type
    compiler_loff_t* = compiler_loff_t_520097116
else:
  static :
    hint("Declaration of " & "compiler_loff_t" &
        " already exists, not redeclaring")
when not declared(compiler_uint_least8_t):
  type
    compiler_uint_least8_t* = compiler_uint_least8_t_520097066
else:
  static :
    hint("Declaration of " & "compiler_uint_least8_t" &
        " already exists, not redeclaring")
when not declared(compiler_fsblkcnt_t):
  type
    compiler_fsblkcnt_t* = compiler_fsblkcnt_t_520097092
else:
  static :
    hint("Declaration of " & "compiler_fsblkcnt_t" &
        " already exists, not redeclaring")
when not declared(Quaternion):
  type
    Quaternion* = Quaternion_520097034
else:
  static :
    hint("Declaration of " & "Quaternion" & " already exists, not redeclaring")
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
when not declared(PI):
  when 3.141592653589793 is static:
    const
      PI* = 3.141592653589793 ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:84:13
  else:
    let PI* = 3.141592653589793 ## Generated based on /opt/libdragon/mips64-elf/include/raymath.h:84:13
else:
  static :
    hint("Declaration of " & "PI" & " already exists, not redeclaring")
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
  var internal_impure_ptr* {.importc: "_impure_ptr".}: ptr struct_reent_520097181
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
when not declared(compiler_sf):
  var compiler_sf* {.importc: "__sf".}: array[3'i64, compiler_FILE_520097183]
else:
  static :
    hint("Declaration of " & "compiler_sf" & " already exists, not redeclaring")
when not declared(compiler_sglue):
  var compiler_sglue* {.importc: "__sglue".}: struct_glue_520097185
else:
  static :
    hint("Declaration of " & "compiler_sglue" &
        " already exists, not redeclaring")
when not declared(internal_impure_data):
  var internal_impure_data* {.importc: "_impure_data".}: struct_reent_520097181
else:
  static :
    hint("Declaration of " & "internal_impure_data" &
        " already exists, not redeclaring")
when not declared(compiler_atexit):
  var compiler_atexit* {.importc: "__atexit".}: ptr struct_atexit_520097175
else:
  static :
    hint("Declaration of " & "compiler_atexit" &
        " already exists, not redeclaring")
when not declared(compiler_atexit0):
  var compiler_atexit0* {.importc: "__atexit0".}: struct_atexit_520097175
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
  proc internal_reclaim_reent*(a0: ptr struct_reent_520097181): void {.cdecl,
      importc: "_reclaim_reent".}
else:
  static :
    hint("Declaration of " & "internal_reclaim_reent" &
        " already exists, not redeclaring")
when not declared(internal_fwalk_sglue):
  proc internal_fwalk_sglue*(a0: ptr struct_reent_520097181; a1: proc (
      a0: ptr struct_reent_520097181; a1: ptr compiler_FILE_520097183): cint {.
      cdecl.}; a2: ptr struct_glue_520097185): cint {.cdecl,
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