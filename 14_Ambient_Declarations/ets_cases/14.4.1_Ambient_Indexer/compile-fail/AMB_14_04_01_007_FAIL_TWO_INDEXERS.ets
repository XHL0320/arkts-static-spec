/**
 * @id AMB_14_04_01_007_FAIL_TWO_INDEXERS
 * @expect compile-fail
 * @section 14.4.1
 * @design declare class 中声明两个 ambient indexer，违反"仅允许一个"规则
 * @note 反向用例：两个 indexer 应产生编译时错误
 */
declare class Bad {
  [index: number]: number
  [index: string]: string
}
