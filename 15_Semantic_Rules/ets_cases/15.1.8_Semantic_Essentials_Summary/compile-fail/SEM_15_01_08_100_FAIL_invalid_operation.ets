/**
 * @id SEM_15_01_08_100_FAIL_invalid_operation
 * @expect compile-fail
 * @section 15.1.8
 * @design 语义总结无效操作拒绝
 * @note 反向用例：int 类型不能赋值为 string
 */
function main(): void {
    let x: int = "wrong";
}
