/**
 * @id CCY_16_04_02_004_PASS_launch_with_type
 * @expect compile-pass
 * @section 16.4.2
 * @design launch 显式类型参数
 * @note 正向用例：验证 launch 显式类型参数编译通过
 */
async function f(): Promise<void> {
    let p1: Promise<number> = launch<number>(async () => {
        await Promise.resolve(0);
        return 100;
    });
    let result1: number = await p1;
}
