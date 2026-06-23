/**
 * @id CCY_16_03_05_004_PASS_promise_reject
 * @expect compile-pass
 * @section 16.3.5
 * @design Promise.reject 静态方法
 * @note 正向用例：验证 Promise.reject 创建已拒绝 Promise 通过编译
 */
function main(): void {
    let p: Promise<never> = Promise.reject(new Error("fail"));
}
