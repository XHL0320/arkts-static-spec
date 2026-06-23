/**
 * @id EXP_07_20_023_FAIL_MIXED_COMPLEX
 * @expect compile-fail
 * @section 7.20
 * @design 验证 n ?? a || b && c（?? 与 || 和 && 复杂混用无括号）报编译时错误。
 *         spec 规定 ?? 不能与 || 或 && 无括号混用。
 * @note 反向用例：?? 与 || && 复杂混用应报编译时错误
 */
function foo(n: boolean | undefined, a: boolean, b: boolean, c: boolean): void {
    let x = n ?? a || b && c;  // error: '??' and '||'/'&&' cannot be mixed without parentheses
}
