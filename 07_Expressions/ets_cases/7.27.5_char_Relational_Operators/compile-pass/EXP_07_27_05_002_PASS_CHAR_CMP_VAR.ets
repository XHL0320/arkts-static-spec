/**
 * @id EXP_07_27_05_002_PASS_CHAR_CMP_VAR
 * @expect compile-pass
 * @section 7.27.5
 * @design char 变量关系比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testCharCmpVar(): void {
  let a: char = c'x'
  let b: char = c'y'
  let r: boolean = a < b
  console.log(r.toString())
}
