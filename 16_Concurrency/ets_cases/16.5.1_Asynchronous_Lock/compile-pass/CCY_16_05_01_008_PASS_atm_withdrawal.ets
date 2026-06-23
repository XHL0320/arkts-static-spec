/**
 * @id CCY_16_05_01_008_PASS_atm_withdrawal
 * @expect compile-pass
 * @section 16.5.1
 * @design ATM 存取款模型：使用 AsyncLock 保护账户余额
 * @note 正向用例：验证 AsyncLock 保护共享余额的编译通过
 */

let accountBalance: number = 100;
let lock: AsyncLock = new AsyncLock();

async function withdraw(amount: number): Promise<boolean> {
    return await lock.lockAsync<boolean>(async () => {
        if (accountBalance >= amount) {
            accountBalance -= amount;
            console.info('Withdrew ' + amount + ', balance: ' + accountBalance);
            return true;
        } else {
            console.info('Insufficient funds for ' + amount);
            return false;
        }
    });
}

async function runWithdrawals(): Promise<void> {
    let results: boolean[] = await Promise.all([
        withdraw(60),
        withdraw(60)
    ]);
    console.info('Withdrawals succeeded: ' + results.join(', '));
}

function main(): void {
    runWithdrawals();
}
