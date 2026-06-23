/**
 * @id CCY_16_05_101_FAIL_atm_withdrawal
 * @expect compile-fail
 * @section 16.5
 * @design 模拟银行账户取款，两个并发取款不超过余额，使用 AsyncMutex 同步
 * @note 反向用例：验证 AsyncLock 不支持 lock()/unlock() 方法，应编译报错
 */

let accountBalance: number = 100;
let mutex: AsyncMutex = new AsyncMutex();

async function withdraw(amount: number): Promise<boolean> {
    let release = await mutex.lock();
    try {
        if (accountBalance >= amount) {
            accountBalance -= amount;
            console.info('Withdrew ' + amount + ', balance: ' + accountBalance);
            return true;
        } else {
            console.info('Insufficient funds for ' + amount);
            return false;
        }
    } finally {
        release();
    }
}

async function runWithdrawals(): Promise<void> {
    let results: boolean[] = await Promise.all([
        withdraw(60),
        withdraw(60)
    ]);
    console.info('Withdrawals succeeded: ' + results.join(', '));
}

runWithdrawals();
