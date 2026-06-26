/**
 * @id CCY_16_03_05_001_PASS_promise_resolve
 * @expect compile-pass
 * @section 16.3.5
 * @design Promise.resolve 静态方法
 * @note 正向用例：验证 Promise.resolve 创建已决议 Promise 通过编译
 */
async function foo(): Promise<void> {
    let p: Promise<number> = Promise.resolve<number>(42);
    let v: number = await p;
    console.log(v);
}
