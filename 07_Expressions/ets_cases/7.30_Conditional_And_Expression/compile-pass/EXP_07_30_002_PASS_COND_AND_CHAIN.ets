/**
 * @id EXP_07_30_002_PASS_COND_AND_CHAIN
 * @expect compile-pass
 * @section 7.30
 * @design && 链式调用（左结合）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testCondAndChain(): void {
  let a: boolean = true; let b: boolean = true; let c: boolean = false
  let r: boolean = a && b && c
  console.log(r.toString())
}
