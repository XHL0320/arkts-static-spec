/**
 * @id AMB_14_04_03_005_FAIL_NON_AMBIENT_ITERABLE
 * @expect compile-fail
 * @section 14.4.3
 * @design 非 ambient class 中使用 iterable 声明，违反"仅在 ambient 上下文"规则
 * @note 反向用例：非 ambient class 中的 iterable 应产生编译时错误
 */
class NonAmbient {
  [Symbol.iterator](): Iterator<int>
}
