/**
 * @id STM_08_13_017_PASS_char_switch
 * @expect compile-pass
 * @section 8.13
 * @design char类型switch表达式，case分支使用char字面量，验证char类型switch支持
 * @note switch表达式可为任意类型，此处用char，case匹配char字面量(c'a'形式)，每分支以break结束
 */
function testCharSwitch(): void {
    let ch: char = c'a';
    let result: string = "";
    switch (ch) {
        case c'a':
            result = "lower_a";
            break;
        case c'b':
            result = "lower_b";
            break;
        case c'A':
            result = "upper_a";
            break;
        case c'\n':
            result = "newline";
            break;
        default:
            result = "other";
            break;
    }
}
