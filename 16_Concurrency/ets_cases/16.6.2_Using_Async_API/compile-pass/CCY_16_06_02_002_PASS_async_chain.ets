/**
 * @id CCY_16_06_02_002_PASS_async_chain
 * @expect compile-pass
 * @section 16.6.2
 * @design 验证从非 async 函数链式调用 async 函数
 * @note 正向用例：非 async 函数通过 Promise 链调用 async 函数
 */
function nonAsyncCaller(): void {
    asyncChain()
        .then((val: number) => {
            console.info('Chain result: ' + val);
        });
}

async function asyncChain(): Promise<number> {
    let a: number = await stepOne();
    let b: number = await stepTwo(a);
    return b;
}

async function stepOne(): Promise<number> {
    return 10;
}

async function stepTwo(input: number): Promise<number> {
    return input + 5;
}

nonAsyncCaller();
