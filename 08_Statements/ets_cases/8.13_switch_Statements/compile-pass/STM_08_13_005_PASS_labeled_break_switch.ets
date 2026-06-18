/**
 * @id STM_08_13_005_PASS_labeled_break_switch
 * @expect compile-pass
 * @section 8.13
 * @design 带标签标识符的switch，break outer跳出嵌套switch到外层switch，验证标识符break
 * @note 使用outer:为外部switch添加标签，内层嵌套switch中使用break outer跳出外层switch
 */
function testLabeledBreakSwitch(): void {
    let x: int = 1;
    let y: int = 2;
    let result: string = "";
    outer: switch (x) {
        case 1:
            switch (y) {
                case 2:
                    result = "inner_break_outer";
                    break outer;
                default:
                    result = "inner_default";
                    break;
            }
            result = "should_not_reach";
            break;
        default:
            result = "outer_default";
            break;
    }
}
