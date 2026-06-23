/**
 * @id EXP_07_04_01_006_FAIL_GENERIC_REF_NO_ARGS
 * @expect compile-fail
 * @section 7.4.1
 * @design 泛型函数引用无类型参数：验证无显式类型参数的泛型函数引用应产生编译时错误
 * @note 反向用例：gen 是泛型函数，不带类型参数的引用应报编译时错误
 */
function gen<T>(x: T): T {
  return x
}

let b = gen  // Compile-time error: no explicit type arguments for generic function reference
