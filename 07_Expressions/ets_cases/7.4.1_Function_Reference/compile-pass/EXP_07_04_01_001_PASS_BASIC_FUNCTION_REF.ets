/**
 * @id EXP_07_04_01_001_PASS_BASIC_FUNCTION_REF
 * @expect compile-pass
 * @section 7.4.1
 * @design 基本函数引用：验证对声明函数的引用编译通过，引用的类型由函数签名推导
 * @note 正向用例：验证函数引用基本语法编译通过，func 类型自动推导为函数类型
 */
function foo(n: number): string {
  return n.toString()
}

let func = foo  // 函数引用，类型推导为 (n: number) => string
