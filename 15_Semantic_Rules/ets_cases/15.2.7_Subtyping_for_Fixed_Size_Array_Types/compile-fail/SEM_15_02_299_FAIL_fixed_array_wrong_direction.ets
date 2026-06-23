/**
 * @id SEM_15_02_299_FAIL_fixed_array_wrong_direction
 * @expect compile-fail
 * @section 15.2.7
 * @design FixedArray<Object> 不是 FixedArray<string> 的子类型
 * @note 来自规范 15.2.7 例：x = y 编译错误
 */
function main(): void {
    let x: FixedArray<string> = ["aa", "bb", "cc"]
    let y: FixedArray<Object> = x
    x = y
}
