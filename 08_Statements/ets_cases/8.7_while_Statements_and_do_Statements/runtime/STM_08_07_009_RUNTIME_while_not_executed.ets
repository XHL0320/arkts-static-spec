/**
 * @id STM_08_07_009_RUNTIME_while_not_executed
 * @expect runtime
 * @section 8.7
 * @design while 条件初始为 false，验证循环体不被执行 — while 先判断条件再执行
 * @note 当 while 条件为 false 时，循环体一次也不执行
 */
function main(): void {
    let count: int = 0;
    while (false) {
        count = count + 1;
    }
    if (count != 0) {
        throw new Error("while(false) should not execute body at all");
    }
    let x: int = 0;
    while (x > 0) {
        x = x + 1;
    }
    if (x != 0) {
        throw new Error("while(x>0) with x=0 should not execute body");
    }
    console.log("verified");
}
