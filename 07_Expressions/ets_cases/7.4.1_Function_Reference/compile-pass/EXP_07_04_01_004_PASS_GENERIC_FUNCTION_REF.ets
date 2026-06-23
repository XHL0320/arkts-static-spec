/**
 * @id EXP_07_04_01_004_PASS_GENERIC_FUNCTION_REF
 * @expect compile-pass
 * @section 7.4.1
 * @design 泛型函数引用：验证泛型函数引用必须带显式类型参数时才编译通过
 * @note 正向用例：验证 gen<string> 带显式类型参数的泛型函数引用编译通过
 */
function gen<T>(x: T): T {
  return x
}

let a = gen<string>  // OK，带显式类型参数的泛型函数引用
