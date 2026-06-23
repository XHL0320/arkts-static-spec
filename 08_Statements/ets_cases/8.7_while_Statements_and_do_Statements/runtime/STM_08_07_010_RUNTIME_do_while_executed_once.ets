/**
 * @id STM_08_07_010_RUNTIME_do_while_executed_once
 * @expect runtime
 * @section 8.7
 * @design do-while 条件初始为 false，验证循环体至少执行一次 — do-while 先执行再判断
 * @note 当 do-while 条件为 false 时，循环体仍然执行一次
 */
function main(): void {
    let count: int = 0;
    do {
        count = count + 1;
    } while (false);
    if (count != 1) {
        throw new Error("do-while(false) should execute body exactly once, but got " + count);
    }
    let x: int = 5;
    let sum: int = 0;
    do {
        sum = sum + x;
        x = x - 1;
    } while (x > 0);
    if (sum != 15) {
        throw new Error("do-while sum should be 15, but got " + sum);
    }
    console.log("verified");
}
