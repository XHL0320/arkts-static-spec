/**
 * @id EXP_07_26_016_RUNTIME_INT_UNSIGNED_RIGHT_NEG
 * @expect runtime
 * @section 7.26
 * @design 运行时验证负数int的无符号右移(>>>)零扩展：高位补0而非补1
 * @note 运行时用例：实际执行验证负数的无符号右移零扩展行为，与>>不同
 */
function main(): void {
  let val: int = -32
  let shift: int = 2
  let result: int = val >>> shift  // -32 >>> 2, zero-extended

  // -32 in int is 0xFFFFFFE0, >>> 2 = 0x3FFFFFF8 = 1073741816
  if (result != 1073741816) {
    throw new Error("assertion failed: -32 >>> 2 expected 1073741816, got " + result)
  }

  // Verify difference from signed right shift
  let signedResult: int = val >> 2  // -8
  if (signedResult == result) {
    throw new Error("assertion failed: >>> and >> should differ for negative values")
  }

  // -1 >>> 1 = 0x7FFFFFFF = 2147483647
  let negOne: int = -1
  let r2: int = negOne >>> 1
  if (r2 != 2147483647) {
    throw new Error("assertion failed: -1 >>> 1 expected 2147483647, got " + r2)
  }

  console.log("verified")
}
