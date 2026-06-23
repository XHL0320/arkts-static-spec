/**
 * @id STM_08_15_1_011_RUNTIME_rethrow
 * @expect runtime
 * @section 8.15.1
 * @design 验证 catch 块内重新抛出 Error 对象后，外层 catch 正确捕获并处理该错误。
 * @note 运行时测试：内层 catch 捕获后重新抛出，外层 catch 捕获并验证 error.message 值正确。
 */
function main(): void {
    let outerCaught: boolean = false;
    let outerMsg: string = "";
    try {
        try {
            throw new Error("rethrow message");
        } catch (inner) {
            if (inner.message == "rethrow message") {
                throw inner;
            }
        }
    } catch (outer) {
        outerCaught = true;
        outerMsg = outer.message;
    }
    if (outerCaught != true) {
        throw new Error("outer catch was not executed during rethrow");
    }
    if (outerMsg != "rethrow message") {
        throw new Error("rethrow message mismatch: " + outerMsg);
    }
    console.log("verified");
}
