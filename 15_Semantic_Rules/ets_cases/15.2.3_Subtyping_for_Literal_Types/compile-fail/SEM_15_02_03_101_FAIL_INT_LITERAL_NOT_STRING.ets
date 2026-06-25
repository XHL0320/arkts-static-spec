/**
 * @id SEM_15_02_03_101_FAIL_INT_LITERAL_NOT_STRING
 * @expect compile-fail
 * @section 15.2.3
 * @design 验证 int 字面量类型不是 string 的子类型
 * @note 反向用例：42 是 int 字面量类型，不是 string 的子类型，不能赋值给 string
 */
function main(): void {
    let x: string = 42;
}
