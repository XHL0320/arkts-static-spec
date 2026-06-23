/**
 * @id STM_08_15_1_004_PASS_catch_rethrow
 * @expect compile-pass
 * @section 8.15.1
 * @design 验证 catch 块内可以重新抛出捕获的 Error 对象，由外层调用者处理。
 * @note 正向测试：catch 块中通过 throw e 重新抛出错误，Error 对象传递到外层。
 */
function testCatchRethrow(): void {
    try {
        try {
            throw new Error("inner error");
        } catch (e) {
            if (e.message.length > 0) {
                throw e;
            }
        }
    } catch (outer) {
        let msg: string = outer.message;
    }
}
