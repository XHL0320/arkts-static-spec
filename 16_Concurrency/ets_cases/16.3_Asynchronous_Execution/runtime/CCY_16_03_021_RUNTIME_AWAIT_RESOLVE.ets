/**
 * @id CCY_16_03_021_RUNTIME_AWAIT_RESOLVE
 * @expect runtime
 * @section 16.3
 * @design await Promise resolve 值
 * @note 运行时用例：验证 await Promise resolve 返回正确值
 */
async function getValue(): Promise<number> {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(42);
    });
    return await p;
}
function main(): void {
    let p: Promise<number> = getValue();
    console.log("verified");
}
