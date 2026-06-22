/**
 * @id EXP_07_26_002_PASS_LONG_SHIFT_BASIC
 * @expect compile-pass
 * @section 7.26
 * @design 验证long类型左移(<<)、有符号右移(>>)、无符号右移(>>>)的基本用法
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testShiftLongBasic(): void {
  let a: long = 1024
  let b: long = 3
  let r1: long = a << b     // 1024 << 3 = 8192
  let r2: long = a >> b     // 1024 >> 3 = 128
  let r3: long = a >>> b    // 1024 >>> 3 = 128
  let r4: long = 1 << 40    // literal long shift (within 64 bit)
  let r5: long = -2048 >> 2 // negative long signed right shift
  let r6: long = -2048 >>> 2 // negative long unsigned right shift
  console.log(r1.toString() + r2.toString() + r3.toString() +
              r4.toString() + r5.toString() + r6.toString())
}
