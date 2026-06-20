/**
 * @id NAM_04_04_012_FAIL_USE_BEFORE_DECLARE
 * @expect compile-fail
 * @section 4.4
 * @design 声明前引用变量
 * @note 反向用例：验证在函数体内声明前引用变量导致编译错误（声明顺序约束）
 */
function foo(): void {
    let x: number = y;
    let y: number = 1;
}
