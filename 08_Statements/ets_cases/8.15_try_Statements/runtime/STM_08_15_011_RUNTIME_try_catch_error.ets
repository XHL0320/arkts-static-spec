/**
 * @id STM_08_15_011_RUNTIME_try_catch_error
 * @expect runtime
 * @section 8.15
 * @design 验证 try 块抛出异常时 catch 子句捕获并处理
 * @note try 块抛出错误后控制权转移到 catch 子句，catch 应被正确执行
 */
function main(): void {
    let result: int = 0;
    try {
        throw new Error("test error");
        result = 100;
    } catch (e) {
        result = 200;
    }
    if (result != 200) {
        throw new Error("Error thrown but catch was not executed correctly");
    }
    console.log("verified");
}
