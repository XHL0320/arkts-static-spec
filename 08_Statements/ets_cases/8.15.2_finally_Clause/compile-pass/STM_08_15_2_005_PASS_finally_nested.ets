/**
 * @id STM_08_15_2_005_PASS_finally_nested
 * @expect compile-pass
 * @section 8.15.2
 * @design 测试嵌套的try-catch-finally结构：外层try中包含内层try-catch-finally，内层finally执行后外层finally仍执行。验证多层嵌套场景下finally子句的编译正确性。
 * @note 正向测试：嵌套finally的复杂场景，验证编译器对多层作用域的处理
 */
function testNestedFinally(): void {
    let outerResult: number = 0;
    let innerResult: number = 0;
    try {
        try {
            innerResult = 1;
        } catch (e) {
            innerResult = 2;
        } finally {
            innerResult = 3;
        }
        outerResult = 10;
    } finally {
        outerResult = outerResult + innerResult;
    }
    if (innerResult != 3 || outerResult != 13) {
        console.log("FAIL: inner=" + innerResult + " outer=" + outerResult);
    }
}
