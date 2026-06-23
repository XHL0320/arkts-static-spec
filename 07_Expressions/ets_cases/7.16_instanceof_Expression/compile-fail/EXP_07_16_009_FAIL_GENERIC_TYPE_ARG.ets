/**
 * @id EXP_07_16_009_FAIL_GENERIC_TYPE_ARG
 * @expect compile-fail
 * @section 7.16
 * @design 验证泛型类型参数 B<T> 不作为实例保留到 undefined，编译时错误
 * @note 反向用例：泛型类型参数在 instanceof 中不被保留到 undefined
 */
class A<T> {}
class B<T> extends A<T> {}

function foo<T>(a: A<T>): void {
  let x = new B<string>()
  console.log(x instanceof B<T>)
}
