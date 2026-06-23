/**
 * @id SEM_15_08_07_100_FAIL_type_mismatch
 * @expect compile-fail
 * @section 15.8.7
 * @design 智能转换拒绝：类型不匹配
 * @note 反向用例：string 不能赋值给 int
 */
function main(): void {
    let x: int = "s";
}
