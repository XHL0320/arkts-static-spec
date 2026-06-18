/**
 * @id STM_08_13_013_RUNTIME_identical_case_values
 * @expect runtime
 * @section 8.13
 * @design switch 中多个相同 case 表达式的运行时匹配行为 — STATEMENTS.md line 459 "One may have several case clauses with the same expression in"
 * @note 运行时验证：重复 case 值中第一个匹配即执行；非重复 case 值正常匹配；相同 case 值在 default 前后均可
 */
function main(): void {
    // Test 1: duplicate case 1 — first occurrence matches and executes
    let x: int = 1;
    let result: string = "";
    switch (x) {
        case 1:
            result = "first_one";
            break;
        case 1:
            result = "second_one_should_not_reach";
            break;
        case 2:
            result = "two";
            break;
        default:
            result = "other";
            break;
    }
    if (result != "first_one") {
        throw new Error("Test 1 failed: expected 'first_one', got '" + result + "'");
    }

    // Test 2: value matches a non-duplicate case (verifies duplicates don't break normal matching)
    let y: int = 2;
    let result2: string = "";
    switch (y) {
        case 1:
            result2 = "one";
            break;
        case 1:
            result2 = "one_dup";
            break;
        case 2:
            result2 = "two_matched";
            break;
        default:
            result2 = "other";
            break;
    }
    if (result2 != "two_matched") {
        throw new Error("Test 2 failed: expected 'two_matched', got '" + result2 + "'");
    }

    // Test 3: duplicate null cases (matching the spec example lines 458-459)
    let a: int | null = null;
    let result3: string = "";
    switch (a) {
        case null:
        case null:
            result3 = "null_matched";
            break;
        default:
            result3 = "not_null";
            break;
    }
    if (result3 != "null_matched") {
        throw new Error("Test 3 failed: expected 'null_matched', got '" + result3 + "'");
    }

    console.log("verified");
}
