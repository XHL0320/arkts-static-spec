/**
 * @id EXP_07_28_03_003_PASS_NULL_SELF_EQ
 * @expect compile-pass
 * @section 7.28.3
 * @design null == null 和 undefined == undefined
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testNullSelfEq(): void {
  let e1: boolean = null == null; let e2: boolean = undefined == undefined
  let e3: boolean = null === null; let e4: boolean = undefined === undefined
  console.log(e1.toString(), e2.toString(), e3.toString(), e4.toString())
}
