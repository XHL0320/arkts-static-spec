/**
 * @id EXP_07_04_01_009_RUNTIME_FUNCTION_REF_CALL_RESULT
 * @expect runtime
 * @section 7.4.1
 * @design 函数引用调用结果验证：验证通过函数引用调用的返回值正确
 * @note 运行时用例：通过引用调用函数并断言返回值
 */
function add(a: int, b: int): int {
  return a + b
}

function main(): void {
  let func = add
  let result = func(3, 5)

  if (result != 8) {
    throw new Error("assertion failed: func(3,5) = " + result)
  }
  console.log("verified")
}
