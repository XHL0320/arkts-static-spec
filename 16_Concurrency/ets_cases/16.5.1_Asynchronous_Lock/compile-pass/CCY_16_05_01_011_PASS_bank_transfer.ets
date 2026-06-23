/**
 * @id CCY_16_05_01_011_PASS_bank_transfer
 * @expect compile-pass
 * @section 16.5.1
 * @design 银行转账：两个账户间转账使用 AsyncLock
 * @note 正向用例：验证 AsyncLock 在转账场景中编译通过
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
                console.info('Transferred ' + amount);
            } else {
                console.info('Insufficient balance');
            }
        });
    });
}

async function runTransfer(): Promise<void> {
    await transfer(80);
    console.info('A: ' + balanceA + ', B: ' + balanceB);
}

function main(): void {
    runTransfer();
}
