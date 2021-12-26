import std/math

type
  Vector2* {.bycopy.} = object ## Vector2, 2 components
    x*: float32 ## Vector x component
    y*: float32 ## Vector y component

  Vector3* {.bycopy.} = object ## Vector3, 3 components
    x*: float32 ## Vector x component
    y*: float32 ## Vector y component
    z*: float32 ## Vector z component

  Vector4* {.bycopy.} = object ## Vector4, 4 components
    x*: float32 ## Vector x component
    y*: float32 ## Vector y component
    z*: float32 ## Vector z component
    w*: float32 ## Vector w component
  Quaternion* = Vector4 ## Quaternion, 4 components (Vector4 alias)

  Matrix* {.bycopy.} = object ## Matrix, 4x4 components, column major, OpenGL style, right handed
    m0*, m4*, m8*, m12*: float32 ## Matrix first row (4 components)
    m1*, m5*, m9*, m13*: float32 ## Matrix second row (4 components)
    m2*, m6*, m10*, m14*: float32 ## Matrix third row (4 components)
    m3*, m7*, m11*, m15*: float32 ## Matrix fourth row (4 components)

  Float3* {.bycopy.} = object ## NOTE: Helper types to be used instead of array return types for *ToFloat functions
    v*: array[3, float32]

  Float16* {.bycopy.} = object
    v*: array[16, float32]

## ----------------------------------------------------------------------------------
## Module Functions Definition - Utils math
## ----------------------------------------------------------------------------------

proc clamp*(value: float32, min: float32, max: float32): float32 =
  ## Clamp float value
  result = if value < min: min else: value
  if result > max:
    result = max

proc lerp*(start: float32, `end`: float32, amount: float32): float32 =
  ## Calculate linear interpolation between two floats
  result = start + amount * (`end` - start)

proc normalize*(value: float32, start: float32, `end`: float32): float32 =
  ## Normalize input value within input range
  result = (value - start) / (`end` - start)

proc remap*(value: float32, inputStart: float32, inputEnd: float32, outputStart: float32,
           outputEnd: float32): float32 =
  ## Remap input value within input range to output range
  result = (value - inputStart) / (inputEnd - inputStart) *
      (outputEnd - outputStart) + outputStart

## ----------------------------------------------------------------------------------
## Module Functions Definition - Vector2 math
## ----------------------------------------------------------------------------------

proc vector2Zero*(): Vector2 =
  ## Vector with components value 0'f32
  result = Vector2(x: 0, y: 0)

proc vector2One*(): Vector2 =
  ## Vector with components value 1'f32
  result = Vector2(x: 1, y: 1)

proc add*(v1: Vector2; v2: Vector2): Vector2 =
  ## Add two vectors (v1 + v2)
  result = Vector2(x: v1.x + v2.x, y: v1.y + v2.y)

proc addValue*(v: Vector2; add: float32): Vector2 =
  ## Add vector and float value
  result = Vector2(x: v.x + add, y: v.y + add)

proc subtract*(v1: Vector2; v2: Vector2): Vector2 =
  ## Subtract two vectors (v1 - v2)
  result = Vector2(x: v1.x - v2.x, y: v1.y - v2.y)

proc subtractValue*(v: Vector2; sub: float32): Vector2 =
  ## Subtract vector by float value
  result = Vector2(x: v.x - sub, y: v.y - sub)

proc length*(v: Vector2): float32 =
  ## Calculate vector length
  result = sqrt((v.x * v.x) + (v.y * v.y))

proc lengthSqr*(v: Vector2): float32 =
  ## Calculate vector square length
  result = (v.x * v.x) + (v.y * v.y)

proc dotProduct*(v1: Vector2; v2: Vector2): float32 =
  ## Calculate two vectors dot product
  result = (v1.x * v2.x + v1.y * v2.y)

proc distance*(v1: Vector2; v2: Vector2): float32 =
  ## Calculate distance between two vectors
  result = sqrt((v1.x - v2.x) * (v1.x - v2.x) + (v1.y - v2.y) * (v1.y - v2.y))

proc angle*(v1: Vector2; v2: Vector2): float32 =
  ## Calculate angle from two vectors
  result = arctan2(v2.y, v2.x) - arctan2(v1.y, v1.x)

proc scale*(v: Vector2; scale: float32): Vector2 =
  ## Scale vector (multiply by value)
  result = Vector2(x: v.x * scale, y: v.y * scale)

proc multiply*(v1: Vector2; v2: Vector2): Vector2 =
  ## Multiply vector by vector
  result = Vector2(x: v1.x * v2.x, y: v1.y * v2.y)

proc negate*(v: Vector2): Vector2 =
  ## Negate vector
  result = Vector2(x: -v.x, y: -v.y)

proc divide*(v1: Vector2; v2: Vector2): Vector2 =
  ## Divide vector by vector
  result = Vector2(x: v1.x / v2.x, y: v1.y / v2.y)

proc normalize*(v: Vector2): Vector2 =
  ## Normalize provided vector
  result = Vector2()
  let length = sqrt((v.x * v.x) + (v.y * v.y))
  if length > 0:
    let ilength = 1'f32 / length
    result.x = v.x * ilength
    result.y = v.y * ilength

proc lerp*(v1: Vector2; v2: Vector2; amount: float32): Vector2 =
  ## Calculate linear interpolation between two vectors
  result = Vector2()
  result.x = v1.x + amount * (v2.x - v1.x)
  result.y = v1.y + amount * (v2.y - v1.y)

