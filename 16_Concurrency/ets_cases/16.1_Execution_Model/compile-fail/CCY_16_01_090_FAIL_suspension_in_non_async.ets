/**
 * @id CCY_16_01_090_FAIL_suspension_in_non_async
 * @expect compile-fail
 * @section 16.1
 * @design 非 async 函数中不允许有悬挂点
 * @note 反向用例：await 只能在 async 函数中使用
 */
function foo(): void {
    let p: Promise<number> = new Promise((resolve) => { resolve(1); });
    let v: number = await p;
}
