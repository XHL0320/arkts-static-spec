/**
 * @id EXP_07_20_005_PASS_CHAINED
 * @expect compile-pass
 * @section 7.20
 * @design 验证多重链式 ?? 表达式 a ?? b ?? c 编译通过。
 *         左结合：先计算 a ?? b，结果再 ?? c。
 * @note 正向用例：链式 ?? 编译通过
 */
function test_chained(): void {
    let a: string | undefined = undefined;
    let b: string | undefined = undefined;
    let x: string = a ?? b ?? "last";
}
