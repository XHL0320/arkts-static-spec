/**
 * @id EXP_07_7_32_0009_PASS_GEN_9
 * @expect compile-pass
 * @section 7.32
 * @design 补充用例9
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testGeneric(): void {
  let a: int = 10; let b: int = 20
  let r1: boolean = a < b; let r2: boolean = a <= b
  console.log(r1.toString(), r2.toString())
}
