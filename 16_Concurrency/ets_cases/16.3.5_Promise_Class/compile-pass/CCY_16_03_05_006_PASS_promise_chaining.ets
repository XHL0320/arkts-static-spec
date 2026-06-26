/**
 * @id CCY_16_03_05_006_PASS_promise_chaining
 * @expect compile-pass
 * @section 16.3.5
 * @design Promise 链式 then 调用
 * @note 正向用例：验证 Promise.then 链式返回新 Promise 通过编译
 */
function main(): void {
    let p: Promise<number> = Promise.resolve<number>(1);
    p.then((v: number) => {
        return v + 1;
    }).then((v: number) => {
        console.log(v);
    });
}
