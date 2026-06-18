/**
 * @id STM_08_15_010_RUNTIME_try_catch_no_error
 * @expect runtime
 * @section 8.15
 * @design 验证 try 块未抛出异常时 catch 子句不执行
 * @note try 块正常完成则 catch 不执行，结果应为 try 块中的赋值
 */
function main(): void {
    let result: int = 0;
    try {
        result = 100;
    } catch (e) {
        result = -1;
    }
    if (result != 100) {
        throw new Error("No error thrown but catch was executed");
    }
    console.log("verified");
}
