/**
 * @id NAM_04_03_010_FAIL_BEFORE_DECLARATION
 * @expect compile-fail
 * @section 4.3
 * @design 声明前引用
 * @note 反向用例：验证引用未声明变量编译错误
 */
function foo(): void {
    let x: number = y;
    let y: number = 1;
}
