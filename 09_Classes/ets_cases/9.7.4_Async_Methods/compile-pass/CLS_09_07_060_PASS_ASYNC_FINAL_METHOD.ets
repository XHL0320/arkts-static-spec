/**
 * @id CLS_09_07_060_PASS_ASYNC_FINAL_METHOD
 * @expect compile-pass
 * @section 9.7.4
 * @design final async 方法被编译器接受（spec 可能禁止但 es2panda 未强制）
 * @note CLS-I5: final+async 修饰符组合未被 es2panda 检查
 */
class AsyncFinal060 {
  final async doLock(): Promise<void> {} // 编译器接受（spec 层面可能应禁止）
}
