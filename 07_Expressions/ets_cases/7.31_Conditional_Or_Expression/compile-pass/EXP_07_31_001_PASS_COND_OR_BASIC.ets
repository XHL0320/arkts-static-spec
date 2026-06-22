/**
 * @id EXP_07_31_001_PASS_COND_OR_BASIC
 * @expect compile-pass
 * @section 7.31
 * @design || 基本短路求值
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testCondOrBasic(): void {
  let a: boolean = true; let b: boolean = false
  let r1: boolean = a || b; let r2: boolean = b || false
  console.log(r1.toString(), r2.toString())
}
