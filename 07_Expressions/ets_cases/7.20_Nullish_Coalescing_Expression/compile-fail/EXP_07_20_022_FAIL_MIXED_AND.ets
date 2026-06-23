/**
 * @id EXP_07_20_022_FAIL_MIXED_AND
 * @expect compile-fail
 * @section 7.20
 * @design 验证 n ?? a && b（?? 和 && 无括号混用）报编译时错误。
 *         spec 规定 ?? 和 && 不能无括号混用。
 * @note 反向用例：?? 与 && 无括号应报编译时错误
 */
function foo(n: boolean | undefined, a: boolean, b: boolean): void {
    let x = n ?? a && b;  // error: '??' and '&&' cannot be mixed without parentheses
}
