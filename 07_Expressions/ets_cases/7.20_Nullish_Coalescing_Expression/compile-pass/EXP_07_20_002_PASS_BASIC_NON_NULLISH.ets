/**
 * @id EXP_07_20_002_PASS_BASIC_NON_NULLISH
 * @expect compile-pass
 * @section 7.20
 * @design 验证非 nullish 变量 ?? default 编译通过。
 *         LHS 非 nullish，表达式取 LHS。
 * @note 正向用例：非 nullish 变量 LHS 编译通过
 */
function test_basic_non_nullish(): void {
    let v: string = "value";
    let x: string = v ?? "default";
}
