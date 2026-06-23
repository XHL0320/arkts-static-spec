/**
 * @id CCY_16_03_04_003_PASS_await_optional_chaining
 * @expect compile-pass
 * @section 16.3.4
 * @design await 可选链操作
 * @note 正向用例：验证 await 可选链操作在 async 函数中通过编译
 */
class SomeClass {
    method(): SomeClass | undefined {
        return this;
    }
    async asyncMethod(): Promise<string> {
        return "hello";
    }
}
async function f(): Promise<void> {
    let v3: string | undefined = await (new SomeClass()).method()?.asyncMethod();
}
