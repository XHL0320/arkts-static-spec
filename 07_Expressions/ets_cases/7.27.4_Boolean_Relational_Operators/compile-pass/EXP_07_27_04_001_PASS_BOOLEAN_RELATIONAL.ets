/**
 * @id EXP_07_27_04_001_PASS_BOOLEAN_RELATIONAL
 * @expect compile-pass
 * @section 7.27.4
 * @design 布尔关系比较（false < true）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testBooleanRelational(): void {
  let a: boolean = false; let b: boolean = true
  let c1: boolean = a < b
  let c2: boolean = a > b
  let c3: boolean = a <= b
  let c4: boolean = a >= b
  let c5: boolean = a < a
  let c6: boolean = b <= b
  console.log(c1.toString(), c2.toString(), c3.toString(), c4.toString())
}
