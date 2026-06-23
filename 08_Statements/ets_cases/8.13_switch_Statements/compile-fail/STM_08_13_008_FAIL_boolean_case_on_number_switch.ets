/**
 * @id STM_08_13_008_FAIL_boolean_case_on_number_switch
 * @expect compile-fail
 * @section 8.13
 * @design number类型switch表达式中case使用boolean类型字面量，case类型不可赋值给switch类型应报编译时错误
 * @note 规范要求case表达式类型必须可赋值给switch表达式类型，boolean不能赋值给number故编译报错
 */
function testBooleanCaseOnNumberSwitch(): void {
    let x: number = 3.14;
    switch (x) {
        case true:
            break;
        default:
            break;
    }
}
