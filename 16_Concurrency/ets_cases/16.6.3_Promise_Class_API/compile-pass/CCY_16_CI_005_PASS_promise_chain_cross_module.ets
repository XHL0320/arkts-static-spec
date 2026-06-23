/**
 * @id CCY_16_06_03_004
 * @expect compile-pass
 * @section 16.6.3
 * @design Promise.then() 链式调用
 * @note 正向用例：验证 Promise.then 链式调用编译通过
 */
function main(): void {
    let p: Promise<void> = Promise.resolve<number>(42).then((): void => {
        console.log("done");
    });
}
