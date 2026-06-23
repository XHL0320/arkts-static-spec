/**
 * @id CCY_16_06_03_090_FAIL_promise_then_wrong_cb
 * @expect compile-fail
 * @section 16.6.3
 * @design Promise.then 回调类型错误
 * @note 反向用例：验证 Promise.then 回调类型不匹配应编译报错
 */
function main(): void {
    let p: Promise<number> = Promise.resolve<number>(42);
    p.then((v: string): void => {});
}
