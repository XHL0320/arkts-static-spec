/**
 * @id CCY_16_04_01_090_FAIL_parallel_api_wrong_arg
 * @expect compile-fail
 * @section 16.4.1
 * @design launch API 参数类型错误
 * @note 反向用例：验证 launch 传入非函数参数应编译报错
 */
function main(): void {
    launch<number>(42);
}
