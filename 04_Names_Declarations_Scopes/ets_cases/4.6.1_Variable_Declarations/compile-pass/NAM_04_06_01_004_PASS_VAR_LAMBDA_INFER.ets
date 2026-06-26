/**
 * @id NAM_04_06_01_004_PASS_VAR_LAMBDA_INFER
 * @expect compile-pass
 * @section 4.6.1
 * @design lambda类型推断
 * @note 正向用例：验证 lambda 表达式类型推断
 */
let f = (p: number): number => p + 1;
