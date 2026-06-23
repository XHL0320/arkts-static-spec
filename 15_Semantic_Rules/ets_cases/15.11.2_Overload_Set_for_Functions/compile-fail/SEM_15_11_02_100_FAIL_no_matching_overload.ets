/**
 * @id SEM_15_11_02_100_FAIL_no_matching_overload
 * @expect compile-fail
 * @section 15.11.2
 * @design 函数重载集拒绝：无匹配重载
 * @note 反向用例：boolean 不匹配 int 参数的重载
 */
function f(x: int): void {}
function main(): void {
    f(true);
}
