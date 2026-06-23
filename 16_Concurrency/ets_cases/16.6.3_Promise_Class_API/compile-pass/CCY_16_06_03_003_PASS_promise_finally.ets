/**
 * @id CCY_16_06_03_003_PASS_promise_finally
 * @expect compile-pass
 * @section 16.6.3
 * @design 验证 Promise.finally() 回调在决议后执行
 * @note 正向用例：无论 resolve/reject，finally 都会执行
 */
let promise: Promise<string> = new Promise((resolve: Function) => {
    resolve('Done');
});

promise
    .then((value: string) => {
        console.info('Then: ' + value);
    })
    .finally(() => {
        console.info('Finally executed');
    });
