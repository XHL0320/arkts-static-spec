/**
 * @id CON_06_03_01_010_PASS_NUMERIC_ENUM_RELATIONAL
 * @expect compile-pass
 * @section 6.3.1
 * @design 关系运算符: 数值基类型枚举用于关系比较（枚举值作为其基类型参与）
 * @note 正向用例：验证该特性编译通过的正确用法
 */
enum Priority {
  Low,
  Medium,
  High
}

function testNumericEnumRelational(): void {
  let a: int = 1
  let r1: boolean = Priority.Medium > a
  let r2: boolean = Priority.Low < a
  let r3: boolean = Priority.High >= Priority.Medium
}
