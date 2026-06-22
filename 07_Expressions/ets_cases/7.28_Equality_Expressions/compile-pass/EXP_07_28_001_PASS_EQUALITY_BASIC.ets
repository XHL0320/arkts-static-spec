/**
 * @id EXP_07_28_001_PASS_EQUALITY_BASIC
 * @expect compile-pass
 * @section 7.28
 * @design 基本相等运算（== === != !==）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testEqualityBasic(): void {
  let e1: boolean = 5 == 5; let e2: boolean = 5 === 5
  let e3: boolean = 5 != 5; let e4: boolean = 5 !== 5
  let e5: boolean = "a" == "a"; let e6: boolean = true == true
  console.log(e1.toString(), e2.toString(), e3.toString(), e4.toString())
}
