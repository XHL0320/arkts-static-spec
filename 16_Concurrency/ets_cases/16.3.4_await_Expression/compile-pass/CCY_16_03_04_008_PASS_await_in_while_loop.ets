/**
 * @id CCY_16_03_04_008_PASS_await_in_while_loop
 * @expect compile-pass
 * @section 16.3.4
 * @design await 在 while 循环中
 * @note 正向用例：验证 await 在 while 循环中通过编译
 */
async function loop(): Promise<number> {
    let i: number = 0;
    let sum: number = 0;
    while (i < 3) {
        sum += await Promise.resolve(i);
        i++;
    }
    return sum;
}
