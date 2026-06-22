/**
 * @id EXP_07_31_002_PASS_COND_OR_CHAIN
 * @expect compile-pass
 * @section 7.31
 * @design || 链式调用（左结合）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testCondOrChain(): void {
  let a: boolean = false; let b: boolean = false; let c: boolean = true
  let r: boolean = a || b || c
  console.log(r.toString())
}
