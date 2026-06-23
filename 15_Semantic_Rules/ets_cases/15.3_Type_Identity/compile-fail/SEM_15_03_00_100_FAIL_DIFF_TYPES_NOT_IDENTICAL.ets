/**
 * @id SEM_15_03_00_100_FAIL_DIFF_TYPES_NOT_IDENTICAL
 * @expect compile-fail
 * @section 15.3
 * @design 验证不同类型不具同一性：int 和 string 不是同一类型
 * @note 反向用例：int 不可赋值给 string
 */
function main(): void {
    let x: int = 42;
    let y: string = x;
}
