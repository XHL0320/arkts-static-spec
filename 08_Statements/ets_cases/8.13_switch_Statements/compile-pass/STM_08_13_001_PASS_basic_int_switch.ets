/**
 * @id STM_08_13_001_PASS_basic_int_switch
 * @expect compile-pass
 * @section 8.13
 * @design 基本int类型switch表达式，case匹配后使用break退出，验证基础switch语法
 * @note switch表达式为int类型，case分支使用整型字面量，每个case分支以break结束，default子句兜底
 */
function testBasicIntSwitch(): void {
    let x: int = 2;
    let result: string = "";
    switch (x) {
        case 1:
            result = "one";
            break;
        case 2:
            result = "two";
            break;
        case 3:
            result = "three";
            break;
        default:
            result = "other";
            break;
    }
}
