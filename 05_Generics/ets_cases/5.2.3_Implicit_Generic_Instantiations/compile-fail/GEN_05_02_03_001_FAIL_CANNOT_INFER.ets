/**
 * @id GEN_05_02_03_001_FAIL_CANNOT_INFER
 * @expect compile-fail
 * @section 5.3
 * @design 无法推断类型参数
 * @note 反向用例：验证类型参数无法从上下文推断
 */
function bar<T>(p: number): void {}
bar(1);
