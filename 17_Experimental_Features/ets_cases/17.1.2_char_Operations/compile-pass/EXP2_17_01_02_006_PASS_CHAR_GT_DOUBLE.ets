/**
 * @id EXP2_17_01_02_006_PASS_CHAR_GT_DOUBLE
 * @expect compile-pass
 * @section 17.1.2
 * @design char 与 double 关系运算：验证 char > double（spec 示例: c > 3.14）
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharGtDouble(): void {
  let c: char = c'a'
  let gt_double: boolean = c > 3.14
  let lt_double: boolean = c < 200.5
  let eq_double: boolean = c == 97.0
  console.log(gt_double)
  console.log(lt_double)
  console.log(eq_double)
}
