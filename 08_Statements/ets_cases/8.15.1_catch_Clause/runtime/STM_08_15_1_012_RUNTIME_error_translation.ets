/**
 * @id STM_08_15_1_012_RUNTIME_error_translation
 * @expect runtime
 * @section 8.15.1
 * @design 验证 catch 块捕获错误后抛出不同类型的错误（错误转换），外层 catch 能正确捕获转换后的新版错误。
 * @note 运行时测试：内层 try 抛出 RangeError，catch 转换后抛出新的 TypeError，外层 catch 应捕获 TypeError 并验证消息。
 */
function main(): void {
    let translated: boolean = false;
    try {
        try {
            throw new RangeError("low-level range failure");
        } catch (e) {
            if (e instanceof RangeError) {
                throw new TypeError("translated: " + e.message);
            }
        }
    } catch (outer) {
        if (outer instanceof TypeError) {
            if (outer.message == "translated: low-level range failure") {
                translated = true;
            }
        }
    }
    if (!translated) {
        throw new Error("error translation failed: expected TypeError");
    }
    console.log("verified");
}
