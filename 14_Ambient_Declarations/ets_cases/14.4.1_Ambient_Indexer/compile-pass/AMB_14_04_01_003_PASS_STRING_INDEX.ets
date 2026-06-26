/**
 * @id AMB_14_04_01_003_PASS_STRING_INDEX
 * @expect compile-pass
 * @section 14.4.1
 * @design declare class 中 ambient indexer，[index: string]: string
 * @note 正向用例：验证 string 类型索引编译通过
 */
declare class E {
  [index: string]: string
}
