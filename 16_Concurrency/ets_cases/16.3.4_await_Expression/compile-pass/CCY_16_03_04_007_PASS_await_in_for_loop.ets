/**
 * @id CCY_16_03_04_007_PASS_await_in_for_loop
 * @expect compile-pass
 * @section 16.3.4
 * @design await 在 for 循环中多顺序悬挂点
 * @note 正向用例：验证 await 在 for 循环中多次悬挂
 */
async function sum(n: number): Promise<number> {
    let total: number = 0;
    for (let i: number = 0; i < n; i++) {
        total += await Promise.resolve(i);
    }
    return total;
}
