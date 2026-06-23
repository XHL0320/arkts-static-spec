/**
 * @id SEM_15_04_00_102_FAIL_TYPE_MISMATCH
 * @expect compile-fail
 * @section 15.4
 * @design 验证不同类型不可赋值：string 不可赋值给 int
 * @note 反向用例：类型不兼容时编译拒绝
 */
function main(): void {
    let s: string = "hello";
    let i: int = s;
}
