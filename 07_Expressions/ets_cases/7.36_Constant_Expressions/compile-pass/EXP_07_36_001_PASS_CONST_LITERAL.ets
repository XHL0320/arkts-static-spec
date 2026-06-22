/**
 * @id EXP_07_36_001_PASS_CONST_LITERAL
 * @expect compile-pass
 * @section 7.36
 * @design 常量表达式：字面量
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
const C1: int = 42
const C2: string = "hello"
const C3: boolean = true
function testConstLiteral(): void {
  console.log(C1.toString(), C2, C3.toString())
}
