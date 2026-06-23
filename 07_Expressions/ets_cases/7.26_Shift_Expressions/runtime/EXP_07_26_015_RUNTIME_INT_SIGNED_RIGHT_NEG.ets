/**
 * @id EXP_07_26_015_RUNTIME_INT_SIGNED_RIGHT_NEG
 * @expect runtime
 * @section 7.26
 * @design 运行时验证负数int的有符号右移(>>)保持符号扩展：n >> s = floor(n / 2^s)
 * @note 运行时用例：实际执行验证负数的有符号右移符号扩展行为
 */
function main(): void {
  let val: int = -32
  let shift: int = 2
  let result: int = val >> shift  // -32 >> 2 = -8 (floor(-32/4) = -8)

  if (result != -8) {
    throw new Error("assertion failed: -32 >> 2 expected -8, got " + result)
  }

  // 进一步验证符号扩展：-1 >> 1 should be -1 (all bits stay 1)
  let negOne: int = -1
  let r2: int = negOne >> 1
  if (r2 != -1) {
    throw new Error("assertion failed: -1 >> 1 expected -1, got " + r2)
  }

  // -16 >> 2 = -4
  let neg16: int = -16
  let r3: int = neg16 >> 2
  if (r3 != -4) {
    throw new Error("assertion failed: -16 >> 2 expected -4, got " + r3)
  }

  console.log("verified")
}
