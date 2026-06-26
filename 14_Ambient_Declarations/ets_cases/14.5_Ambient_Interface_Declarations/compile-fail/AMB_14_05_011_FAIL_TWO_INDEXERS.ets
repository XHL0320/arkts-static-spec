/**
 * @id AMB_14_05_011_FAIL_TWO_INDEXERS
 * @expect compile-fail
 * @section 14.5
 * @design ambient interface 中两个 indexer，违反"仅允许一个"规则
 * @note 反向用例：interface 中两个 indexer 应产生编译时错误
 */
declare interface Bad {
  [index: number]: number
  [index: string]: string
}
