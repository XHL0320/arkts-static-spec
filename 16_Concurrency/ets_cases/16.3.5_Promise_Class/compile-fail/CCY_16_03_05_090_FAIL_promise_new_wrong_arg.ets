/**
 * @id CCY_16_03_05_090_FAIL_promise_new_wrong_arg
 * @expect compile-fail
 * @section 16.3.5
 * @design Promise 构造参数错误
 * @note 反向用例：验证 Promise 构造参数类型错误应编译报错
 */
function main(): void {
    let p: Promise<number> = new Promise<number>(42);
}
