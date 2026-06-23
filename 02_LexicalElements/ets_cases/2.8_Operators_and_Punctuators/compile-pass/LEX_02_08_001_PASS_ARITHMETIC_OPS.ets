/**
 * @id LEX_02_08_001_PASS_ARITHMETIC_OPS
 * @expect compile-pass
 * @section 2.8
 * @design 算术运算符 + - * / % ** 在数值类型上的基本组合
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testArithmeticOps(): void {
  let a: number = 10
  let b: number = 3
  let r1: number = a + b
  let r2: number = a - b
  let r3: number = a * b
  let r4: number = a / b
  let r5: number = a % b
  let r6: number = a ** b
  let s: string = "Hello, " + "World"
}
