/**
 * @id CCY_16_04_02_001_PASS_launch_basic
 * @expect compile-pass
 * @section 16.4.2
 * @design launch 在 async 函数中基本用法
 * @note 正向用例：验证 launch lambda 在 async 函数中编译通过
 */
async function f(): Promise<void> {
    let p1: Promise<number> = launch<number>(() => {
        return 42;
    });
    let result1: number = await p1;
}
