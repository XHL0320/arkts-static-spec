/**
 * @id AMB_14_04_02_005_PASS_WITH_OTHER_MEMBERS
 * @expect compile-pass
 * @section 14.4.2
 * @design declare class 含 call signature 和其他 ambient 成员
 * @note 正向用例：验证 call signature 与其他成员共存编译通过
 */
declare class C {
  field: int
  (x: string): void
  method(): void
}
