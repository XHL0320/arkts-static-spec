/**
 * @id SEM_15_06_00_102_FAIL_ARG_MISMATCH
 * @expect compile-fail
 * @section 15.6
 * @design 验证调用参数类型不匹配拒绝：string 传 int 声明应报错
 * @note 反向用例：参数类型不兼容时编译拒绝
 */
function double(x: int): int { return x * 2; }
function main(): void {
    let r: int = double("hello");
}
