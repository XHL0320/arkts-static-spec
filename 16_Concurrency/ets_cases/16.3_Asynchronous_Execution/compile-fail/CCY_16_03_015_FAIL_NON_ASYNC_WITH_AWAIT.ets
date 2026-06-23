/**
 * @id CCY_16_03_015_FAIL_NON_ASYNC_WITH_AWAIT
 * @expect compile-fail
 * @section 16.3
 * @design 非 async 函数含 await
 * @note 反向用例：验证非 async 函数体内含 await 应编译错误
 */
function foo(): void {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => { resolve(42); });
    let x: number = await p;
}
