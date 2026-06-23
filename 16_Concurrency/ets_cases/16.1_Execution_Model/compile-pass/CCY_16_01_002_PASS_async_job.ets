/**
 * @id CCY_16_01_002_PASS_async_job
 * @expect compile-pass
 * @section 16.1
 * @design async 函数定义一个可并发执行的 job
 * @note 正向用例：async 函数创建 suspendable job，通过 Promise 通信返回值
 */
async function job(): Promise<string> {
    return "job result";
}

async function main(): Promise<void> {
    let result: string = await job();
    console.log(result);
}
