/**
 * @id EXP_07_13_02_016_RUNTIME_OUT_OF_BOUNDS
 * @expect runtime
 * @runtime-throws=RangeError
 * @section 7.13.2
 * @design 验证字符串索引越界时抛出 RangeError：索引 ≥ 字符串长度
 * @note 运行时用例：索引大于等于字符串长度时抛出 RangeError
 */
function main(): void {
  let s: string = "abc";
  let c: string = s[10];
  console.log("" + c);
}
