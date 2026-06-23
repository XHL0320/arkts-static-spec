/**
 * @id GEN_05_02_02_003_PASS_EXPLICIT_FUNC_INST
 * @expect compile-pass
 * @section 5.3
 * @design 函数明确实例化
 * @note 正向用例：验证泛型函数明确实例化
 */
function foo<T>(): void {}
foo<string>();
