/**
 * @id STM_08_13_004_PASS_boolean_switch
 * @expect compile-pass
 * @section 8.13
 * @design boolean类型switch表达式，case分支使用true/false字面量，验证布尔类型switch支持
 * @note switch表达式为boolean类型，case分支使用true和false字面量，验证任意类型switch
 */
function testBooleanSwitch(): void {
    let flag: boolean = true;
    let result: string = "";
    switch (flag) {
        case true:
            result = "true_value";
            break;
        case false:
            result = "false_value";
            break;
    }
}
