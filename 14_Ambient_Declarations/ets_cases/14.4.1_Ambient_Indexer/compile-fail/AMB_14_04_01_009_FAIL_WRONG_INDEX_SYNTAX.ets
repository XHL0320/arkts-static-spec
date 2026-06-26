/**
 * @id AMB_14_04_01_009_FAIL_WRONG_INDEX_SYNTAX
 * @expect compile-fail
 * @section 14.4.1
 * @design ambient indexer 缺少返回类型，违反语法规则
 * @note 反向用例：indexer 缺少返回类型应产生编译时错误
 */
declare class BadSyntax {
  [index: number]
}
