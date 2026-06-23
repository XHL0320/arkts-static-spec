/**
 * @id CCY_16_01_003_PASS_multiple_jobs
 * @expect compile-pass
 * @section 16.1
 * @design 多个 job 的创建和返回值获取
 * @note 正向用例：验证多个并发 job 的定义和 Promise 返回值通信
 */
async function jobA(): Promise<string> {
    return "A";
}

async function jobB(): Promise<string> {
    return "B";
}

async function main(): Promise<void> {
    let resultA: Promise<string> = jobA();
    let resultB: Promise<string> = jobB();
    let a: string = await resultA;
    let b: string = await resultB;
    console.log(a + b);
}
