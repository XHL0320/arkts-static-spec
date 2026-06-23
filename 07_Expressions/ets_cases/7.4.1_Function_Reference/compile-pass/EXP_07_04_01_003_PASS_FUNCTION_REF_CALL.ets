/**
 * @id EXP_07_04_01_003_PASS_FUNCTION_REF_CALL
 * @expect compile-pass
 * @section 7.4.1
 * @design 函数引用调用：验证通过函数引用可以正常调用原函数
 * @note 正向用例：验证 func(x) 语法调用函数引用编译通过
 */
function twice(n: number): number {
  return n * 2
}

let func = twice
let result = func(21)  // 通过引用调用函数
