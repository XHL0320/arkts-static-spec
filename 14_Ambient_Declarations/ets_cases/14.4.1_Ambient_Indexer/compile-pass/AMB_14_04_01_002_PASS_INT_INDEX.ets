/**
 * @id AMB_14_04_01_002_PASS_INT_INDEX
 * @expect compile-pass
 * @section 14.4.1
 * @design declare class 中 ambient indexer，[index: int]: C
 * @note 正向用例：验证 int 类型索引编译通过
 */
declare class C {
  [index: int]: C
}
