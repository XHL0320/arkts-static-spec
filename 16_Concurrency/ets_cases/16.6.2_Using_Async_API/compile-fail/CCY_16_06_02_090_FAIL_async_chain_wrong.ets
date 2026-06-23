/**
 * @id CCY_16_06_02_090_FAIL_async_chain_wrong
 * @expect compile-fail
 * @section 16.6.2
 * @design 非 async 函数中错误使用 async 返回值
 * @note 反向用例：验证非 async 函数中 await 调用应编译报错
 */
async function getValue(): Promise<number> {
    return 42;
}
function caller(): void {
    let v: number = getValue();
}
