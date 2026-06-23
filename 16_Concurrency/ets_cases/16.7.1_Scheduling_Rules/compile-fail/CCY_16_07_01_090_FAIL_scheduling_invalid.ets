/**
 * @id CCY_16_07_01_090_FAIL_scheduling_invalid
 * @expect compile-fail
 * @section 16.7.1
 * @design 调度规则无效用法
 * @note 反向用例：验证调度相关错误用法应编译报错
 */
function main(): void {
    let p: Promise<void> = launch<void>(undefined);
}
