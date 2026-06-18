/**
 * @id STM_08_15_1_016_PASS_catch_throw_translated_error
 * @expect compile-pass
 * @section 8.15.1
 * @design 验证 catch 块中捕获原始错误后抛出新的不同 Error 类型（错误转换），代码能够通过编译。
 * @note 正向测试：catch 根据 instanceof 判断原始错误类型，构造并抛出新的 TypeError 作为转换后的错误。
 */
function testCatchThrowTranslatedError(): void {
    try {
        throw new RangeError("original error");
    } catch (e) {
        if (e instanceof RangeError) {
            throw new TypeError("translated from: " + e.message);
        }
        throw e;
    }
}
