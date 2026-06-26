/**
 * @id AMB_14_04_01_006_PASS_CLASS_WITH_OTHER_MEMBERS
 * @expect compile-pass
 * @section 14.4.1
 * @design declare class 含 indexer 和字段（indexer 在前）
 * @note 正向用例：验证 indexer 与字段共存编译通过
 */
declare class H {
  [index: string]: int
  field: int
}
