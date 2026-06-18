/**
 * @id STM_08_14_014_RUNTIME_throw_from_nested_function
 * @expect runtime
 * @section 8.14
 * @design 测试在独立函数中throw，验证异常沿调用栈传播到外层try-catch
 * @note top-level函数内部throw，由调用方的try-catch捕获，验证跨函数异常传播
 */

function innerFunctionThatThrows(): void {
    throw new Error("exception from inner function");
}

function main(): void {
    let caught: boolean = false;
    try {
        innerFunctionThatThrows();
    } catch (e) {
        caught = true;
    }
    if (!caught) {
        throw new Error("throw_from_nested_function: expected nested throw to be caught");
    }
    console.log("verified");
}
