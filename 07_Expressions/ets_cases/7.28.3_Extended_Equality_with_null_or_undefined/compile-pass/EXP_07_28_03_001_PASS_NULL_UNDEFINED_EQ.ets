/**
 * @id EXP_07_28_03_001_PASS_NULL_UNDEFINED_EQ
 * @expect compile-pass
 * @section 7.28.3
 * @design null == undefined 为 true
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testNullUndefinedEq(): void {
  let e1: boolean = null == undefined
  let e2: boolean = null === undefined
  console.log(e1.toString(), e2.toString())
}
