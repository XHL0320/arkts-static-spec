/**
 * @id EXP_07_13_02_001_PASS_INT_LITERAL_INDEX
 * @expect compile-pass
 * @section 7.13.2
 * @design 验证 int 字面量作为字符串索引合法：索引表达式必须为 byte/short/int
 * @note 正向用例：int 字面量索引字符串，编译通过
 */
function main(): void {
  let s: string = "abc";
  let c: string = s[0];
  let c2: string = s[1];
  let c3: string = s[2];
}
