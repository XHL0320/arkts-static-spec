/**
 * @id CCY_16_04_02_002_PASS_launch_non_async
 * @expect compile-pass
 * @section 16.4.2
 * @design launch 在非 async 函数中
 * @note 正向用例：验证 launch 在非 async 函数中编译通过
 */
function h(): void {
    launch<void>(() => {
        console.log("hello!");
    });
}
function main(): void {
    h();
}
