/**
 * @id CCY_16_CI_090_FAIL_launch_async_wrong
 * @expect compile-fail
 * @section 16.4.2
 * @design 交叉集成错误：launch 类型不匹配
 * @note 反向用例：验证 launch 类型参数与返回值不匹配应编译报错
 */
function main(): void {
    launch<string>((): number => { return 42; });
}
