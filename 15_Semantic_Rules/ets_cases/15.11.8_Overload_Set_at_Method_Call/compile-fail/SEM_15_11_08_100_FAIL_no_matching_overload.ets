/**
 * @id SEM_15_11_08_100_FAIL_no_matching_overload
 * @expect compile-fail
 * @section 15.11.8
 * @design 调用时重载拒绝：无匹配重载
 * @note 反向用例：boolean 不匹配任何重载
 */
function f(x: int): void {}
function main(): void {
    f(true);
}
