/**
 * @id NAM_04_07_06_001_PASS_PARAM_SHADOWING
 * @expect compile-pass
 * @section 4.7.6
 * @design 参数覆盖顶层变量
 * @note 正向用例：验证参数名称覆盖同名顶层变量
 */
let x: number = 1;
function foo(x: string): void {}
