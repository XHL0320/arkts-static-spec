/**
 * @id CCY_16_07_001_PASS_runtime_details
 * @expect compile-pass
 * @section 16.7
 * @design 运行时实现细节：async main 支持多 await
 * @note 正向用例：async entry point 支持多个 sequential await
 */
async function delay(ms: number): Promise<void> {
    return new Promise<void>((resolve) => { setTimeout(resolve, ms); });
}

async function main(): async void {
    console.log("start");
    await delay(10);
    console.log("after delay");
    await delay(10);
    console.log("end");
}
