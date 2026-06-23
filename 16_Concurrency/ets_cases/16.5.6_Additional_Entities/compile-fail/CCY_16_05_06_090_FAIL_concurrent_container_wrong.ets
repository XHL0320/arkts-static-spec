/**
 * @id CCY_16_05_06_090_FAIL_concurrent_container_wrong
 * @expect compile-fail
 * @section 16.5.6
 * @design 并发容器错误用法
 * @note 反向用例：验证并发容器类型错误应编译报错
 */
function main(): void {
    let arr: Array<number> = new Array<number>();
    arr.wait();
}
