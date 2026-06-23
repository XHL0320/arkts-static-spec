/**
 * @id SEM_15_01_07_100_FAIL_TYPE_PARAM_LHS_INFERENCE
 * @expect compile-fail
 * @section 15.1.7
 * @design 验证类型参数作为 LHS 时不提供推断信息
 * @note 反向用例：当 LHS 为类型参数 T 时，RHS 应按独立表达式推断，不应推断为 T
 */
function test<T>(value: T): void {
    let x: T;
    x = 100;
}
function main(): void {
    test<int>(42);
}
