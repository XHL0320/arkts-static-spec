/**
 * @id CCY_16_06_03_001_PASS_promise_then
 * @expect compile-pass
 * @section 16.6.3
 * @design 验证 Promise.then() 回调注册与链式调用
 * @note 正向用例：Promise resolve 后执行 then 回调
 */
let promise: Promise<string> = new Promise((resolve: Function) => {
    resolve('Hello Promise');
});

promise.then((value: string) => {
    console.info('Resolved: ' + value);
});
