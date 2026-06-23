/**
 * @id EXP_07_25_01_001_PASS_STRING_STRING_BASIC
 * @expect compile-pass
 * @section 7.25.1
 * @design 验证 string + string 基本拼接编译通过
 * @note 正向用例：字符串拼接的基本形式，LHS+RHS 拼接为新字符串
 */
function main(): void {
    let a: string = "Hello";
    let b: string = "World";
    let s: string = a + b;
}
