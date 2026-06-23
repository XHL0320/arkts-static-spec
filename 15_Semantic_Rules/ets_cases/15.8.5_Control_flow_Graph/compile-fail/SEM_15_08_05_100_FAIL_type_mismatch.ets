/**
 * @id SEM_15_08_05_100_FAIL_type_mismatch
 * @expect compile-fail
 * @section 15.8.5
 * @design 控制流拒绝：类型不匹配的赋值
 * @note 反向用例：int 类型不能赋值为 string
 */
function main(): void {
    let x: int = "s";
}
