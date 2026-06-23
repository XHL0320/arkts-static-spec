/**
 * @id CCY_16_04_02_003_PASS_launch_async_lambda
 * @expect compile-pass
 * @section 16.4.2
 * @design launch 结合 async lambda
 * @note 正向用例：验证 launch 与 async lambda 结合使用编译通过
 */
async function g(): Promise<void> {}
async function f(): Promise<void> {
    let p1: Promise<number> = launch<number>(async () => {
        await g();
        return 42;
    });
    let result1: number = await p1;
}
