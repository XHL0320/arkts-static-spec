/**
 * @id STM_08_12_010_RUNTIME_return_early_control_flow
 * @expect runtime
 * @section 8.12
 * @design 运行时验证void函数中return语句提前退出控制流
 * @note 运行时测试：验证return语句后的代码不会被执行，通过sideEffect变量检测
 */
let sideEffect: int = 0;

function testReturnEarly(): void {
    sideEffect = 1;
    return;
    // unreachable code follows
    sideEffect = 2;
}

function main(): void {
    testReturnEarly();
    if (sideEffect != 1) {
        throw new Error("sideEffect should be 1 after testReturnEarly, got " + sideEffect);
    }

    console.log("verified");
}
