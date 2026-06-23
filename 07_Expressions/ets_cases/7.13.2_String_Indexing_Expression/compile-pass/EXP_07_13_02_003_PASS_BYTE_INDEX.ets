/**
 * @id EXP_07_13_02_003_PASS_BYTE_INDEX
 * @expect compile-pass
 * @section 7.13.2
 * @design 验证 byte 类型作为字符串索引合法：byte 可加宽到 int
 * @note 正向用例：byte 变量作为字符串索引，编译通过
 */
function main(): void {
  let s: string = "hello";
  let b: byte = 0;
  let c: string = s[b];
}
