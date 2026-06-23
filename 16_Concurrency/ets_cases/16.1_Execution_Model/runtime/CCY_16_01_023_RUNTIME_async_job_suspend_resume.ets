/**
 * @id CCY_16_01_023_RUNTIME_async_job_suspend_resume
 * @expect runtime
 * @section 16.1
 * @design async job 在悬挂点暂停后恢复执行
 * @note 运行时用例：await 导致暂停，之后恢复并继续执行后续代码
 */
async function asyncJob(): Promise<number> {
    let x: number = 1;
    return new Promise<number>((resolve) => {
        resolve(x + 1);
    });
}

async function main(): Promise<void> {
    let v: number = await asyncJob();
    if (v != 2) {
        throw new Error("unexpected");
    }
    console.log("suspended and resumed ok");
}
