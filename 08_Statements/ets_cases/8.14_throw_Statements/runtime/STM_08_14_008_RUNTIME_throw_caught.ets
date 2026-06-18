/**
 * @id STM_08_14_008_RUNTIME_throw_caught
 * @expect runtime
 * @section 8.14
 * @design 测试throw被try-catch捕获，验证异常传播到最近catch块
 * @note 在try块中抛出Error，由catch正常捕获，验证caught标志位为true
 */

function main(): void {
    let caught: boolean = false;
    try {
        throw new Error("caught exception");
    } catch (e) {
        caught = true;
    }
    if (!caught) {
        throw new Error("throw_caught: expected exception to be caught");
    }
    console.log("verified");
}
