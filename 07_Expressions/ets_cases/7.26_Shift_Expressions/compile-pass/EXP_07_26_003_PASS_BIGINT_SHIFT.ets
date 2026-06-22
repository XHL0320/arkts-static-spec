/**
 * @id EXP_07_26_003_PASS_BIGINT_SHIFT
 * @expect compile-pass
 * @section 7.26
 * @design 验证bigint类型的左移(<<)和有符号右移(>>)，bigint不支持无符号右移(>>>)
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testShiftBigint(): void {
  let a: bigint = 16n
  let b: bigint = 2n
  let r1: bigint = a << b  // 16n << 2n = 64n
  let r2: bigint = a >> b  // 16n >> 2n = 4n
  // bigint无符号右移不支持，不在此测试

  let big: bigint = 12345678901234567890n
  let shift: bigint = 10n
  let rb1: bigint = big << shift
  let rb2: bigint = big >> shift
  console.log(r1.toString() + r2.toString() +
              rb1.toString() + rb2.toString())
}
