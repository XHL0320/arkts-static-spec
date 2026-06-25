/**
 * @id SEM_15_02_03_100_FAIL_STRING_LITERAL_NOT_INT
 * @expect compile-fail
 * @section 15.2.3
 * @design 验证字符串字面量类型不是 int 的子类型
 * @note 反向用例："hello" 是 string 字面量类型，不是 int 的子类型，不能赋值给 int
 */
function main(): void {
    let x: int = "hello";
}
