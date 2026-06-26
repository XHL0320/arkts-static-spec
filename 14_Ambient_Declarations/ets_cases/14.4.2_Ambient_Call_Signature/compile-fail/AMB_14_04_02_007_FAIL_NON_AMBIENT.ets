/**
 * @id AMB_14_04_02_007_FAIL_NON_AMBIENT
 * @expect compile-fail
 * @section 14.4.2
 * @design 非 ambient class 中使用 call signature，违反"仅在 ambient 上下文"规则
 * @note 反向用例：非 ambient class 中的 call signature 应产生编译时错误
 */
class NonAmbient {
  (x: number): boolean
}
