/**
 * @id EXP_07_33_003_PASS_TERNARY_COMPILE_KNOWN
 * @expect compile-pass
 * @section 7.33
 * @design 编译期已知条件 → 类型收窄
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testTernaryCompileKnown(): void {
  const condition: boolean = true
  let t1: string = condition ? "yes" : "no"
  console.log(t1)
}
