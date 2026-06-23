/**
 * @id CCY_16_06_001_PASS_PROMISE_THEN
 * @expect compile-pass
 * @section 16.6
 * @design Promise.then 回调注册
 * @note 正向用例：验证 Promise.then 方法编译通过（§16.6.3）
 */
function main(): void {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(42);
    });
    p.then((v: number): void => {
        console.log("" + v);
    });
}
