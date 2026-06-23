/**
 * @id EXP_07_32_02_004_PASS_COMPOUND_LOGIC
 * @expect compile-pass
 * @section 7.32.2
 * @design 复合赋值逻辑运算（&= |= ^= 用于 boolean）
 * @note 正向用例：验证该特性编译通过的正确用法。&&= 和 ||= 在 es2panda 中暂不支持。
 */
function testCompoundLogic(): void {
  let a: boolean = true
  let b: boolean = false
  a = a && true
  b = b || true
  let c: boolean = true
  let d: boolean = false
  let e: boolean = c && d
  console.log(a.toString(), b.toString(), e.toString())
}
