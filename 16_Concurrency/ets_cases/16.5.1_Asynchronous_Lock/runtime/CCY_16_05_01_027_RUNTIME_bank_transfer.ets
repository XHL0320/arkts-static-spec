/**
 * @id CCY_16_05_01_027_RUNTIME_bank_transfer
 * @expect runtime
 * @section 16.5.1
 * @design 银行转账运行时
 * @note 运行时用例：验证 AsyncLock 保护双账户转账
 */
let balanceA: number = 200;
let lockA: AsyncLock = new AsyncLock();
let balanceB: number = 50;
let lockB: AsyncLock = new AsyncLock();
async function transfer(amount: number): Promise<void> {
    await lockA.lockAsync<void>(async () => {
        await lockB.lockAsync<void>(async () => {
            if (balanceA >= amount) {
                balanceA -= amount;
                balanceB += amount;
            }
        });
    });
}
async function test(): Promise<void> {
    await transfer(80);
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