proc reflect*(v: Vector2; normal: Vector2): Vector2 =
  ## Calculate reflected vector to normal
  result = Vector2()
  let dotProduct = (v.x * normal.x + v.y * normal.y)
  # Dot product
  result.x = v.x - (2'f32 * normal.x) * dotProduct
  result.y = v.y - (2'f32 * normal.y) * dotProduct

proc rotate*(v: Vector2; angle: float32): Vector2 =
  ## Rotate vector by angle
  result = Vector2()
  result.x = v.x * cos(angle) - v.y * sin(angle)
  result.y = v.x * sin(angle) + v.y * cos(angle)

proc moveTowards*(v: Vector2; target: Vector2; maxDistance: float32): Vector2 =
  ## Move Vector towards target
  result = Vector2()
  let dx = target.x - v.x
  let dy = target.y - v.y
  let value = (dx * dx) + (dy * dy)
  if (value == 0) or ((maxDistance >= 0) and (value <= maxDistance * maxDistance)):
    return target
  let dist = sqrt(value)
  result.x = v.x + dx / dist * maxDistance
  result.y = v.y + dy / dist * maxDistance

## ----------------------------------------------------------------------------------
## Module Functions Definition - Vector3 math
## ----------------------------------------------------------------------------------

proc vector3Zero*(): Vector3 =
  ## Vector with components value 0'f32
  result = Vector3(x: 0'f32, y: 0'f32, z: 0'f32)

proc vector3One*(): Vector3 =
  ## Vector with components value 1'f32
  result = Vector3(x: 1'f32, y: 1'f32, z: 1'f32)

proc add*(v1: Vector3; v2: Vector3): Vector3 =
  ## Add two vectors
  result = Vector3(x: v1.x + v2.x, y: v1.y + v2.y, z: v1.z + v2.z)

proc addValue*(v: Vector3; add: float32): Vector3 =
  ## Add vector and float value
  result = Vector3(x: v.x + add, y: v.y + add, z: v.z + add)

proc subtract*(v1: Vector3; v2: Vector3): Vector3 =
  ## Subtract two vectors
  result = Vector3(x: v1.x - v2.x, y: v1.y - v2.y, z: v1.z - v2.z)

proc subtractValue*(v: Vector3; sub: float32): Vector3 =
  ## Subtract vector by float value
  result = Vector3(x: v.x - sub, y: v.y - sub, z: v.z - sub)

proc scale*(v: Vector3; scalar: float32): Vector3 =
  ## Multiply vector by scalar
  result = Vector3(x: v.x * scalar, y: v.y * scalar, z: v.z * scalar)

proc multiply*(v1: Vector3; v2: Vector3): Vector3 =
  ## Multiply vector by vector
  result = Vector3(x: v1.x * v2.x, y: v1.y * v2.y, z: v1.z * v2.z)

proc crossProduct*(v1: Vector3; v2: Vector3): Vector3 =
  ## Calculate two vectors cross product
  result = Vector3(x: v1.y * v2.z - v1.z * v2.y, y: v1.z * v2.x - v1.x * v2.z,
                            z: v1.x * v2.y - v1.y * v2.x)

proc perpendicular*(v: Vector3): Vector3 =
  ## Calculate one vector perpendicular vector
  result = Vector3()
  var min = float32(abs(v.x))
  var cardinalAxis = Vector3(x: 1'f32, y: 0'f32, z: 0'f32)
  if abs(v.y) < min:
    min = float32(abs(v.y))
    var tmp = Vector3(x: 0'f32, y: 1'f32, z: 0'f32)
    cardinalAxis = tmp
  if abs(v.z) < min:
    var tmp = Vector3(x: 0'f32, y: 0'f32, z: 1'f32)
    cardinalAxis = tmp
  result.x = v.y * cardinalAxis.z - v.z * cardinalAxis.y
  result.y = v.z * cardinalAxis.x - v.x * cardinalAxis.z
  result.z = v.x * cardinalAxis.y - v.y * cardinalAxis.x

proc length*(v: Vector3): float32 =
  ## Calculate vector length
  result = sqrt(v.x * v.x + v.y * v.y + v.z * v.z)

proc lengthSqr*(v: Vector3): float32 =
  ## Calculate vector square length
  result = v.x * v.x + v.y * v.y + v.z * v.z

proc dotProduct*(v1: Vector3; v2: Vector3): float32 =
  ## Calculate two vectors dot product
  result = (v1.x * v2.x + v1.y * v2.y + v1.z * v2.z)

proc distance*(v1: Vector3; v2: Vector3): float32 =
  ## Calculate distance between two vectors
  result = 0'f32
  let dx = v2.x - v1.x
  let dy = v2.y - v1.y
  let dz = v2.z - v1.z
  result = sqrt(dx * dx + dy * dy + dz * dz)

proc angle*(v1: Vector3; v2: Vector3): float32 =
  ## Calculate angle between two vectors
  result = 0'f32
  var cross = Vector3(x: v1.y * v2.z - v1.z * v2.y, y: v1.z * v2.x - v1.x * v2.z,
                           z: v1.x * v2.y - v1.y * v2.x)
  let len = sqrt(cross.x * cross.x + cross.y * cross.y + cross.z * cross.z)
  let dot = (v1.x * v2.x + v1.y * v2.y + v1.z * v2.z)
  result = arctan2(len, dot)

proc negate*(v: Vector3): Vector3 =
  ## Negate provided vector (invert direction)
  result = Vector3(x: -v.x, y: -v.y, z: -v.z)

proc divide*(v1: Vector3; v2: Vector3): Vector3 =
  ## Divide vector by vector
  result = Vector3(x: v1.x / v2.x, y: v1.y / v2.y, z: v1.z / v2.z)

proc normalize*(v: Vector3): Vector3 =
  ## Normalize provided vector
  result = v
  var length = sqrt(v.x * v.x + v.y * v.y + v.z * v.z)
  if length == 0'f32:
    length = 1'f32
  let ilength = 1'f32 / length
  result.x = result.x * ilength
  result.y = result.y * ilength
  result.z = result.z * ilength

## Orthonormalize provided vectors
proc orthoNormalize*(v1: ptr Vector3; v2: ptr Vector3) =
  ## Makes vectors normalized and orthogonal to each other
  ## Gram-Schmidt function implementation
  var length = 0'f32
  var ilength = 0'f32
  # Vector3Normalize(*v1);
  var v: Vector3 = v1[]
  length = sqrt(v.x * v.x + v.y * v.y + v.z * v.z)
  if length == 0'f32:
    length = 1'f32
  ilength = 1'f32 / length
  v1.x = v1.x * ilength
  v1.y = v1.y * ilength
  v1.z = v1.z * ilength
  # Vector3CrossProduct(*v1, *v2)
  var vn1 = Vector3(x: v1.y * v2.z - v1.z * v2.y, y: v1.z * v2.x - v1.x * v2.z,
                         z: v1.x * v2.y - v1.y * v2.x)
  # Vector3Normalize(vn1);
  v = vn1
  length = sqrt(v.x * v.x + v.y * v.y + v.z * v.z)
  if length == 0'f32:
    length = 1'f32
  ilength = 1'f32 / length
  vn1.x = vn1.x * ilength
  vn1.y = vn1.y * ilength
  vn1.z = vn1.z * ilength
  # Vector3CrossProduct(vn1, *v1)
  var vn2 = Vector3(x: vn1.y * v1.z - vn1.z * v1.y, y: vn1.z * v1.x - vn1.x * v1.z,
                         z: vn1.x * v1.y - vn1.y * v1.x)
  v2[] = vn2

proc transform*(v: Vector3; mat: Matrix): Vector3 =
  ## Transforms a Vector3 by a given Matrix
  result = Vector3()
  let x = v.x
  let y = v.y
  let z = v.z
  result.x = mat.m0 * x + mat.m4 * y + mat.m8 * z + mat.m12
  result.y = mat.m1 * x + mat.m5 * y + mat.m9 * z + mat.m13
  result.z = mat.m2 * x + mat.m6 * y + mat.m10 * z + mat.m14

proc rotateByQuaternion*(v: Vector3; q: Quaternion): Vector3 =
  ## Transform a vector by quaternion rotation
  result = Vector3()
  result.x = v.x * (q.x * q.x + q.w * q.w - q.y * q.y - q.z * q.z) +
      v.y * (2 * q.x * q.y - 2 * q.w * q.z) + v.z * (2 * q.x * q.z + 2 * q.w * q.y)
  result.y = v.x * (2 * q.w * q.z + 2 * q.x * q.y) +
      v.y * (q.w * q.w - q.x * q.x + q.y * q.y - q.z * q.z) +
      v.z * (-(2 * q.w * q.x) + 2 * q.y * q.z)
  result.z = v.x * (-(2 * q.w * q.y) + 2 * q.x * q.z) + v.y * (2 * q.w * q.x + 2 * q.y * q.z) +
      v.z * (q.w * q.w - q.x * q.x - q.y * q.y + q.z * q.z)

proc lerp*(v1: Vector3; v2: Vector3; amount: float32): Vector3 =
  ## Calculate linear interpolation between two vectors
  result = Vector3()
  result.x = v1.x + amount * (v2.x - v1.x)
  result.y = v1.y + amount * (v2.y - v1.y)
  result.z = v1.z + amount * (v2.z - v1.z)

proc reflect*(v: Vector3; normal: Vector3): Vector3 =
  ## Calculate reflected vector to normal
  result = Vector3()
  # I is the original vector
  # N is the normal of the incident plane
  # R = I - (2*N*(DotProduct[I, N]))
  let dotProduct = (v.x * normal.x + v.y * normal.y + v.z * normal.z)
  result.x = v.x - (2'f32 * normal.x) * dotProduct
  result.y = v.y - (2'f32 * normal.y) * dotProduct
  result.z = v.z - (2'f32 * normal.z) * dotProduct

proc min*(v1: Vector3; v2: Vector3): Vector3 =
  ## Get min value for each pair of components
  result = Vector3()
  result.x = min(v1.x, v2.x)
  result.y = min(v1.y, v2.y)
  result.z = min(v1.z, v2.z)

proc max*(v1: Vector3; v2: Vector3): Vector3 =
  ## Get max value for each pair of components
  result = Vector3()
  result.x = max(v1.x, v2.x)
  result.y = max(v1.y, v2.y)
  result.z = max(v1.z, v2.z)

proc barycenter*(p: Vector3; a: Vector3; b: Vector3; c: Vector3): Vector3 =
  ## Compute barycenter coordinates (u, v, w) for point p with respect to triangle (a, b, c)
  ## NOTE: Assumes P is on the plane of the triangle
  result = Vector3()
  var v0 = Vector3(x: b.x - a.x, y: b.y - a.y, z: b.z - a.z)
  # Vector3Subtract(b, a)
  var v1 = Vector3(x: c.x - a.x, y: c.y - a.y, z: c.z - a.z)
  # Vector3Subtract(c, a)
  var v2 = Vector3(x: p.x - a.x, y: p.y - a.y, z: p.z - a.z)
  # Vector3Subtract(p, a)
  let d00 = (v0.x * v0.x + v0.y * v0.y + v0.z * v0.z)
  # Vector3DotProduct(v0, v0)
  let d01 = (v0.x * v1.x + v0.y * v1.y + v0.z * v1.z)
  # Vector3DotProduct(v0, v1)
  let d11 = (v1.x * v1.x + v1.y * v1.y + v1.z * v1.z)
  # Vector3DotProduct(v1, v1)
  let d20 = (v2.x * v0.x + v2.y * v0.y + v2.z * v0.z)
  # Vector3DotProduct(v2, v0)
  let d21 = (v2.x * v1.x + v2.y * v1.y + v2.z * v1.z)
  # Vector3DotProduct(v2, v1)
  let denom = d00 * d11 - d01 * d01
  result.y = (d11 * d20 - d01 * d21) / denom
  result.z = (d00 * d21 - d01 * d20) / denom
  result.x = 1'f32 - (result.z + result.y)

proc unproject*(source: Vector3; projection: Matrix; view: Matrix): Vector3 =
  ## Projects a Vector3 from screen space into object space
  ## NOTE: We are avoiding calling other raymath functions despite available
  result = Vector3()
  # Calculate unproject matrix (multiply view patrix by projection matrix) and invert it
  var matViewProj = Matrix(m0: view.m0 * projection.m0 +
      view.m1 * projection.m4 + view.m2 * projection.m8 + view.m3 * projection.m12, m4: view.m0 *
      projection.m1 + view.m1 * projection.m5 + view.m2 * projection.m9 +
      view.m3 * projection.m13, m8: view.m0 * projection.m2 + view.m1 * projection.m6 +
      view.m2 * projection.m10 + view.m3 * projection.m14, m12: view.m0 * projection.m3 +
      view.m1 * projection.m7 + view.m2 * projection.m11 + view.m3 * projection.m15, m1: view.m4 *
      projection.m0 + view.m5 * projection.m4 + view.m6 * projection.m8 +
      view.m7 * projection.m12, m5: view.m4 * projection.m1 + view.m5 * projection.m5 +
      view.m6 * projection.m9 + view.m7 * projection.m13, m9: view.m4 * projection.m2 +
      view.m5 * projection.m6 + view.m6 * projection.m10 + view.m7 * projection.m14, m13: view.m4 *
      projection.m3 + view.m5 * projection.m7 + view.m6 * projection.m11 +
      view.m7 * projection.m15, m2: view.m8 * projection.m0 + view.m9 * projection.m4 +
      view.m10 * projection.m8 + view.m11 * projection.m12, m6: view.m8 * projection.m1 +
      view.m9 * projection.m5 + view.m10 * projection.m9 + view.m11 * projection.m13, m10: view.m8 *
      projection.m2 + view.m9 * projection.m6 + view.m10 * projection.m10 +
      view.m11 * projection.m14, m14: view.m8 * projection.m3 +
      view.m9 * projection.m7 + view.m10 * projection.m11 + view.m11 * projection.m15, m3: view.m12 *
      projection.m0 + view.m13 * projection.m4 + view.m14 * projection.m8 +
      view.m15 * projection.m12, m7: view.m12 * projection.m1 +
      view.m13 * projection.m5 + view.m14 * projection.m9 + view.m15 * projection.m13, m11: view.m12 *
      projection.m2 + view.m13 * projection.m6 + view.m14 * projection.m10 +
      view.m15 * projection.m14, m15: view.m12 * projection.m3 +
      view.m13 * projection.m7 + view.m14 * projection.m11 + view.m15 * projection.m15)
  # Calculate inverted matrix -> MatrixInvert(matViewProj);
  # Cache the matrix values (speed optimization)
  var
    a00 = matViewProj.m0
    a01 = matViewProj.m1
    a02 = matViewProj.m2
    a03 = matViewProj.m3
  var
    a10 = matViewProj.m4
    a11 = matViewProj.m5
    a12 = matViewProj.m6
    a13 = matViewProj.m7
  var
    a20 = matViewProj.m8
    a21 = matViewProj.m9
    a22 = matViewProj.m10
    a23 = matViewProj.m11
  var
    a30 = matViewProj.m12
    a31 = matViewProj.m13
    a32 = matViewProj.m14
    a33 = matViewProj.m15
  let b00 = a00 * a11 - a01 * a10
  let b01 = a00 * a12 - a02 * a10
  let b02 = a00 * a13 - a03 * a10
  let b03 = a01 * a12 - a02 * a11
  let b04 = a01 * a13 - a03 * a11
  let b05 = a02 * a13 - a03 * a12
  let b06 = a20 * a31 - a21 * a30
  let b07 = a20 * a32 - a22 * a30
  let b08 = a20 * a33 - a23 * a30
  let b09 = a21 * a32 - a22 * a31
  let b10 = a21 * a33 - a23 * a31
  let b11 = a22 * a33 - a23 * a32
  # Calculate the invert determinant (inlined to avoid double-caching)
  let invDet = 1'f32 /
      (b00 * b11 - b01 * b10 + b02 * b09 + b03 * b08 - b04 * b07 + b05 * b06)
  var matViewProjInv = Matrix(m0: (a11 * b11 - a12 * b10 + a13 * b09) * invDet, m4: (
      -(a01 * b11) + a02 * b10 - a03 * b09) * invDet, m8: (a31 * b05 - a32 * b04 + a33 * b03) * invDet, m12: (
      -(a21 * b05) + a22 * b04 - a23 * b03) * invDet, m1: (
      -(a10 * b11) + a12 * b08 - a13 * b07) * invDet, m5: (a00 * b11 - a02 * b08 + a03 * b07) * invDet, m9: (
      -(a30 * b05) + a32 * b02 - a33 * b01) * invDet, m13: (a20 * b05 - a22 * b02 + a23 * b01) * invDet, m2: (
      a10 * b10 - a11 * b08 + a13 * b06) * invDet, m6: (-(a00 * b10) + a01 * b08 - a03 * b06) * invDet, m10: (
      a30 * b04 - a31 * b02 + a33 * b00) * invDet, m14: (-(a20 * b04) + a21 * b02 - a23 * b00) * invDet, m3: (
      -(a10 * b09) + a11 * b07 - a12 * b06) * invDet, m7: (a00 * b09 - a01 * b07 + a02 * b06) * invDet, m11: (
      -(a30 * b03) + a31 * b01 - a32 * b00) * invDet, m15: (a20 * b03 - a21 * b01 + a22 * b00) * invDet)
  # Create quaternion from source point
  var quat = Quaternion(x: source.x, y: source.y, z: source.z, w: 1'f32)
  # Multiply quat point by unproject matrix
  var qtransformed = Quaternion(x: matViewProjInv.m0 * quat.x +
      matViewProjInv.m4 * quat.y + matViewProjInv.m8 * quat.z +
      matViewProjInv.m12 * quat.w, y: matViewProjInv.m1 * quat.x +
      matViewProjInv.m5 * quat.y + matViewProjInv.m9 * quat.z +
      matViewProjInv.m13 * quat.w, z: matViewProjInv.m2 * quat.x +
      matViewProjInv.m6 * quat.y + matViewProjInv.m10 * quat.z +
      matViewProjInv.m14 * quat.w, w: matViewProjInv.m3 * quat.x +
      matViewProjInv.m7 * quat.y + matViewProjInv.m11 * quat.z +
      matViewProjInv.m15 * quat.w)
  # Normalized world points in vectors
  result.x = qtransformed.x / qtransformed.w
  result.y = qtransformed.y / qtransformed.w
  result.z = qtransformed.z / qtransformed.w

proc toFloatV*(v: Vector3): Float3 =
  ## Get Vector3 as float array
  var buffer = Float3()
  buffer.v[0] = v.x
  buffer.v[1] = v.y
  buffer.v[2] = v.z
  return buffer

## ----------------------------------------------------------------------------------
## Module Functions Definition - Matrix math
## ----------------------------------------------------------------------------------

proc determinant*(mat: Matrix): float32 =
  ## Compute matrix determinant
  result = 0'f32
  # Cache the matrix values (speed optimization)
  var
    a00 = mat.m0
    a01 = mat.m1
    a02 = mat.m2
    a03 = mat.m3
  var
    a10 = mat.m4
    a11 = mat.m5
    a12 = mat.m6
    a13 = mat.m7
  var
    a20 = mat.m8
    a21 = mat.m9
    a22 = mat.m10
    a23 = mat.m11
  var
    a30 = mat.m12
    a31 = mat.m13
    a32 = mat.m14
    a33 = mat.m15
  result = a30 * a21 * a12 * a03 - a20 * a31 * a12 * a03 - a30 * a11 * a22 * a03 + a10 * a31 * a22 * a03 +
      a20 * a11 * a32 * a03 - a10 * a21 * a32 * a03 - a30 * a21 * a02 * a13 + a20 * a31 * a02 * a13 +
      a30 * a01 * a22 * a13 - a00 * a31 * a22 * a13 - a20 * a01 * a32 * a13 + a00 * a21 * a32 * a13 +
      a30 * a11 * a02 * a23 - a10 * a31 * a02 * a23 - a30 * a01 * a12 * a23 + a00 * a31 * a12 * a23 +
      a10 * a01 * a32 * a23 - a00 * a11 * a32 * a23 - a20 * a11 * a02 * a33 + a10 * a21 * a02 * a33 +
      a20 * a01 * a12 * a33 - a00 * a21 * a12 * a33 - a10 * a01 * a22 * a33 + a00 * a11 * a22 * a33

proc trace*(mat: Matrix): float32 =
  ## Get the trace of the matrix (sum of the values along the diagonal)
  result = (mat.m0 + mat.m5 + mat.m10 + mat.m15)

proc transpose*(mat: Matrix): Matrix =
  ## Transposes provided matrix
  result = Matrix()
  result.m0 = mat.m0
  result.m1 = mat.m4
  result.m2 = mat.m8
  result.m3 = mat.m12
  result.m4 = mat.m1
  result.m5 = mat.m5
  result.m6 = mat.m9
  result.m7 = mat.m13
  result.m8 = mat.m2
  result.m9 = mat.m6
  result.m10 = mat.m10
  result.m11 = mat.m14
  result.m12 = mat.m3
  result.m13 = mat.m7
  result.m14 = mat.m11
  result.m15 = mat.m15

proc invert*(mat: Matrix): Matrix =
  ## Invert provided matrix
  result = Matrix()
  # Cache the matrix values (speed optimization)
  var
    a00 = mat.m0
    a01 = mat.m1
    a02 = mat.m2
    a03 = mat.m3
  var
    a10 = mat.m4
    a11 = mat.m5
    a12 = mat.m6
    a13 = mat.m7
  var
    a20 = mat.m8
    a21 = mat.m9
    a22 = mat.m10
    a23 = mat.m11
  var
    a30 = mat.m12
    a31 = mat.m13
    a32 = mat.m14
    a33 = mat.m15
  let b00 = a00 * a11 - a01 * a10
  let b01 = a00 * a12 - a02 * a10
  let b02 = a00 * a13 - a03 * a10
  let b03 = a01 * a12 - a02 * a11
  let b04 = a01 * a13 - a03 * a11
  let b05 = a02 * a13 - a03 * a12
  let b06 = a20 * a31 - a21 * a30
  let b07 = a20 * a32 - a22 * a30
  let b08 = a20 * a33 - a23 * a30
  let b09 = a21 * a32 - a22 * a31
  let b10 = a21 * a33 - a23 * a31
  let b11 = a22 * a33 - a23 * a32
  # Calculate the invert determinant (inlined to avoid double-caching)
  let invDet = 1'f32 /
      (b00 * b11 - b01 * b10 + b02 * b09 + b03 * b08 - b04 * b07 + b05 * b06)
  result.m0 = (a11 * b11 - a12 * b10 + a13 * b09) * invDet
  result.m1 = (-(a01 * b11) + a02 * b10 - a03 * b09) * invDet
  result.m2 = (a31 * b05 - a32 * b04 + a33 * b03) * invDet
  result.m3 = (-(a21 * b05) + a22 * b04 - a23 * b03) * invDet
  result.m4 = (-(a10 * b11) + a12 * b08 - a13 * b07) * invDet
  result.m5 = (a00 * b11 - a02 * b08 + a03 * b07) * invDet
  result.m6 = (-(a30 * b05) + a32 * b02 - a33 * b01) * invDet
  result.m7 = (a20 * b05 - a22 * b02 + a23 * b01) * invDet
  result.m8 = (a10 * b10 - a11 * b08 + a13 * b06) * invDet
  result.m9 = (-(a00 * b10) + a01 * b08 - a03 * b06) * invDet
  result.m10 = (a30 * b04 - a31 * b02 + a33 * b00) * invDet
  result.m11 = (-(a20 * b04) + a21 * b02 - a23 * b00) * invDet
  result.m12 = (-(a10 * b09) + a11 * b07 - a12 * b06) * invDet
  result.m13 = (a00 * b09 - a01 * b07 + a02 * b06) * invDet
  result.m14 = (-(a30 * b03) + a31 * b01 - a32 * b00) * invDet
  result.m15 = (a20 * b03 - a21 * b01 + a22 * b00) * invDet

proc normalize*(mat: Matrix): Matrix =
  ## Normalize provided matrix
  result = Matrix()
  # Cache the matrix values (speed optimization)
  var
    a00 = mat.m0
    a01 = mat.m1
    a02 = mat.m2
    a03 = mat.m3
  var
    a10 = mat.m4
    a11 = mat.m5
    a12 = mat.m6
    a13 = mat.m7
  var
    a20 = mat.m8
    a21 = mat.m9
    a22 = mat.m10
    a23 = mat.m11
  var
    a30 = mat.m12
    a31 = mat.m13
    a32 = mat.m14
    a33 = mat.m15
  # MatrixDeterminant(mat)
  let det = a30 * a21 * a12 * a03 - a20 * a31 * a12 * a03 - a30 * a11 * a22 * a03 +
      a10 * a31 * a22 * a03 + a20 * a11 * a32 * a03 - a10 * a21 * a32 * a03 - a30 * a21 * a02 * a13 +
      a20 * a31 * a02 * a13 + a30 * a01 * a22 * a13 - a00 * a31 * a22 * a13 - a20 * a01 * a32 * a13 +
      a00 * a21 * a32 * a13 + a30 * a11 * a02 * a23 - a10 * a31 * a02 * a23 - a30 * a01 * a12 * a23 +
      a00 * a31 * a12 * a23 + a10 * a01 * a32 * a23 - a00 * a11 * a32 * a23 - a20 * a11 * a02 * a33 +
      a10 * a21 * a02 * a33 + a20 * a01 * a12 * a33 - a00 * a21 * a12 * a33 - a10 * a01 * a22 * a33 +
      a00 * a11 * a22 * a33
  result.m0 = mat.m0 / det
  result.m1 = mat.m1 / det
  result.m2 = mat.m2 / det
  result.m3 = mat.m3 / det
  result.m4 = mat.m4 / det
  result.m5 = mat.m5 / det
  result.m6 = mat.m6 / det
  result.m7 = mat.m7 / det
  result.m8 = mat.m8 / det
  result.m9 = mat.m9 / det
  result.m10 = mat.m10 / det
  result.m11 = mat.m11 / det
  result.m12 = mat.m12 / det
  result.m13 = mat.m13 / det
  result.m14 = mat.m14 / det
  result.m15 = mat.m15 / det

proc matrixIdentity*(): Matrix =
  ## Get identity matrix
  result = Matrix(m0: 1, m4: 0, m8: 0, m12: 0, m1: 0, m5: 1,
                          m9: 0, m13: 0, m2: 0, m6: 0, m10: 1, m14: 0,
                          m3: 0, m7: 0, m11: 0, m15: 1)

proc add*(left: Matrix; right: Matrix): Matrix =
  ## Add two matrices
  result = Matrix()
  result.m0 = left.m0 + right.m0
  result.m1 = left.m1 + right.m1
  result.m2 = left.m2 + right.m2
  result.m3 = left.m3 + right.m3
  result.m4 = left.m4 + right.m4
  result.m5 = left.m5 + right.m5
  result.m6 = left.m6 + right.m6
  result.m7 = left.m7 + right.m7
  result.m8 = left.m8 + right.m8
  result.m9 = left.m9 + right.m9
  result.m10 = left.m10 + right.m10
  result.m11 = left.m11 + right.m11
  result.m12 = left.m12 + right.m12
  result.m13 = left.m13 + right.m13
  result.m14 = left.m14 + right.m14
  result.m15 = left.m15 + right.m15

proc subtract*(left: Matrix; right: Matrix): Matrix =
  ## Subtract two matrices (left - right)
  result = Matrix()
  result.m0 = left.m0 - right.m0
  result.m1 = left.m1 - right.m1
  result.m2 = left.m2 - right.m2
  result.m3 = left.m3 - right.m3
  result.m4 = left.m4 - right.m4
  result.m5 = left.m5 - right.m5
  result.m6 = left.m6 - right.m6
  result.m7 = left.m7 - right.m7
  result.m8 = left.m8 - right.m8
  result.m9 = left.m9 - right.m9
  result.m10 = left.m10 - right.m10
  result.m11 = left.m11 - right.m11
  result.m12 = left.m12 - right.m12
  result.m13 = left.m13 - right.m13
  result.m14 = left.m14 - right.m14
  result.m15 = left.m15 - right.m15

proc multiply*(left: Matrix; right: Matrix): Matrix =
  ## Get two matrix multiplication
  ## NOTE: When multiplying matrices... the order matters!
  result = Matrix()
  result.m0 = left.m0 * right.m0 + left.m1 * right.m4 + left.m2 * right.m8 +
      left.m3 * right.m12
  result.m1 = left.m0 * right.m1 + left.m1 * right.m5 + left.m2 * right.m9 +
      left.m3 * right.m13
  result.m2 = left.m0 * right.m2 + left.m1 * right.m6 + left.m2 * right.m10 +
      left.m3 * right.m14
  result.m3 = left.m0 * right.m3 + left.m1 * right.m7 + left.m2 * right.m11 +
      left.m3 * right.m15
  result.m4 = left.m4 * right.m0 + left.m5 * right.m4 + left.m6 * right.m8 +
      left.m7 * right.m12
  result.m5 = left.m4 * right.m1 + left.m5 * right.m5 + left.m6 * right.m9 +
      left.m7 * right.m13
  result.m6 = left.m4 * right.m2 + left.m5 * right.m6 + left.m6 * right.m10 +
      left.m7 * right.m14
  result.m7 = left.m4 * right.m3 + left.m5 * right.m7 + left.m6 * right.m11 +
      left.m7 * right.m15
  result.m8 = left.m8 * right.m0 + left.m9 * right.m4 + left.m10 * right.m8 +
      left.m11 * right.m12
  result.m9 = left.m8 * right.m1 + left.m9 * right.m5 + left.m10 * right.m9 +
      left.m11 * right.m13
  result.m10 = left.m8 * right.m2 + left.m9 * right.m6 + left.m10 * right.m10 +
      left.m11 * right.m14
  result.m11 = left.m8 * right.m3 + left.m9 * right.m7 + left.m10 * right.m11 +
      left.m11 * right.m15
  result.m12 = left.m12 * right.m0 + left.m13 * right.m4 + left.m14 * right.m8 +
      left.m15 * right.m12
  result.m13 = left.m12 * right.m1 + left.m13 * right.m5 + left.m14 * right.m9 +
      left.m15 * right.m13
  result.m14 = left.m12 * right.m2 + left.m13 * right.m6 + left.m14 * right.m10 +
      left.m15 * right.m14
  result.m15 = left.m12 * right.m3 + left.m13 * right.m7 + left.m14 * right.m11 +
      left.m15 * right.m15

proc translate*(x: float32, y: float32, z: float32): Matrix =
  ## Get translation matrix
  result = Matrix(m0: 1, m4: 0, m8: 0, m12: x, m1: 0, m5: 1,
                          m9: 0, m13: y, m2: 0, m6: 0, m10: 1, m14: z, m3: 0,
                          m7: 0, m11: 0, m15: 1)

proc rotate*(axis: Vector3; angle: float32): Matrix =
  ## Create rotation matrix from axis and angle
  ## NOTE: Angle should be provided in radians
  result = Matrix()
  var
    x = axis.x
    y = axis.y
    z = axis.z
  let lengthSquared = x * x + y * y + z * z
  if (lengthSquared != 1'f32) and (lengthSquared != 0'f32):
    let ilength = 1'f32 / sqrt(lengthSquared)
    x = x * ilength
    y = y * ilength
    z = z * ilength
  let sinres = sin(angle)
  let cosres = cos(angle)
  let t = 1'f32 - cosres
  result.m0 = x * x * t + cosres
  result.m1 = y * x * t + z * sinres
  result.m2 = z * x * t - y * sinres
  result.m3 = 0'f32
  result.m4 = x * y * t - z * sinres
  result.m5 = y * y * t + cosres
  result.m6 = z * y * t + x * sinres
  result.m7 = 0'f32
  result.m8 = x * z * t + y * sinres
  result.m9 = y * z * t - x * sinres
  result.m10 = z * z * t + cosres
  result.m11 = 0'f32
  result.m12 = 0'f32
  result.m13 = 0'f32
  result.m14 = 0'f32
  result.m15 = 1'f32

proc rotateX*(angle: float32): Matrix =
  ## Get x-rotation matrix (angle in radians)
  result = Matrix(m0: 1, m4: 0, m8: 0, m12: 0, m1: 0, m5: 1,
                          m9: 0, m13: 0, m2: 0, m6: 0, m10: 1, m14: 0,
                          m3: 0, m7: 0, m11: 0, m15: 1)
  # MatrixIdentity()
  let cosres = cos(angle)
  let sinres = sin(angle)
  result.m5 = cosres
  result.m6 = -sinres
  result.m9 = sinres
  result.m10 = cosres

proc rotateY*(angle: float32): Matrix =
  ## Get y-rotation matrix (angle in radians)
  result = Matrix(m0: 1, m4: 0, m8: 0, m12: 0, m1: 0, m5: 1,
                          m9: 0, m13: 0, m2: 0, m6: 0, m10: 1, m14: 0,
                          m3: 0, m7: 0, m11: 0, m15: 1)
  # MatrixIdentity()
  let cosres = cos(angle)
  let sinres = sin(angle)
  result.m0 = cosres
  result.m2 = sinres
  result.m8 = -sinres
  result.m10 = cosres

proc rotateZ*(angle: float32): Matrix =
  ## Get z-rotation matrix (angle in radians)
  result = Matrix(m0: 1, m4: 0, m8: 0, m12: 0, m1: 0, m5: 1,
                          m9: 0, m13: 0, m2: 0, m6: 0, m10: 1, m14: 0,
                          m3: 0, m7: 0, m11: 0, m15: 1)
  # MatrixIdentity()
  let cosres = cos(angle)
  let sinres = sin(angle)
  result.m0 = cosres
  result.m1 = -sinres
  result.m4 = sinres
  result.m5 = cosres

proc rotateXYZ*(ang: Vector3): Matrix =
  ## Get xyz-rotation matrix (angles in radians)
  result = Matrix(m0: 1, m4: 0, m8: 0, m12: 0, m1: 0, m5: 1,
                          m9: 0, m13: 0, m2: 0, m6: 0, m10: 1, m14: 0,
                          m3: 0, m7: 0, m11: 0, m15: 1)
  # MatrixIdentity()
  let cosz = cos(-ang.z)
  let sinz = sin(-ang.z)
  let cosy = cos(-ang.y)
  let siny = sin(-ang.y)
  let cosx = cos(-ang.x)
  let sinx = sin(-ang.x)
  result.m0 = cosz * cosy
  result.m4 = (cosz * siny * sinx) - (sinz * cosx)
  result.m8 = (cosz * siny * cosx) + (sinz * sinx)
  result.m1 = sinz * cosy
  result.m5 = (sinz * siny * sinx) + (cosz * cosx)
  result.m9 = (sinz * siny * cosx) - (cosz * sinx)
  result.m2 = -siny
  result.m6 = cosy * sinx
  result.m10 = cosy * cosx

proc rotateZYX*(ang: Vector3): Matrix =
  ## Get zyx-rotation matrix (angles in radians)
  result = Matrix()
  let cz = cos(ang.z)
  let sz = sin(ang.z)
  let cy = cos(ang.y)
  let sy = sin(ang.y)
  let cx = cos(ang.x)
  let sx = sin(ang.x)
  result.m0 = cz * cy
  result.m1 = cz * sy * sx - cx * sz
  result.m2 = sz * sx + cz * cx * sy
  result.m3 = 0
  result.m4 = cy * sz
  result.m5 = cz * cx + sz * sy * sx
  result.m6 = cx * sz * sy - cz * sx
  result.m7 = 0
  result.m8 = -sy
  result.m9 = cy * sx
  result.m10 = cy * cx
  result.m11 = 0
  result.m12 = 0
  result.m13 = 0
  result.m14 = 0
  result.m15 = 1

proc scale*(x: float32, y: float32, z: float32): Matrix =
  ## Get scaling matrix
  result = Matrix(m0: x, m4: 0, m8: 0, m12: 0, m1: 0, m5: y, m9: 0,
                          m13: 0, m2: 0, m6: 0, m10: z, m14: 0, m3: 0,
                          m7: 0, m11: 0, m15: 1)

proc frustum*(left: float; right: float; bottom: float; top: float;
  # Get perspective projection matrix
                   near: float; far: float): Matrix =
  result = Matrix()
  let rl = float32(right - left)
  let tb = float32(top - bottom)
  let fn = float32(far - near)
  result.m0 = (float32(near * 2'f32)) / rl
  result.m1 = 0'f32
  result.m2 = 0'f32
  result.m3 = 0'f32
  result.m4 = 0'f32
  result.m5 = (float32(near * 2'f32)) / tb
  result.m6 = 0'f32
  result.m7 = 0'f32
  result.m8 = (float32(right) + float32(left)) / rl
  result.m9 = (float32(top) + float32(bottom)) / tb
  result.m10 = -((float32(far) + float32(near)) / fn)
  result.m11 = -1'f32
  result.m12 = 0'f32
  result.m13 = 0'f32
  result.m14 = -((float32(far * float32(near * 2'f32))) / fn)
  result.m15 = 0'f32

proc perspective*(fovy: float; aspect: float; near: float; far: float): Matrix =
  ## Get perspective projection matrix
  ## NOTE: Angle should be provided in radians
  result = Matrix()
  let top = near * tan(fovy * 0.5)
  let bottom = -top
  let right = top * aspect
  let left = -right
  # MatrixFrustum(-right, right, -top, top, near, far);
  let rl = float32(right - left)
  let tb = float32(top - bottom)
  let fn = float32(far - near)
  result.m0 = (float32(near * 2'f32)) / rl
  result.m5 = (float32(near * 2'f32)) / tb
  result.m8 = (float32(right) + float32(left)) / rl
  result.m9 = (float32(top) + float32(bottom)) / tb
  result.m10 = -((float32(far) + float32(near)) / fn)
  result.m11 = -1'f32
  result.m14 = -((float32(far * float32(near * 2'f32))) / fn)

proc ortho*(left: float; right: float; bottom: float; top: float;
  # Get orthographic projection matrix
                 near: float; far: float): Matrix =
  result = Matrix()
  let rl = float32(right - left)
  let tb = float32(top - bottom)
  let fn = float32(far - near)
  result.m0 = 2'f32 / rl
  result.m1 = 0'f32
  result.m2 = 0'f32
  result.m3 = 0'f32
  result.m4 = 0'f32
  result.m5 = 2'f32 / tb
  result.m6 = 0'f32
  result.m7 = 0'f32
  result.m8 = 0'f32
  result.m9 = 0'f32
  result.m10 = -(2'f32 / fn)
  result.m11 = 0'f32
  result.m12 = -((float32(left) + float32(right)) / rl)
  result.m13 = -((float32(top) + float32(bottom)) / tb)
  result.m14 = -((float32(far) + float32(near)) / fn)
  result.m15 = 1'f32

proc lookAt*(eye: Vector3; target: Vector3; up: Vector3): Matrix =
  ## Get camera look-at matrix (view matrix)
  result = Matrix()
  var length = 0'f32
  var ilength = 0'f32
  # Vector3Subtract(eye, target)
  var vz = Vector3(x: eye.x - target.x, y: eye.y - target.y, z: eye.z - target.z)
  # Vector3Normalize(vz)
  var v: Vector3 = vz
  length = sqrt(v.x * v.x + v.y * v.y + v.z * v.z)
  if length == 0'f32:
    length = 1'f32
  ilength = 1'f32 / length
  vz.x = vz.x * ilength
  vz.y = vz.y * ilength
  vz.z = vz.z * ilength
  # Vector3CrossProduct(up, vz)
  var vx = Vector3(x: up.y * vz.z - up.z * vz.y, y: up.z * vz.x - up.x * vz.z,
                        z: up.x * vz.y - up.y * vz.x)
  # Vector3Normalize(x)
  v = vx
  length = sqrt(v.x * v.x + v.y * v.y + v.z * v.z)
  if length == 0'f32:
    length = 1'f32
  ilength = 1'f32 / length
  vx.x = vx.x * ilength
  vx.y = vx.y * ilength
  vx.z = vx.z * ilength
  # Vector3CrossProduct(vz, vx)
  var vy = Vector3(x: vz.y * vx.z - vz.z * vx.y, y: vz.z * vx.x - vz.x * vx.z,
                        z: vz.x * vx.y - vz.y * vx.x)
  result.m0 = vx.x
  result.m1 = vy.x
  result.m2 = vz.x
  result.m3 = 0'f32
  result.m4 = vx.y
  result.m5 = vy.y
  result.m6 = vz.y
  result.m7 = 0'f32
  result.m8 = vx.z
  result.m9 = vy.z
  result.m10 = vz.z
  result.m11 = 0'f32
  result.m12 = -(vx.x * eye.x + vx.y * eye.y + vx.z * eye.z)
  # Vector3DotProduct(vx, eye)
  result.m13 = -(vy.x * eye.x + vy.y * eye.y + vy.z * eye.z)
  # Vector3DotProduct(vy, eye)
  result.m14 = -(vz.x * eye.x + vz.y * eye.y + vz.z * eye.z)
  # Vector3DotProduct(vz, eye)
  result.m15 = 1'f32

proc toFloatV*(mat: Matrix): Float16 =
  ## Get float array of matrix data
  result = Float16()
  result.v[0] = mat.m0
  result.v[1] = mat.m1
  result.v[2] = mat.m2
  result.v[3] = mat.m3
  result.v[4] = mat.m4
  result.v[5] = mat.m5
  result.v[6] = mat.m6
  result.v[7] = mat.m7
  result.v[8] = mat.m8
  result.v[9] = mat.m9
  result.v[10] = mat.m10
  result.v[11] = mat.m11
  result.v[12] = mat.m12
  result.v[13] = mat.m13
  result.v[14] = mat.m14
  result.v[15] = mat.m15

## ----------------------------------------------------------------------------------
## Module Functions Definition - Quaternion math
## ----------------------------------------------------------------------------------

proc add*(q1: Quaternion; q2: Quaternion): Quaternion =
  ## Add two quaternions
  result = Quaternion(x: q1.x + q2.x, y: q1.y + q2.y, z: q1.z + q2.z,
                                  w: q1.w + q2.w)

proc addValue*(q: Quaternion; add: float32): Quaternion =
  ## Add quaternion and float value
  result = Quaternion(x: q.x + add, y: q.y + add, z: q.z + add, w: q.w + add)

proc subtract*(q1: Quaternion; q2: Quaternion): Quaternion =
  ## Subtract two quaternions
  result = Quaternion(x: q1.x - q2.x, y: q1.y - q2.y, z: q1.z - q2.z,
                                  w: q1.w - q2.w)

proc subtractValue*(q: Quaternion; sub: float32): Quaternion =
  ## Subtract quaternion and float value
  result = Quaternion(x: q.x - sub, y: q.y - sub, z: q.z - sub, w: q.w - sub)

proc quaternionIdentity*(): Quaternion =
  ## Get identity quaternion
  result = Quaternion(x: 0, y: 0, z: 0, w: 1)

proc length*(q: Quaternion): float32 =
  ## Computes the length of a quaternion
  result = sqrt(q.x * q.x + q.y * q.y + q.z * q.z + q.w * q.w)

proc normalize*(q: Quaternion): Quaternion =
  ## Normalize provided quaternion
  result = Quaternion()
  var length = sqrt(q.x * q.x + q.y * q.y + q.z * q.z + q.w * q.w)
  if length == 0'f32:
    length = 1'f32
  let ilength = 1'f32 / length
  result.x = q.x * ilength
  result.y = q.y * ilength
  result.z = q.z * ilength
  result.w = q.w * ilength

proc invert*(q: Quaternion): Quaternion =
  ## Invert provided quaternion
  result = q
  let length = sqrt(q.x * q.x + q.y * q.y + q.z * q.z + q.w * q.w)
  let lengthSq = length * length
  if lengthSq != 0'f32:
    let invLength = 1'f32 / lengthSq
    result.x = result.x * -invLength
    result.y = result.y * -invLength
    result.z = result.z * -invLength
    result.w = result.w * invLength

proc multiply*(q1: Quaternion; q2: Quaternion): Quaternion =
  ## Calculate two quaternion multiplication
  result = Quaternion()
  var
    qax = q1.x
    qay = q1.y
    qaz = q1.z
    qaw = q1.w
  var
    qbx = q2.x
    qby = q2.y
    qbz = q2.z
    qbw = q2.w
  result.x = qax * qbw + qaw * qbx + qay * qbz - qaz * qby
  result.y = qay * qbw + qaw * qby + qaz * qbx - qax * qbz
  result.z = qaz * qbw + qaw * qbz + qax * qby - qay * qbx
  result.w = qaw * qbw - qax * qbx - qay * qby - qaz * qbz

proc scale*(q: Quaternion; mul: float32): Quaternion =
  ## Scale quaternion by float value
  result = Quaternion()
  var
    qax = q.x
    qay = q.y
    qaz = q.z
    qaw = q.w
  result.x = qax * mul + qaw * mul + qay * mul - qaz * mul
  result.y = qay * mul + qaw * mul + qaz * mul - qax * mul
  result.z = qaz * mul + qaw * mul + qax * mul - qay * mul
  result.w = qaw * mul - qax * mul - qay * mul - qaz * mul

proc divide*(q1: Quaternion; q2: Quaternion): Quaternion =
  ## Divide two quaternions
  result = Quaternion(x: q1.x / q2.x, y: q1.y / q2.y, z: q1.z / q2.z,
                                  w: q1.w / q2.w)

proc lerp*(q1: Quaternion; q2: Quaternion; amount: float32): Quaternion =
  ## Calculate linear interpolation between two quaternions
  result = Quaternion()
  result.x = q1.x + amount * (q2.x - q1.x)
  result.y = q1.y + amount * (q2.y - q1.y)
  result.z = q1.z + amount * (q2.z - q1.z)
  result.w = q1.w + amount * (q2.w - q1.w)

proc nlerp*(q1: Quaternion; q2: Quaternion; amount: float32): Quaternion =
  ## Calculate slerp-optimized interpolation between two quaternions
  result = Quaternion()
  # QuaternionLerp(q1, q2, amount)
  result.x = q1.x + amount * (q2.x - q1.x)
  result.y = q1.y + amount * (q2.y - q1.y)
  result.z = q1.z + amount * (q2.z - q1.z)
  result.w = q1.w + amount * (q2.w - q1.w)
  # QuaternionNormalize(q);
  var q: Quaternion = result
  var length = sqrt(q.x * q.x + q.y * q.y + q.z * q.z + q.w * q.w)
  if length == 0'f32:
    length = 1'f32
  let ilength = 1'f32 / length
  result.x = q.x * ilength
  result.y = q.y * ilength
  result.z = q.z * ilength
  result.w = q.w * ilength

proc slerp*(q1: Quaternion; q2: Quaternion; amount: float32): Quaternion =
  ## Calculates spherical linear interpolation between two quaternions
  result = Quaternion()
  var q2 = q2
  var cosHalfTheta = q1.x * q2.x + q1.y * q2.y + q1.z * q2.z + q1.w * q2.w
  if cosHalfTheta < 0:
    q2.x = -q2.x
    q2.y = -q2.y
    q2.z = -q2.z
    q2.w = -q2.w
    cosHalfTheta = -cosHalfTheta
  if abs(cosHalfTheta) >= 1'f32:
    result = q1
  elif cosHalfTheta > 0.95'f32:
    result = nlerp(q1, q2, amount)
  else:
    let halfTheta = arccos(cosHalfTheta)
    let sinHalfTheta = sqrt(1'f32 - cosHalfTheta * cosHalfTheta)
    if abs(sinHalfTheta) < 0.001'f32:
      result.x = (q1.x * 0.5'f32 + q2.x * 0.5'f32)
      result.y = (q1.y * 0.5'f32 + q2.y * 0.5'f32)
      result.z = (q1.z * 0.5'f32 + q2.z * 0.5'f32)
      result.w = (q1.w * 0.5'f32 + q2.w * 0.5'f32)
    else:
      let ratioA = sin((1 - amount) * halfTheta) / sinHalfTheta
      let ratioB = sin(amount * halfTheta) / sinHalfTheta
      result.x = (q1.x * ratioA + q2.x * ratioB)
      result.y = (q1.y * ratioA + q2.y * ratioB)
      result.z = (q1.z * ratioA + q2.z * ratioB)
      result.w = (q1.w * ratioA + q2.w * ratioB)

proc fromVector3ToVector3*(`from`: Vector3; to: Vector3): Quaternion =
  ## Calculate quaternion based on the rotation from one vector to another
  result = Quaternion()
  let cos2Theta = (`from`.x * to.x + `from`.y * to.y + `from`.z * to.z)
  # Vector3DotProduct(from, to)
  var cross = Vector3(x: `from`.y * to.z - `from`.z * to.y,
                           y: `from`.z * to.x - `from`.x * to.z,
                           z: `from`.x * to.y - `from`.y * to.x)
  # Vector3CrossProduct(from, to)
  result.x = cross.x
  result.y = cross.y
  result.z = cross.z
  result.w = 1'f32 + cos2Theta
  # QuaternionNormalize(q);
  # NOTE: Normalize to essentially nlerp the original and identity to 0.5
  var q = result
  var length = sqrt(q.x * q.x + q.y * q.y + q.z * q.z + q.w * q.w)
  if length == 0'f32:
    length = 1'f32
  let ilength = 1'f32 / length
  result.x = q.x * ilength
  result.y = q.y * ilength
  result.z = q.z * ilength
  result.w = q.w * ilength

proc fromMatrix*(mat: Matrix): Quaternion =
  ## Get a quaternion for a given rotation matrix
  result = Quaternion()
  if (mat.m0 > mat.m5) and (mat.m0 > mat.m10):
    let s = sqrt(1'f32 + mat.m0 - mat.m5 - mat.m10) * 2
    result.x = 0.25'f32 * s
    result.y = (mat.m4 + mat.m1) / s
    result.z = (mat.m2 + mat.m8) / s
    result.w = (mat.m9 - mat.m6) / s
  elif mat.m5 > mat.m10:
    let s = sqrt(1'f32 + mat.m5 - mat.m0 - mat.m10) * 2
    result.x = (mat.m4 + mat.m1) / s
    result.y = 0.25'f32 * s
    result.z = (mat.m9 + mat.m6) / s
    result.w = (mat.m2 - mat.m8) / s
  else:
    let s = sqrt(1'f32 + mat.m10 - mat.m0 - mat.m5) * 2
    result.x = (mat.m2 + mat.m8) / s
    result.y = (mat.m9 + mat.m6) / s
    result.z = 0.25'f32 * s
    result.w = (mat.m4 - mat.m1) / s

proc toMatrix*(q: Quaternion): Matrix =
  ## Get a matrix for a given quaternion
  result = Matrix(m0: 1, m4: 0, m8: 0, m12: 0, m1: 0, m5: 1,
                          m9: 0, m13: 0, m2: 0, m6: 0, m10: 1, m14: 0,
                          m3: 0, m7: 0, m11: 0, m15: 1)
  # MatrixIdentity()
  let a2 = q.x * q.x
  let b2 = q.y * q.y
  let c2 = q.z * q.z
  let ac = q.x * q.z
  let ab = q.x * q.y
  let bc = q.y * q.z
  let ad = q.w * q.x
  let bd = q.w * q.y
  let cd = q.w * q.z
  result.m0 = 1 - 2 * (b2 + c2)
  result.m1 = 2 * (ab + cd)
  result.m2 = 2 * (ac - bd)
  result.m4 = 2 * (ab - cd)
  result.m5 = 1 - 2 * (a2 + c2)
  result.m6 = 2 * (bc + ad)
  result.m8 = 2 * (ac + bd)
  result.m9 = 2 * (bc - ad)
  result.m10 = 1 - 2 * (a2 + b2)

proc fromAxisAngle*(axis: Vector3; angle: float32): Quaternion =
  ## Get rotation quaternion for an angle and axis
  ## NOTE: angle must be provided in radians
  result = Quaternion(x: 0, y: 0, z: 0, w: 1)
  var angle = angle
  var axis = axis
  let axisLength = sqrt(axis.x * axis.x + axis.y * axis.y + axis.z * axis.z)
  if axisLength != 0'f32:
    angle = angle * 0.5'f32
    var length = 0'f32
    var ilength = 0'f32
    ## Vector3Normalize(axis)
    var v = axis
    length = sqrt(v.x * v.x + v.y * v.y + v.z * v.z)
    if length == 0'f32:
      length = 1'f32
    ilength = 1'f32 / length
    axis.x = axis.x * ilength
    axis.y = axis.y * ilength
    axis.z = axis.z * ilength
    let sinres = sin(angle)
    let cosres = cos(angle)
    result.x = axis.x * sinres
    result.y = axis.y * sinres
    result.z = axis.z * sinres
    result.w = cosres
    ## QuaternionNormalize(q);
    var q: Quaternion = result
    length = sqrt(q.x * q.x + q.y * q.y + q.z * q.z + q.w * q.w)
    if length == 0'f32:
      length = 1'f32
    ilength = 1'f32 / length
    result.x = q.x * ilength
    result.y = q.y * ilength
    result.z = q.z * ilength
    result.w = q.w * ilength

proc toAxisAngle*(q: Quaternion; outAxis: var Vector3; outAngle: var cfloat) =
  ## Get the rotation angle and axis for a given quaternion
  var q = q
  if abs(q.w) > 1'f32:
    ## QuaternionNormalize(q);
    var length = sqrt(q.x * q.x + q.y * q.y + q.z * q.z + q.w * q.w)
    if length == 0'f32:
      length = 1'f32
    let ilength = 1'f32 / length
    q.x = q.x * ilength
    q.y = q.y * ilength
    q.z = q.z * ilength
    q.w = q.w * ilength
  var resAxis = Vector3(x: 0'f32, y: 0'f32, z: 0'f32)
  let resAngle = 2'f32 * arccos(q.w)
  let den = sqrt(1'f32 - q.w * q.w)
  if den > 0.0001'f32:
    resAxis.x = q.x / den
    resAxis.y = q.y / den
    resAxis.z = q.z / den
  else:
    ## This occurs when the angle is zero.
    ## Not a problem: just set an arbitrary normalized axis.
    resAxis.x = 1'f32
  outAxis = resAxis
  outAngle = resAngle

proc fromEuler*(pitch: float32, yaw: float32, roll: float32): Quaternion =
  ## Get the quaternion equivalent to Euler angles
  ## NOTE: Rotation order is ZYX
  result = Quaternion()
  let x0 = cos(pitch * 0.5'f32)
  let x1 = sin(pitch * 0.5'f32)
  let y0 = cos(yaw * 0.5'f32)
  let y1 = sin(yaw * 0.5'f32)
  let z0 = cos(roll * 0.5'f32)
  let z1 = sin(roll * 0.5'f32)
  result.x = x1 * y0 * z0 - x0 * y1 * z1
  result.y = x0 * y1 * z0 + x1 * y0 * z1
  result.z = x0 * y0 * z1 - x1 * y1 * z0
  result.w = x0 * y0 * z0 + x1 * y1 * z1

proc toEuler*(q: Quaternion): Vector3 =
  ## Get the Euler angles equivalent to quaternion (roll, pitch, yaw)
  ## NOTE: Angles are returned in a Vector3 struct in radians
  result = Vector3()
  # Roll (x-axis rotation)
  let x0 = 2'f32 * (q.w * q.x + q.y * q.z)
  let x1 = 1'f32 - 2'f32 * (q.x * q.x + q.y * q.y)
  result.x = arctan2(x0, x1)
  # Pitch (y-axis rotation)
  var y0 = 2'f32 * (q.w * q.y - q.z * q.x)
  y0 = if y0 > 1'f32: 1'f32 else: y0
  y0 = if y0 < -1'f32: -1'f32 else: y0
  result.y = arcsin(y0)
  # Yaw (z-axis rotation)
  let z0 = 2'f32 * (q.w * q.z + q.x * q.y)
  let z1 = 1'f32 - 2'f32 * (q.y * q.y + q.z * q.z)
  result.z = arctan2(z0, z1)

proc transform*(q: Quaternion; mat: Matrix): Quaternion =
  ## Transform a quaternion given a transformation matrix
  result = Quaternion()
  result.x = mat.m0 * q.x + mat.m4 * q.y + mat.m8 * q.z + mat.m12 * q.w
  result.y = mat.m1 * q.x + mat.m5 * q.y + mat.m9 * q.z + mat.m13 * q.w
  result.z = mat.m2 * q.x + mat.m6 * q.y + mat.m10 * q.z + mat.m14 * q.w
  result.w = mat.m3 * q.x + mat.m7 * q.y + mat.m11 * q.z + mat.m15 * q.w

template `+`*[T: Vector2 | Vector3 | Quaternion | Matrix](v1, v2: T): T = add(v1, v2)
template `+=`*[T: Vector2 | Vector3 | Quaternion | Matrix](v1: var T, v2: T) = v1 = add(v1, v2)
template `+`*[T: Vector2 | Vector3 | Quaternion](v1: T, value: float32): T = addValue(v1, value)
template `+=`*[T: Vector2 | Vector3 | Quaternion](v1: var T, value: float32) = v1 = addValue(v1, value)

template `-`*[T: Vector2 | Vector3 | Quaternion | Matrix](v1, v2: T): T = subtract(v1, v2)
template `-=`*[T: Vector2 | Vector3 | Quaternion | Matrix](v1: var T, v2: T) = v1 = subtract(v1, v2)
template `-`*[T: Vector2 | Vector3 | Quaternion](v1: T, value: float32): T = subtractValue(v1, value)
template `-=`*[T: Vector2 | Vector3 | Quaternion](v1: var T, value: float32) = v1 = subtractValue(v1, value)

template `*`*[T: Vector2 | Vector3 | Quaternion | Matrix](v1, v2: T): T = multiply(v1, v2)
template `*=`*[T: Vector2 | Vector3 | Quaternion | Matrix](v1: var T, v2: T) = v1 = multiply(v1, v2)
template `*`*[T: Vector2 | Vector3 | Quaternion](v1: T, value: float32): T = scale(v1, value)
template `*=`*[T: Vector2 | Vector3 | Quaternion](v1: var T, value: float32) = v1 = scale(v1, value)

template `/`*[T: Vector2 | Vector3 | Quaternion | Matrix](v1, v2: T): T = divide(v1, v2)
template `/=`*[T: Vector2 | Vector3 | Quaternion | Matrix](v1: var T, v2: T) = v1 = divide(v1, v2)
template `/`*[T: Vector2 | Vector3 | Quaternion](v1: T, value: float32): T = scale(v1, 1'f32/value)
template `/=`*[T: Vector2 | Vector3 | Quaternion](v1: var T, value: float32) = v1 = scale(v1, 1'f32/value)

template `-`*[T: Vector2 | Vector3](v1: T): T = negate(v1)
