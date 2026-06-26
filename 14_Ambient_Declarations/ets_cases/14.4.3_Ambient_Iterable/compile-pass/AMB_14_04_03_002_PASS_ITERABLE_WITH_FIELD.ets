/**
 * @id AMB_14_04_03_002_PASS_ITERABLE_WITH_FIELD
 * @expect compile-pass
 * @section 14.4.3
 * @design declare class 含 iterable 和其他 ambient 成员
 * @note 正向用例：验证 iterable 与其他成员共存编译通过
 */
declare class D {
  [Symbol.iterator](): Iterator<string>
  field: int
}
