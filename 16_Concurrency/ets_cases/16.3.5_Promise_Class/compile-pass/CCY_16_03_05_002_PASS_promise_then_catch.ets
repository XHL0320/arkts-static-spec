/**
 * @id CCY_16_03_05_002_PASS_promise_then_catch
 * @expect compile-pass
 * @section 16.3.5
 * @design Promise then/catch 回调
 * @note 正向用例：验证 Promise then/catch 方法通过编译
 */
function main(): void {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(42);
    });
    p.then((v: number) => {
        console.log(v);
    });
}
