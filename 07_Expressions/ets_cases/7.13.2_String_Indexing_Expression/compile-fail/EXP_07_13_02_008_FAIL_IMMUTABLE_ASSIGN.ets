/**
 * @id EXP_07_13_02_008_FAIL_IMMUTABLE_ASSIGN
 * @expect compile-fail
 * @section 7.13.2
 * @design 验证字符串不可变性：通过索引修改字符串元素为编译时错误
 * @note 反向用例：字符串是不可变的，x[1] = "d" 应产生编译时错误
 */
function main(): void {
  let s: string = "abc";
  s[1] = "d";
}
