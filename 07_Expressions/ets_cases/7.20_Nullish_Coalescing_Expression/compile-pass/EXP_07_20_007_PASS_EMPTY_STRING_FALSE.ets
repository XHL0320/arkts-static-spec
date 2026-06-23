/**
 * @id EXP_07_20_007_PASS_EMPTY_STRING_FALSE
 * @expect compile-pass
 * @section 7.20
 * @design 验证空串变量 ?? "fall" 和 false 变量 ?? true 编译通过。
 *         空串和 false 不是 nullish 值，不会触发取 RHS。
 * @note 正向用例：falsy 但非 nullish 值编译通过
 */
function test_empty_string(): void {
    let s: string = "";
    let x: string = s ?? "fallback";
}

function test_false(): void {
    let f: boolean = false;
    let y: boolean = f ?? true;
}
