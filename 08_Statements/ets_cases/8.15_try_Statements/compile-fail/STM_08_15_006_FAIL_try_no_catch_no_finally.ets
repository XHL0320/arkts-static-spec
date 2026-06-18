/**
 * @id STM_08_15_006_FAIL_try_no_catch_no_finally
 * @expect compile-fail
 * @section 8.15
 * @design 验证 try 块没有 catch 也没有 finally 时产生编译错误
 * @note 规范要求 try 语句必须包含 catch 子句或 finally 子句（或两者），否则编译错误
 */
function testTryNoCatchNoFinally(): void {
    let x: int = 0;
    try {
        x = 1;
    }
}
