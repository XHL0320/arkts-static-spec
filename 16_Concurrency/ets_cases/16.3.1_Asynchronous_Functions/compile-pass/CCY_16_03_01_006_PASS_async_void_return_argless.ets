/**
 * @id CCY_16_03_01_006_PASS_async_void_return_argless
 * @expect compile-pass
 * @section 16.3.1
 * @design async 函数 Promise<void> 中无参数 return 语句
 * @note 正向用例：验证 spec "If T has void or undefined type, argumentless return is allowed" 编译通过
 */
async function logAndExit(): Promise<void> {
    console.log("done");
    return;
}
