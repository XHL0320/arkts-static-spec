/**
 * @id EXP_07_13_02_017_RUNTIME_NEGATIVE_INDEX
 * @expect runtime
 * @runtime-throws=RangeError
 * @section 7.13.2
 * @design 验证字符串负索引时抛出 RangeError：索引 < 0
 * @note 运行时用例：负索引字符串时抛出 RangeError
 */
function main(): void {
  let s: string = "abc";
  let c: string = s[-1];
  console.log("" + c);
}
