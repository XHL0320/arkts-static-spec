/**
 * @id AMB_14_04_01_001_PASS_NUMBER_INDEX
 * @expect compile-pass
 * @section 14.4.1
 * @design declare class 中 ambient indexer，[index: number]: number
 * @note 正向用例：验证 number 类型索引编译通过
 */
declare class C {
  [index: number]: number
}
