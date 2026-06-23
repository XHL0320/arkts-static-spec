/**
 * @id EXP_07_26_005_PASS_SHIFT_GROUPING
 * @expect compile-pass
 * @section 7.26
 * @design 验证移位运算符左结合性（从左到右分组），a << b >> c = ((a << b) >> c)
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testShiftGrouping(): void {
  let a: int = 2
  let b: int = 4
  let c: int = 1

  // 左结合：2 << 4 >> 1 = (2 << 4) >> 1 = 32 >> 1 = 16
  let r1: int = a << b >> c

  // 显式括号验证分组
  let r2: int = (a << b) >> c

  // 同样左结合：a >> b << c = (a >> b) << c
  let r3: int = a >> b << c

  // 不同优先级组合
  let r4: int = 1 << 3 + 2  // +优先级高于<<，等价于1 << (3 + 2) = 1 << 5 = 32
  let r5: int = (1 << 3) + 2 // 显式移位优先再加法

  console.log(r1.toString() + r2.toString() + r3.toString() +
              r4.toString() + r5.toString())
}
