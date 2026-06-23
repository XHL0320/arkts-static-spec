/**
 * @id NAM_04_07_101_FAIL_FUNC_NOT_TOP_LEVEL
 * @expect compile-fail
 * @section 4.7
 * @design 函数必须在顶层声明
 * @note 反向用例：验证函数声明不能在函数体或块内部（§4.7 行 884）
 */
function foo(): void {
    function bar(): void {}
}
