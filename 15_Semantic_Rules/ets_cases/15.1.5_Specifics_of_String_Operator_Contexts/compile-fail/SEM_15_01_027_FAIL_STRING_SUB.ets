/**
 * @id SEM_15_01_027
 * @expect compile-fail
 * @section 15.1.5
 * @design 验证二进制运算符 '-' 不可用于字符串：string - string 无效
 * @note 反向用例：字符串不支持减法运算
 */
function main(): void {
    let r = "hello" - "o";
}
