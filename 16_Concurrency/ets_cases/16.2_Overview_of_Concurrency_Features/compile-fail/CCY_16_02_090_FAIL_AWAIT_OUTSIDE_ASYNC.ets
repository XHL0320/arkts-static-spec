/**
 * @id CCY_16_02_090_FAIL_AWAIT_OUTSIDE_ASYNC
 * @expect compile-fail
 * @section 16.2
 * @design await 必须在 async 函数内使用
 * @note 反向用例：验证非 async 函数内使用 await 编译报错
 */
function syncFunc(): void {
    let p: Promise<number> = new Promise<number>(() => {});
    let v: number = await p;
}
