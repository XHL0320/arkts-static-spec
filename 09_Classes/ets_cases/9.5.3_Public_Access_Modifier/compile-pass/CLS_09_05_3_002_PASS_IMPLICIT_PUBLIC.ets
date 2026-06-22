/**
 * @id CLS_09_05_3_002_PASS_IMPLICIT_PUBLIC
 * @expect compile-pass
 * @section 9.5.3
 * @design 无修饰符默认public编译通过
 * @note 正向用例：无修饰符成员隐式为public
 */
class ImplicitPub {
  field: int = 0
  method(): void {}
}
function useImplicit(i: ImplicitPub): void {
  i.field = 1
  i.method()
}
