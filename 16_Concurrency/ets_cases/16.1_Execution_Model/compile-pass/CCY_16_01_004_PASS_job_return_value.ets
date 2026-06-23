/**
 * @id CCY_16_01_004_PASS_job_return_value
 * @expect compile-pass
 * @section 16.1
 * @design job 通过 Promise 通信返回值
 * @note 正向用例：Promise<T> 作为 job 返回值通信机制
 */
async function compute(): Promise<number> {
    return 42;
}

async function main(): Promise<void> {
    let value: Promise<number> = compute();
    let result: number = await value;
    console.log(result.toString());
}
