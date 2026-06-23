/**
 * @id CCY_16_06_02_001_PASS_async_main
 * @expect compile-pass
 * @section 16.6.2
 * @design 验证 async 函数作为入口点的基本用法
 * @note 正向用例：async main 函数包含 await 调用
 */
async function asyncMain(): Promise<void> {
    let result: number = await asyncTask();
    console.info('Async main result: ' + result);
}

async function asyncTask(): Promise<number> {
    return 42;
}

asyncMain();
