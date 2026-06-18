/**
 * @id STM_08_13_003_PASS_string_switch
 * @expect compile-pass
 * @section 8.13
 * @design string类型switch表达式，case分支使用字符串字面量，验证任意类型的switch表达式支持
 * @note switch表达式可任意类型，此处用string，case匹配字符串字面量，每分支以break结束
 */
function testStringSwitch(): void {
    let s: string = "hello";
    let result: string = "";
    switch (s) {
        case "hello":
            result = "greeting";
            break;
        case "bye":
            result = "farewell";
            break;
        default:
            result = "unknown";
            break;
    }
}
