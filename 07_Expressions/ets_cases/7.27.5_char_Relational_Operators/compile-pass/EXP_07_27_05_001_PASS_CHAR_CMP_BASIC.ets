/**
 * @id EXP_07_27_05_001_PASS_CHAR_CMP_BASIC
 * @expect compile-pass
 * @section 7.27.5
 * @design char 类型基本关系比较（码元比较）
 * @note 正向用例：验证该特性编译通过的正确用法。ArkTS char 字面量使用 c'x' 形式。
 */
function testCharCmpBasic(): void {
  let a: char = c'a'
  let b: char = c'b'
  let c1: boolean = a < b
  let c2: boolean = a > b
  let c3: boolean = a <= b
  let c4: boolean = a >= b
  console.log(c1.toString(), c2.toString(), c3.toString(), c4.toString())
}
