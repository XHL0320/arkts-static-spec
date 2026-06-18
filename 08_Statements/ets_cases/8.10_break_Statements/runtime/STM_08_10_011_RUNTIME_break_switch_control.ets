/**
 * @id STM_08_10_011_RUNTIME_break_switch_control
 * @expect runtime
 * @section 8.10
 * @design 验证break在switch语句中能正确跳出case块，防止fallthrough到下一个case
 * @note Verify break in switch prevents fallthrough between case clauses
 */
function main(): void {
    let x: int = 2;
    let result: string = "";
    switch (x) {
        case 1:
            result = "one";
            break;
        case 2:
            result = "two";
            break;
        case 3:
            result = "three";
            break;
        default:
            result = "default";
            break;
    }
    if (result != "two") {
        throw new Error("Expected result 'two', got '" + result + "'");
    }
    console.log("verified");
}
