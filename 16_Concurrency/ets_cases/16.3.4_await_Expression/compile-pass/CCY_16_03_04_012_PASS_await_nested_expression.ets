/**
 * @id CCY_16_03_04_012_PASS_await_nested_expression
 * @expect compile-pass
 * @section 16.3.4
 * @design 嵌套 await 表达式
 * @note 正向用例：验证 await 表达式嵌套通过编译
 */
async function outer(): Promise<number> {
    let v: number = await (await Promise.resolve(Promise.resolve(42)));
    return v;
}
