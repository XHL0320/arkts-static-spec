/**
 * @id CCY_16_07_090_FAIL_runtime_invalid
 * @expect compile-fail
 * @section 16.7
 * @design 运行时实现细节无效用法
 * @note 反向用例：验证运行时错误用法应编译报错
 */
function main(): void {
    let p: Promise<void> = launch<void>("not_a_function");
}
