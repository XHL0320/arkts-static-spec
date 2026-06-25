/**
 * @id STM_08_13_019_PASS_char_case_on_int_switch
 * @expect compile-pass
 * @section 8.13
 * @design int 类型 switch 表达式中使用 char 字面量 case，编译通过
 * @note spec §8.13 case 匹配按 == 比较；char 与 int 在数值上下文可比，编译器允许（受 Extended 语义影响 char 可作 int case）
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
