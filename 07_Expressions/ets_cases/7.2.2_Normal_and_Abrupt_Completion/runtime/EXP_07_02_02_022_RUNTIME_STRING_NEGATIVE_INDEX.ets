/**
 * @id EXP_07_02_02_022_RUNTIME_STRING_NEGATIVE_INDEX
 * @expect runtime
 * @section 7.2.2
 * @design 验证字符串负索引时抛出 RangeError：索引 < 0
 * @note 运行时用例：验证该场景的运行时行为
 * @runtime-throws=RangeError
 */
function main(): void {
  let s: string = "abc";
  let c: string = s[-1];
  console.log("" + c);
}
