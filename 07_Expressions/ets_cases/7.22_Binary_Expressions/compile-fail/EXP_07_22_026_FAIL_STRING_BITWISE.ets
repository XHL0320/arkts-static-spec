/**
 * @id EXP_07_22_026_FAIL_STRING_BITWISE
 * @expect compile-fail
 * @section 7.22
 * @design 验证字符串按位与 string & string 产生编译时错误。
 *         类型组合表规定 & 仅支持 boolean 或数值类型，
 *         string 不在其中。
 * @note 反向用例：字符串在位运算符中应报编译时错误
 */
function main(): void {
  let a: string = "abc"
  let b: string = "def"
  let c = a & b
}
main()
