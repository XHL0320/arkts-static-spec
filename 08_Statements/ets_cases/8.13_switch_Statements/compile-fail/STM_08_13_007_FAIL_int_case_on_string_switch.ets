/**
 * @id STM_08_13_007_FAIL_int_case_on_string_switch
 * @expect compile-fail
 * @section 8.13
 * @design string类型switch表达式中case使用int类型字面量，case类型不可赋值给switch类型应报编译时错误
 * @note 规范要求case表达式类型必须可赋值给switch表达式类型，int不能赋值给string故编译报错
 */
function testIntCaseOnStringSwitch(): void {
    let s: string = "hello";
    switch (s) {
        case 42:
            break;
        default:
            break;
    }
}
