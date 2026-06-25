/**
 * @id SEM_15_02_03_102_FAIL_BOOLEAN_LITERAL_NOT_NUMBER
 * @expect compile-fail
 * @section 15.2.3
 * @design 验证 boolean 字面量类型不是 number 的子类型
 * @note 反向用例：true 是 boolean 字面量类型，不是 number 的子类型，不能赋值给 number
 */
function main(): void {
    let x: number = true;
}
