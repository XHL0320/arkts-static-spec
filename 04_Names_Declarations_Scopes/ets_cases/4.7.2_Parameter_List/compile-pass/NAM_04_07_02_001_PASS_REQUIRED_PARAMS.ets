/**
 * @id NAM_04_07_02_001_PASS_REQUIRED_PARAMS
 * @expect compile-pass
 * @section 4.7.2
 * @design 必需参数列表声明通过编译
 * @note 正向用例：函数带有多个必需参数
 */
function foo(a: int, b: string, c: boolean): void {}
