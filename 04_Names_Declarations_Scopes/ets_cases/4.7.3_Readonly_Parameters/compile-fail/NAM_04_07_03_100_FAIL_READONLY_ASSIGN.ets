/**
 * @id NAM_04_07_03_100_FAIL_READONLY_ASSIGN
 * @expect compile-fail
 * @section 4.7.3
 * @design 对只读参数赋值
 * @note 反向用例：验证对只读数组参数赋值编译错误
 */
function fooBad(arr: readonly number[]): void {
    arr[0] = 42;
}
