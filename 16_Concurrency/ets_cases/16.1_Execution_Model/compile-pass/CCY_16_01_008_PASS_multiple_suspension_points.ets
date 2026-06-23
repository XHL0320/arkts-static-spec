/**
 * @id CCY_16_01_008_PASS_multiple_suspension_points
 * @expect compile-pass
 * @section 16.1
 * @design job 可以有多个悬挂点（多次 await）
 * @note 正向用例：async 函数含多个 await，执行可在多个点暂停和恢复
 */
async function step(): Promise<void> {
    return new Promise<void>((resolve) => { setTimeout(resolve, 1); });
}

async function main(): Promise<void> {
    console.log("start");
    await step();
    console.log("after step 1");
    await step();
    console.log("after step 2");
    await step();
    console.log("done");
}
