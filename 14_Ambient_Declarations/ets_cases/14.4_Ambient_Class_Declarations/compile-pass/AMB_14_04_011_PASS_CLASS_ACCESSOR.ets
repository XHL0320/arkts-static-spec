/**
 * @id AMB_14_04_011_PASS_CLASS_ACCESSOR
 * @expect compile-pass
 * @section 14.4
 * @design declare class 含 get/set 访问器声明（无体）
 * @note 正向用例：验证 ambient class 访问器声明编译通过
 */
declare class WithAccessor {
  get name(): string
  set name(val: string)
}
