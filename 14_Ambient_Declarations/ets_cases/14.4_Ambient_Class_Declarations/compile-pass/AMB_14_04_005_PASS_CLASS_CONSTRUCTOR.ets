/**
 * @id AMB_14_04_005_PASS_CLASS_CONSTRUCTOR
 * @expect compile-pass
 * @section 14.4
 * @design declare class 含构造器声明（无体）
 * @note 正向用例：验证 ambient class 构造器声明编译通过
 */
declare class WithCtor {
  constructor(x: int)
}
