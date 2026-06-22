/**
 * @id CON_06_03_01_011_PASS_NUMERIC_ENUM_EQUALITY
 * @expect compile-pass
 * @section 6.3.1
 * @design 相等运算符: 数值基类型枚举用于相等比较
 * @note 正向用例：验证该特性编译通过的正确用法
 */
enum Level {
  A,
  B,
  C
}

function testNumericEnumEquality(): void {
  let r1: boolean = Level.A == Level.B
  let r2: boolean = Level.A != Level.B
  let r3: boolean = Level.A == Level.A
}
