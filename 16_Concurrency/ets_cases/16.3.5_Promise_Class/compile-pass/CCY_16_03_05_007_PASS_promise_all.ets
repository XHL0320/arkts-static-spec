/**
 * @id CCY_16_03_05_007_PASS_promise_all
 * @expect compile-pass
 * @section 16.3.5
 * @design Promise.all 静态组合子
 * @note 正向用例：验证 Promise.all 通过编译
 */
function main(): void {
    let p1: Promise<number> = Promise.resolve<number>(1);
    let p2: Promise<number> = Promise.resolve<number>(2);
    let all: Promise<number[]> = Promise.all([p1, p2]);
}
