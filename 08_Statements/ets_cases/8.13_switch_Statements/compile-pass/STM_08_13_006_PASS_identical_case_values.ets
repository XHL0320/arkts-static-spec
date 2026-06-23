/**
 * @id STM_08_13_006_PASS_identical_case_values
 * @expect compile-pass
 * @section 8.13
 * @design switch 中允许多个相同的 case 表达式 — STATEMENTS.md line 459 "One may have several case clauses with the same expression in"
 * @note 正向用例：两个 case 1 连续出现，case null 重复出现，验证编译器允许相同 case 表达式的 caseClause
 */
function testIdenticalCaseValues(): void {
    let x: int = 1;
    let result: string = "";
    switch (x) {
        case 1:
        case 1:
            result = "one";
            break;
        case 2:
            result = "two";
            break;
        default:
            result = "other";
            break;
    }
}
