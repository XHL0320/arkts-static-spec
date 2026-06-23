/**
 * @id CCY_16_01_010_PASS_suspension_allows_other_jobs
 * @expect compile-pass
 * @section 16.1
 * @design 悬挂点允许同一 worker thread 上另一个 job 执行
 * @note 正向用例：await 暂停当前 job，使其他 job 获得执行机会
 */
async function microTask(): Promise<string> {
    return "micro";
}

async function main(): Promise<void> {
    let p: Promise<string> = microTask();
    let result: string = await p;
    console.log(result);
}
