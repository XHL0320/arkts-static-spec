/**
 * @id STM_08_13_002_PASS_fall_through
 * @expect compile-pass
 * @section 8.13
 * @design int类型switch中case无break时的fall-through穿透执行流程验证
 * @note case 1匹配后无break，继续执行case 2的语句直到遇到break才退出，验证fall-through机制
 */
function testFallThrough(): void {
    let x: int = 1;
    let result: string = "";
    switch (x) {
        case 1:
            result = "one_";
        case 2:
            result += "two";
            break;
        default:
            result = "default";
            break;
    }
}
