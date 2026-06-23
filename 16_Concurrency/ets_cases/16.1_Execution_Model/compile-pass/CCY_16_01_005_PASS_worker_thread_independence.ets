/**
 * @id CCY_16_01_005_PASS_worker_thread_independence
 * @expect compile-pass
 * @section 16.1
 * @design worker thread 一次只执行一个 job
 * @note 正向用例：main job 串行 await 两个 async job
 */
async function task1(): Promise<string> {
    return "task1 done";
}

async function task2(): Promise<string> {
    return "task2 done";
}

async function main(): Promise<void> {
    let r1: string = await task1();
    let r2: string = await task2();
    console.log(r1);
    console.log(r2);
}
