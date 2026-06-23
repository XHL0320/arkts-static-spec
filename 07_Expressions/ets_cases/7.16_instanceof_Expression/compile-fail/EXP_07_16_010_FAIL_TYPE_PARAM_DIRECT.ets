/**
 * @id EXP_07_16_010_FAIL_TYPE_PARAM_DIRECT
 * @expect compile-fail
 * @section 7.16
 * @design 验证类型参数 T 直接作为 instanceof 操作数编译时错误
 * @note 反向用例：类型参数不会被保留到 undefined，编译时错误
 */
class A<T> {
  foo(x: T): boolean {
    return x instanceof T
  }
}
