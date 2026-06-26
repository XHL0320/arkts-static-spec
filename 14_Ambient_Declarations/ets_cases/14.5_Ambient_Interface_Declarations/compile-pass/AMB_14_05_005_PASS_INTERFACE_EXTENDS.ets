/**
 * @id AMB_14_05_005_PASS_INTERFACE_EXTENDS
 * @expect compile-pass
 * @section 14.5
 * @design declare interface 带有 extends 继承子句
 * @note 正向用例：验证 ambient interface extends 编译通过
 */
declare interface Base {
  baseField: int
}
declare interface Derived extends Base {
  derivedField: string
}
