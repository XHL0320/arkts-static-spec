/**
 * @id CCY_16_04_02_090_FAIL_launch_wrong_type @expect compile-fail
 * @section 16.4.2
 * @design launch 参数类型不匹配
 * @note 反向用例：验证 launch 参数类型错误应编译报错
 */
function main(): void {
    launch<string>((): number => { return 42; });
}
