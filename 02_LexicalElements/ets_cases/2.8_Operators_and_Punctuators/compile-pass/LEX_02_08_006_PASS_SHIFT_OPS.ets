/**
 * @id LEX_02_08_006_PASS_SHIFT_OPS
 * @expect compile-pass
 * @section 2.8
 * @design 移位运算符 << >> >>> 在整数上的使用
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testShiftOps(): void {
  let a: int = 16
  let r1: int = a << 2
  let r2: int = a >> 2
  let r3: int = a >>> 2
  let neg: int = -16
  let r4: int = neg >>> 1
}
