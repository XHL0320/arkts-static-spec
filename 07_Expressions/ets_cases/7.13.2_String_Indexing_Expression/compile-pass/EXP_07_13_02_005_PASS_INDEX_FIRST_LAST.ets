/**
 * @id EXP_07_13_02_005_PASS_INDEX_FIRST_LAST
 * @expect compile-pass
 * @section 7.13.2
 * @design 验证字符串首尾索引正确性：索引 0 和索引 len-1
 * @note 正向用例：字符串首尾字符索引，编译通过
 */
function main(): void {
  let s: string = "world";
  let first: string = s[0];
  let last: string = s[4];
}
