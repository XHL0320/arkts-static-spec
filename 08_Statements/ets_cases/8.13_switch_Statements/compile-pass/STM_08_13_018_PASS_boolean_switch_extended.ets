/**
 * @id STM_08_13_018_PASS_boolean_switch_extended
 * @expect compile-pass
 * @section 8.13
 * @design boolean类型switch表达式的扩展用法：仅含true case无false case（编译通过）、仅含false case加default、fall-through穿越布尔分支
 * @note 扩展覆盖 boolean switch 的边界场景：单分支（无全覆盖）、fall-through 两个分支连续执行
 */
function testBooleanSwitchSingleCase(): void {
    let flag: boolean = true;
    let result: string = "";
    switch (flag) {
        case true:
            result = "only_true";
            break;
        default:
            result = "default_false";
            break;
    }
}

function testBooleanSwitchFallThrough(): void {
    let flag: boolean = true;
    let result: string = "";
    switch (flag) {
        case true:
            result = "true";
        case false:
            result = result + "_then_false";
            break;
        default:
            result = "default";
            break;
    }
}
