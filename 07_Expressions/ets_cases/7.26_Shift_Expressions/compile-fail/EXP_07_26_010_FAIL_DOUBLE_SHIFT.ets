/**
 * @id EXP_07_26_010_FAIL_DOUBLE_SHIFT
 * @expect compile-fail
 * @section 7.26
 * @design float/double 作为移位操作数：spec §7.26 规定先截断为 int/long 后运算（应编译通过）；es2panda 当前报 ESE0318 拒绝编译
 * @note 负向看护（D 类）：spec §7.26 允许 float/double 移位（截断为 int/long），es2panda 未实现该截断规则、报 ESE0318 编译失败；行为与 spec 相反，见 issue_report。待 es2panda 实现截断后转为 compile-pass。
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
