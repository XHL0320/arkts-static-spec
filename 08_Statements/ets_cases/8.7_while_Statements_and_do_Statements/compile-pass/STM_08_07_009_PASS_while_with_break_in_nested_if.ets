/**
 * @id STM_08_07_009_PASS_while_with_break_in_nested_if
 * @expect compile-pass
 * @section 8.7
 * @design while 循环内嵌套 if 语句中使用 break，验证 break 跳出 while 循环 — STATEMENTS.md §8.7
 * @note while 体内可包含 if 语句，if 内可使用 break 提前退出循环
 */
function testWhileBreakInIf(): void {
    let i: int = 0;
    while (i < 10) {
        i = i + 1;
        if (i == 5) {
            break;
        }
    }
    let flag: boolean = true;
    let count: int = 0;
    while (flag) {
        count = count + 1;
        if (count >= 3) {
            break;
        }
    }
}
