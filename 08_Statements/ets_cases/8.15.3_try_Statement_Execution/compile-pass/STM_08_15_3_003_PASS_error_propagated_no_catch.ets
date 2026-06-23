/**
 * @id STM_08_15_3_003_PASS_error_propagated_no_catch
 * @expect compile-pass
 * @section 8.15.3
 * @design 验证规则3：try 块抛出异常但没有 catch 子句时，异常传播到外围作用域。try-finally 结构编译通过。
 * @note 正向测试：try 块抛出异常，无 catch 子句，仅有 finally，异常将在运行时传播。编译层面应通过。
 */
function testErrorPropagatedNoCatch(): void {
    let x: int = 0;
    try {
        throw new Error("propagated error");
    } finally {
        x = 1;
    }
}
