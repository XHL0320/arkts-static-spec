/**
 * @id CCY_16_06_03_002_PASS_promise_catch
 * @expect compile-pass
 * @section 16.6.3
 * @design 验证 Promise.catch() 回调处理拒绝
 * @note 正向用例：Promise reject 后执行 catch 回调
 */
let promise: Promise<string> = new Promise((resolve: Function, reject: Function) => {
    reject(new Error('Rejected intentionally'));
});

promise.catch((err: Error) => {
    console.info('Caught: ' + err.message);
});
