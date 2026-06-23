/**
 * @id CLS_09_05_2_007_FAIL_PROTECTED_CTOR_INSTANTIATION
 * @expect compile-fail
 * @section 9.5.2
 * @design protected构造器外部实例化导致编译错误
 * @note 反向用例：spec规定protected构造器只能在类内部和子类中调用，
 *       外部代码尝试new含protected构造器的类应产生compile-time error
 *       Spec依据：spec §9.5.2 protected成员仅在类声明体内和子类中可访问
 */
class ProtectedCtor007 {
  protected constructor() {}
}
class SubProtectedCtor extends ProtectedCtor007 {
  constructor() {
    super()
  }
}
function useProtectedCtor(): void {
  let c = new ProtectedCtor007()
}
