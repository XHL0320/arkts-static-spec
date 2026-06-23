/**
 * @id STM_08_01_003_PASS_break_continue_return
 * @expect compile-pass
 * @section 8.1
 * @design 验证 break/continue/return 跳转语句的正常完成语义——跳转语句本身以正常完成执行
 * @note break/continue 必须在循环或switch内使用，return 必须在函数内使用
 */
function testBreakContinue(): void {
    let sum: int = 0;
    for (let i: int = 0; i < 10; i++) {
        if (i == 5) {
            continue;
        }
        if (i == 8) {
            break;
        }
        sum = sum + i;
    }
}

function testBreakInSwitch(): void {
    let val: int = 2;
    let result: int = 0;
    switch (val) {
        case 1:
            result = 1;
            break;
        case 2:
            result = 2;
            break;
        default:
            result = 0;
            break;
    }
}

function testReturnNormal(): void {
    let x: int = 42;
    return;
}
