/**
 * @id CCY_16_03_04_013_PASS_await_awaited_type
 * @expect compile-pass
 * @section 16.3.4
 * @design Awaited<T> 结果类型编译验证
 * @note 正向用例：验证 await 结果类型为 Awaited<T> 即解包后的类型
 */
async function test(): Promise<string> {
    let v: string = await Promise.resolve("hello");
    return v;
}
