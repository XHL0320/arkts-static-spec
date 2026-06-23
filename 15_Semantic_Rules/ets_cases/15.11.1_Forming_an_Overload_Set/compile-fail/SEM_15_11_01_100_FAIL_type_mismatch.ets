/**
 * @id SEM_15_11_01_100_FAIL_type_mismatch
 * @expect compile-fail
 * @section 15.11.1
 * @design 重载集类型不匹配：实参类型无可匹配重载
 * @note 反向用例：string 不匹配 int 参数的重载
 */
function f(x: int): void {}
function main(): void {
    f("s");
}
