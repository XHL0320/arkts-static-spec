/**
 * @id CCY_16_03_04_005_PASS_await_multiple
 * @expect compile-pass
 * @section 16.3.4
 * @design 连续 await 多个表达式
 * @note 正向用例：验证多个 await 表达式顺序执行通过编译
 */
async function f(): Promise<void> {
    let a: number = await 1;
    let b: number = await 2;
    console.log(a + b);
}
