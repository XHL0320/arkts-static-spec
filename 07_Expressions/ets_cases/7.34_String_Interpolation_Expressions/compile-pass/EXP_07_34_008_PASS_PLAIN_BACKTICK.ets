/**
 * @id EXP_07_34_008_PASS_PLAIN_BACKTICK
 * @expect compile-pass
 * @section 7.34
 * @design 验证纯多行反引号字符串（不含嵌入表达式）的编译通过：反引号可作为普通多行字符串字面量使用
 * @note 正向用例：不含 ${} 的反引号字符串是有效字符串字面量，应编译通过
 */
function main(): void {
  // 纯反引号字符串（不含嵌入表达式）
  let r1: string = `hello world`;

  // 多行反引号字符串
  let r2: string = `first line
second line
third line`;

  // 含特殊字符
  let r3: string = `tab\there and newline\nhere`;

  // 与普通字符串相等
  let r4: string = `plain string`;

  console.log("done");
}
