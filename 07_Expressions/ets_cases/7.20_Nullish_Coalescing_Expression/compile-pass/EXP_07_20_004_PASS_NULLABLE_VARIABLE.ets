/**
 * @id EXP_07_20_004_PASS_NULLABLE_VARIABLE
 * @expect compile-pass
 * @section 7.20
 * @design 验证 T | undefined 和 T | null 类型变量 ?? default 编译通过。
 *         验证类型推导为 normalized union（非 nullish 变体 | RHS 类型）。
 * @note 正向用例：可空变量 ?? default
 */
function test_nullable_undefined(): void {
    let a: string | undefined = undefined;
    let x: string = a ?? "fallback";
}

function test_nullable_null(): void {
    let b: string | null = null;
    let y: string = b ?? "fallback";
}
