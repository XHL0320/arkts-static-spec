/**
 * @id EXP2_17_05_010_FAIL_ASYNC_GET
 * @expect compile-fail
 * @section 17.5
 * @design $_get 方法标记为 async 应产生编译时错误
 * @note 反向用例：验证 async $_get 被编译器拒绝
 */
class AsyncGetIndexable {
  async $_get(index: number): Promise<string> {
    return "value"
  }
}
