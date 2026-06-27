/**
 * @id ANN_18_02_011_PASS_ON_PARAMETER
 * @expect compile-pass
 * @section 18.2
 * @design 验证注解可应用于参数
 * @note 正向用例：注解在参数上
 */
@interface NotNull {}

function foo(@NotNull name: string): void {}
