/**
 * @id EXP2_17_01_02_005_PASS_CHAR_LT_INT
 * @expect compile-pass
 * @section 17.1.2
 * @design char 与 int 关系运算：验证 char < int, char > int, char <= int, char >= int
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharLtInt(): void {
  let c: char = c'a'
  let lt_int: boolean = c < 200
  let gt_int: boolean = c > 50
  let le_int: boolean = c <= 97
  let ge_int: boolean = c >= 97
  console.log(lt_int)
  console.log(gt_int)
  console.log(le_int)
  console.log(ge_int)
}
