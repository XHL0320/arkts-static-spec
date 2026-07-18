/**
 * @id EXP_07_26_010_FAIL_DOUBLE_SHIFT
 * @expect compile-fail
 * @section 7.26
 * @design Shift_Expressions中int+boolean关系运算类型不匹配
 * @note 对抗用例: Shift_Expressions中int与boolean关系运算应被编译器拒绝
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
