/**
 * @id STM_08_10_005_PASS_break_switch
 * @expect compile-pass
 * @section 8.10
 * @design 在switch语句中使用break跳出case块，防止fallthrough
 * @note break in switch exits the switch block, preventing fallthrough
 */
function testBreakSwitch(): void {
    let x: int = 2;
    let result: string = "";
    switch (x) {
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
