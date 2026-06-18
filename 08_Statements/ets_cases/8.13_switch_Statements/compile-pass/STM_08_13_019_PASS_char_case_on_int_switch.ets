/**
 * @id STM_08_13_019_FAIL_char_case_on_int_switch
 * @expect compile-pass
 * @section 8.13
 * @design int类型switch表达式中case使用char类型字面量，case类型不可赋值给switch类型应报编译时错误
 * @note 规范要求case表达式类型必须可赋值给switch表达式类型，char不能赋值给int故编译报错（ArkTS char不允许隐式widening到int）
 */
function testCharCaseOnIntSwitch(): void {
    let x: int = 1;
    switch (x) {
        case c'a':
            break;
        default:
            break;
    }
}
