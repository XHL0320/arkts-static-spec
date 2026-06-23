/**
 * @id EXP2_17_09_05_008_FAIL_TWO_DECLARATIONS
 * @expect compile-fail
 * @section 17.9.5
 * @design 每个类只能有一个显式 constructor overload — 编译错误
 * @note 反向用例：同一个类中声明两个 overload constructor
 */
class DoubleCtor {
  constructor a(a: int) {}
  constructor b(a: string) {}
  overload constructor { a, b }
  overload constructor { a, b }
}
