/**
 * @id EXP2_17_14_005_PASS_RETURN_VALUE
 * @expect compile-pass
 * @section 17.14
 * @design Trailing lambda 包含 return 语句返回 int 值
 * @note 正向用例：验证 trailing lambda 可以返回值
 */
function compute(callback: () => int): void {
  let result: int = callback()
  console.log("result: " + result)
}

compute() { return 42 }
