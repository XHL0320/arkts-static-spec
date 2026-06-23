/**
 * @id SEM_15_11_7_003_PASS_wide_hides_narrow
 * @expect compile-pass
 * @section 15.11.7
 * @design 宽类型隐藏窄类型
 * @note 正向用例
 */
function pick(x: int | string): string { return "wide"; }
function pick(x: int): string { return "narrow"; }
function main(): void {
    console.log(pick(1));
}
