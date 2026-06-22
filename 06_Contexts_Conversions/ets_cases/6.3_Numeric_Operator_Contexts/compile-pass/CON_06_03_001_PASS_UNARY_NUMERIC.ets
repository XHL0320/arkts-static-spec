/**
 * @id CON_06_03_001_PASS_UNARY_NUMERIC
 * @expect compile-pass
 * @section 6.3
 * @design 一元表达式: +int, -long, ~byte 等一元运算符对数值类型
 * @note 正向用例：验证一元数值运算编译通过
 */
function testUnaryNumeric(): void {
  let a: int = 10
  let r1: int = +a
  let r2: int = -a
  let r3: int = ~a

  let b: long = 100
  let r4: long = -b
  let r5: long = ~b

  let c: byte = 5
  let r6: int = -c
}
