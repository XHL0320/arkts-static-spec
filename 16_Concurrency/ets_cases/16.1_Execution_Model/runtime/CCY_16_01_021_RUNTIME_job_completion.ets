/**
 * @id CCY_16_01_021_RUNTIME_job_completion
 * @expect runtime
 * @section 16.1
 * @design job 完成触发 Promise resolve
 * @note 运行时用例：async job 完成后 Promise 被 resolve
 */
async function simpleJob(): Promise<number> {
    return 1;
}

async function main(): Promise<void> {
    let v: number = await simpleJob();
    if (v != 1) {
        throw new Error("unexpected");
    }
    console.log("ok");
}
