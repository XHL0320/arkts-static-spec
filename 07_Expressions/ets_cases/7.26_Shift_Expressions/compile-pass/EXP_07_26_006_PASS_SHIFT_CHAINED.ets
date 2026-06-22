/**
 * @id EXP_07_26_006_PASS_SHIFT_CHAINED
 * @expect compile-pass
 * @section 7.26
 * @design 验证链式移位操作，多个移位运算符连续使用
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testShiftChained(): void {
  let x: int = 1

  // 链式左移
  let r1: int = x << 1 << 2 << 3   // ((1<<1)<<2)<<3 = ((2)<<2)<<3 = 8<<3 = 64
  let r2: int = 8 >> 1 << 3        // (8>>1)<<3 = 4<<3 = 32

  // long链式移位
  let y: long = 1
  let r3: long = y << 10 << 10 << 10

  // 混合int移位类型
  let v: int = -1024
  let r4: int = v >> 2 >>> 1       // ((-1024>>2)>>>1)

  console.log(r1.toString() + r2.toString() + r3.toString() + r4.toString())
}
