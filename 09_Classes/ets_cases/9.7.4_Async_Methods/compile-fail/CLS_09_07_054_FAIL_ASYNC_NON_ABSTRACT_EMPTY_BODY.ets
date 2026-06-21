/**
 * @id CLS_09_07_054_FAIL_ASYNC_NON_ABSTRACT_EMPTY_BODY
 * @expect compile-fail
 * @section 9.7.4
 * @design 非 abstract 非 native 的 async 方法必须有方法体
 * @note 编译错误：方法体不能为空
 */
class BadAsync054 {
  async fetch(): Promise<void> // 编译错误：缺少方法体
}
