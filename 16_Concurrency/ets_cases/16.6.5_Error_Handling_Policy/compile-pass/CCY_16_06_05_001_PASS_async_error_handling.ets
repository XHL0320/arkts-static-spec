/**
 * @id CCY_16_06_05_001_PASS_async_error_handling
 * @expect compile-pass
 * @section 16.6.5
 * @design 验证 async 函数内 try/catch 捕获异步异常
 * @note 正向用例：async 函数中使用 try/catch 处理 rejected promise
 */
async function safeAsyncCall(): Promise<void> {
    try {
        let data: string = await riskyOperation();
        console.info('Data: ' + data);
    } catch (e) {
        console.info('Caught async error: ' + (e as Error).message);
    }
}

async function riskyOperation(): Promise<string> {
    throw new Error('Async failure');
}

safeAsyncCall();
