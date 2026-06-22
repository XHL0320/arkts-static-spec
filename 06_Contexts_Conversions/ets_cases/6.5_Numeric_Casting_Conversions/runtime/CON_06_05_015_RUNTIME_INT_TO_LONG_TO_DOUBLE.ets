/**
 * @id CON_06_05_015_RUNTIME_INT_TO_LONG_TO_DOUBLE
 * @expect runtime
 * @section 6.5
 * @design int.toLong()/toDouble() widening 值保留
 * @note 运行时用例：验证 widening 转换值不变
 */
function main(): void {
  let i: int = 42
  if (i.toLong() != 42) { throw new Error("42.toLong() should be 42") }
  if (i.toDouble() != 42.0) { throw new Error("42.toDouble() should be 42.0") }

  let neg: int = -100
  if (neg.toLong() != -100) { throw new Error("-100.toLong() should be -100") }
  if (neg.toDouble() != -100.0) { throw new Error("-100.toDouble() should be -100.0") }

  let zero: int = 0
  if (zero.toLong() != 0) { throw new Error("0.toLong() should be 0") }
  if (zero.toDouble() != 0.0) { throw new Error("0.toDouble() should be 0.0") }

  console.log("Int to long/double widening verified")
}
