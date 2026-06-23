/**
 * @id EXP_07_02_01_022_RUNTIME_TARGET_TYPE_FUNC
 * @expect runtime
 * @section 7.2.1
 * @design 函数参数 target type 确保正确的类型传递
 * @note 运行时用例：验证函数参数 target type 运行时正确
 */
function doubleIt(x: int): int {
  return x * 2
}

function main(): void {
  let r = doubleIt(21)
  if (r != 42) {
    throw new Error("assertion failed: doubleIt(21) != 42, got " + r)
  }
  console.log("verified")
}
