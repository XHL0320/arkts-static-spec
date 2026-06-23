/**
 * @id EXP_07_26_010_FAIL_FLOAT_DOUBLE_TRUNCATION_NOTE
 * @expect compile-pass
 * @section 7.26
 * @design 验证float/double作为移位操作数时被截断为long/int的规则——float截断为int，double截断为long
 * @note 正向用例：虽然文件名含FAIL，但此为记录截断行为的正向编译通过用例。float操作数截断为int，double截断为long。
 */
function testShiftFloatDoubleTruncation(): void {
  // float作为左操作数，截断为int；float作为右操作数也截断为int
  let f: float = 16.7
  let s: int = 2
  let r1: int = f << s   // f截断为int: 16 << 2 = 64

  // double作为左操作数，截断为long；double作为右操作数截断为int
  let d: double = 32.9
  let r2: long = d >> s  // d截断为long: 32 >> 2 = 8

  console.log(r1.toString() + r2.toString())
}
