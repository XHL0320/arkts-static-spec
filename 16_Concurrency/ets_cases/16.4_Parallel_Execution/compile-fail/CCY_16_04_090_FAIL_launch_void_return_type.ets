/**
 * @id CCY_16_04_090_FAIL_launch_void_return_type
 * @expect compile-fail
 * @section 16.4
 * @design launch 返回类型不匹配
 * @note 反向用例：验证 launch 类型参数与实际返回不匹配编译报错
 */
function main(): void {
    launch<string>((): void => {});
}
