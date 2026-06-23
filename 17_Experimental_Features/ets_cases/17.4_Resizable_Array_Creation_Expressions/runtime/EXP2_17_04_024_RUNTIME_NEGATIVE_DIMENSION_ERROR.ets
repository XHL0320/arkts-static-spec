/**
 * @id EXP2_17_04_024_RUNTIME_NEGATIVE_DIMENSION_ERROR
 * @expect runtime
 * @section 17.4
 * @design 运行时负维度错误：维度表达式在运行时计算为负值时，应抛出 NegativeArraySizeError
 * @note 运行时用例：实际执行验证运行时负维度触发异常
 */
function main(): void {
  let len: int = -3
  let caught: boolean = false
  try {
    let arr = new number[len](0)
  } catch (e) {
    caught = true
  }
  if (!caught) {
    throw new Error("assertion failed: expected NegativeArraySizeError to be thrown")
  }

  console.log("PASS: negative dimension runtime error check passed")
}
