/**
 * @id CCY_16_06_04_002_PASS_promise_reject_unhandled
 * @expect compile-pass
 * @section 16.6.4
 * @design Promise 拒绝后无 await 也无 .catch() 回调（编译通过，运行时为未处理拒绝）
 * @note 正向用例：验证 rejected Promise 未注册回调语法通过编译
 *       runtime 行为：无 await 无 .catch() 视为未处理拒绝
 */
function main(): void {
    let p: Promise<never> = Promise.reject(new Error("fail"));
}
