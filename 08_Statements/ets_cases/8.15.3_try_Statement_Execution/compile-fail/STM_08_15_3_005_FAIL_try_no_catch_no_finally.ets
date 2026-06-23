/**
 * @id STM_08_15_3_005_FAIL_try_no_catch_no_finally
 * @expect compile-fail
 * @section 8.15.3
 * @design 验证 try 块既没有 catch 子句也没有 finally 子句时产生编译错误。规范要求 try 语句必须至少包含 catch 或 finally。
 * @note 反向测试：try 块后直接结束，无 catch 也无 finally，编译器应报错。
 */
function testTryNoCatchNoFinally(): void {
    let x: int = 0;
    try {
        x = 1;
    }
}
