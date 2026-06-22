/**
 * @id SEM_15_01_023
 * @expect compile-fail
 * @section 15.1.4
 * @design 验证非数值运算符不可用于数值：boolean + int 无效
 * @note 反向用例：boolean 和 int 不能相加
 */
function main(): void {
    let r = true + 1;
}
