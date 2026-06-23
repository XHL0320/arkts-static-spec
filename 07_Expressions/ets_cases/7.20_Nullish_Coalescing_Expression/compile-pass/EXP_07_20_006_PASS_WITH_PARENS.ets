/**
 * @id EXP_07_20_006_PASS_WITH_PARENS
 * @expect compile-pass
 * @section 7.20
 * @design 验证 n ?? (a || b) 带括号的 ?? 与 || 混合编译通过。
 *         括号隔离了 || 操作，避免 ?? 与 || 混用错误。
 * @note 正向用例：括号隔离 || 后编译通过
 */
function test_with_parens(): void {
    let n: boolean | undefined = true;
    let a: boolean = false;
    let b: boolean = true;
    let x: boolean = n ?? (a || b);
}
