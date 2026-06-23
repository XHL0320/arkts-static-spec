/**
 * @id CCY_16_04_002_PASS_LAUNCH_ASYNC
 * @expect compile-pass
 * @section 16.4
 * @design launch async lambda
 * @note 正向用例：验证 launch async lambda 编译通过
 */
async function g(): Promise<void> {}
function main(): void {
    launch<Promise<void>>(async () => {
        await g();
    });
}
