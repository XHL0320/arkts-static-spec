/**
 * @id CCY_16_03_05_008_PASS_promise_race
 * @expect compile-pass
 * @section 16.3.5
 * @design Promise.race 静态组合子
 * @note 正向用例：验证 Promise.race 通过编译
 */
function main(): void {
    let p1: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {});
    let p2: Promise<number> = Promise.resolve(2);
    let race: Promise<number> = Promise.race([p1, p2]);
}
