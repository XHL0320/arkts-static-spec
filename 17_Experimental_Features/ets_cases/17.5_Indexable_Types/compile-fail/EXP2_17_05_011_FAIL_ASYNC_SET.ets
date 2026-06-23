/**
 * @id EXP2_17_05_011_FAIL_ASYNC_SET
 * @expect compile-fail
 * @section 17.5
 * @design $_set 方法标记为 async 应产生编译时错误
 * @note 反向用例：验证 async $_set 被编译器拒绝
 */
class AsyncSetIndexable {
  async $_set(index: number, value: string): Promise<void> {
    // async body
  }
}
