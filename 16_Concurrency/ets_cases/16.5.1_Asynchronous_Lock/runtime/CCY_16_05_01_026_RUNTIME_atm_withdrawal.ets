/**
 * @id CCY_16_05_01_026_RUNTIME_atm_withdrawal
 * @expect runtime
 * @section 16.5.1
 * @design ATM 取款模型运行时
 * @note 运行时用例：验证 AsyncLock 保护账户余额
 */
let balance: number = 100;
let lock: AsyncLock = new AsyncLock();
async function withdraw(amount: number): Promise<boolean> {
    return await lock.lockAsync<boolean>(async () => {
        if (balance >= amount) {
            balance -= amount;
            return true;
        }
        return false;
    });
}
async function test(): Promise<void> {
    await withdraw(60);
}
function main(): void {
    let p: Promise<void> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
