/**
 * @id CCY_16_06_04_090_FAIL_promise_unhandled_type
 * @expect compile-fail
 * @section 16.6.4
 * @design Promise 拒绝处理类型错误
 * @note 反向用例：验证 Promise.catch 回调类型不匹配应编译报错
 */
function main(): void {
    let p: Promise<number> = Promise.reject<number>(new Error("fail"));
    p.catch((v: number): string => { return "ok"; });
}
