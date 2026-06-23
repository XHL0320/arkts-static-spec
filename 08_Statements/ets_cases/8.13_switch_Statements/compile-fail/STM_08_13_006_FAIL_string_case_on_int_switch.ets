/**
 * @id STM_08_13_006_FAIL_string_case_on_int_switch
 * @expect compile-fail
 * @section 8.13
 * @design int类型switch表达式中case使用string类型字面量，case类型不可赋值给switch类型应报编译时错误
 * @note 规范要求case表达式类型必须可赋值给switch表达式类型，string不能赋值给int故编译报错
 */
function testStringCaseOnIntSwitch(): void {
    let x: int = 1;
    switch (x) {
        case "one":
            break;
        default:
            break;
    }
}
