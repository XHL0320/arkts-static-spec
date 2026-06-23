/**
 * @id STM_08_14_011_PASS_throw_after_return_unreachable
 * @expect compile-pass
 * @section 8.14
 * @design 测试return后的throw语句在语法上合法，验证编译器不因死代码而拒绝throw语法
 * @note return之后的throw是不可达代码，但throw本身语法合法，应当编译通过
 */

function testThrowAfterReturnUnreachable(code: int): void {
    if (code == 0) {
        return;
    }
    throw new Error("branch not taken");
    return;
}
