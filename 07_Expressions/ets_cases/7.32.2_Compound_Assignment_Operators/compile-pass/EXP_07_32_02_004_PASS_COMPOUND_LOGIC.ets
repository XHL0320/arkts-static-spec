/**
 * @id EXP_07_32_02_004_PASS_COMPOUND_LOGIC
 * @expect compile-pass
 * @section 7.32.2
 * @design 复合赋值逻辑运算（&&= ||= ??=）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testCompoundLogic(): void {
  let a: boolean = true; let b: boolean = false
  a &&= true; b ||= true
  console.log(a.toString(), b.toString())
}
