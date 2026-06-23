/**
 * @id CCY_16_06_002_PASS_PROMISE_CATCH
 * @expect compile-pass
 * @section 16.6
 * @design Promise.catch 错误处理
 * @note 正向用例：验证 Promise.catch 方法编译通过（§16.6.3）
 */
function main(): void {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void, reject: (e: Error) => void) => {
        reject(new Error("fail"));
    });
    p.catch((e: Error): void => {
        console.log("error");
    });
}
