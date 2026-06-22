/**
 * @id EXP_07_26_001_PASS_INT_SHIFT_BASIC
 * @expect compile-pass
 * @section 7.26
 * @design 验证int类型左移(<<)、有符号右移(>>)、无符号右移(>>>)的基本用法，操作数均为int类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testShiftIntBasic(): void {
  let a: int = 16
  let b: int = 2
  let r1: int = a << b    // 16 << 2 = 64
  let r2: int = a >> b    // 16 >> 2 = 4
  let r3: int = a >>> b   // 16 >>> 2 = 4
  let r4: int = 1 << 10   // literal shifts
  let r5: int = -16 >> 1  // negative signed right shift
  let r6: int = -16 >>> 1 // negative unsigned right shift
  console.log(r1.toString() + r2.toString() + r3.toString() +
              r4.toString() + r5.toString() + r6.toString())
}
