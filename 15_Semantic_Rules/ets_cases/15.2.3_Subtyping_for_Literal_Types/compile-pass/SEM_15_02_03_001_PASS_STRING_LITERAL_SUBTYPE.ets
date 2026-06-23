/**
 * @id SEM_15_02_03_001_PASS_STRING_LITERAL_SUBTYPE
 * @expect compile-pass
 * @section 15.2.3
 * @design 验证字符串字面量类型是其基础类型 string 的子类型
 * @note 正向用例："hello" 字面量类型 <: string，可赋值给 string
 */
function acceptString(s: string): string { return s.toUpperCase(); }
function main(): void {
    let literal: "hello" = "hello";
    let str: string = literal;
    let result: string = acceptString(literal);
    console.log(`Result: ${result}`);
}
