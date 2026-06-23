/**
 * @id NAM_04_07_04_001_PASS_OPTIONAL_DEFAULT
 * @expect compile-pass
 * @section 4.7.4
 * @design 可选参数带默认值
 * @note 正向用例：验证默认值可选参数
 */
function pair(x: number, y: number = 7): void {
    console.log(x, y);
}
