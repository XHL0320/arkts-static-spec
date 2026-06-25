/**
 * @id EXP2_CtorOverload_GenericClass_pass
 * @expect compile-pass
 * @section 17.9.5
 * @design 泛型类中的 overload constructor
 * @note 正向用例：泛型类中声明 constructor overload
 */
class Wrapper2<T> {
  private value: T | null
  constructor empty() { this.value = null }
  constructor withValue(v: T) { this.value = v }
  overload constructor { empty, withValue }
}
