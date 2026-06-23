/**
 * @id CCY_16_02_001_PASS_ASYNC_AWAIT
 * @expect compile-pass
 * @section 16.2
 * @design 异步执行原语：async/await/Promise 基本用法
 * @note 正向用例：验证 async 函数、await 表达式、Promise 类型通过编译
 */
async function fetchValue(): Promise<number> {
    return 42;
}
async function main(): Promise<void> {
    let v: number = await fetchValue();
    console.log("" + v);
}
