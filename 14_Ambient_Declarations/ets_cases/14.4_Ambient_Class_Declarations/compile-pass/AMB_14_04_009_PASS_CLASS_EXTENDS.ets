/**
 * @id AMB_14_04_009_PASS_CLASS_EXTENDS
 * @expect compile-pass
 * @section 14.4
 * @design declare class 带有 extends 继承子句
 * @note 正向用例：验证 ambient class extends 编译通过
 */
declare class Base {
  baseField: int
}
declare class Derived extends Base {
  derivedField: string
}
