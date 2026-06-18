/**
 * @id STM_08_14_016_RUNTIME_throw_immediate_control_transfer
 * @expect runtime
 * @section 8.14
 * @design 测试throw立即转移控制权，验证throw之后的语句不被执行
 * @note 在try块中throw之后的赋值语句不应被执行，以此验证throw立即跳出当前执行流
 */

function main(): void {
    let reachedAfterThrow: boolean = false;
    let caught: boolean = false;
    try {
        throw new Error("immediate transfer");
        reachedAfterThrow = true;
    } catch (e) {
        caught = true;
    }
    if (reachedAfterThrow) {
        throw new Error("immediate_transfer: code after throw should not execute");
    }
    if (!caught) {
        throw new Error("immediate_transfer: expected exception to be caught");
    }
    console.log("verified");
}
