/**
 * @id AMB_14_04_01_008_FAIL_NON_AMBIENT_INDEXER
 * @expect compile-fail
 * @section 14.4.1
 * @design 非 ambient class 中使用 indexer 声明（非 declare class），违反"仅在 ambient 上下文"规则
 * @note 反向用例：非 ambient class 中的 indexer 应产生编译时错误
 */
class NonAmbient {
  [index: number]: number
}
