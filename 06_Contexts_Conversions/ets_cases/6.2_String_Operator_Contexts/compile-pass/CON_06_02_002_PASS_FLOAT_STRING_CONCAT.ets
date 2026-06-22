/**
 * @id CON_06_02_002_PASS_FLOAT_STRING_CONCAT
 * @expect compile-pass
 * @section 6.2
 * @design String context: 浮点类型(double/float) + string，十进制形式不丢失信息
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testFloatStringConcat(): void {
  let s1: string = "pi: " + 3.14
  let s2: string = 2.72 + " (e)"
  let s3: string = "zero: " + 0.0

  let d: double = 1.5
  let s4: string = d + " is double"
  let s5: string = "double: " + d
}
