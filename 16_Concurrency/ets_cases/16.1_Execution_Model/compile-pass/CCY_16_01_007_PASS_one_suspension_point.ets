/**
 * @id CCY_16_01_007_PASS_one_suspension_point
 * @expect compile-pass
 * @section 16.1
 * @design job 可以有一个悬挂点（await 暂停）
 * @note 正向用例：async 函数含一个 await，执行可在该点暂停和恢复
 */
async function delay(): Promise<void> {
    return new Promise<void>((resolve) => { setTimeout(resolve, 1); });
}

async function main(): Promise<void> {
    await delay();
    console.log("resumed after suspension");
}
