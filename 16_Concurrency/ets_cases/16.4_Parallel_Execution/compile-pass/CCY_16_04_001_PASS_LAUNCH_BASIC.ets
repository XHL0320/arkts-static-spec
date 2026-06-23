/**
 * @id CCY_16_04_001_PASS_LAUNCH_BASIC
 * @expect compile-pass
 * @section 16.4
 * @design launch API 基本用法
 * @note 正向用例：验证 launch 函数编译通过
 */
function main(): void {
    launch<void>(() => {
        console.log("hello");
    });
}
