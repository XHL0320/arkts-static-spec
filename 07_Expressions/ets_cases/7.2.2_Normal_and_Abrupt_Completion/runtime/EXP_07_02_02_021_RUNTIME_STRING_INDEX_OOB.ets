/**
 * @id EXP_07_02_02_021_RUNTIME_STRING_INDEX_OOB
 * @expect runtime
 * @section 7.2.2
 * @design 验证字符串索引越界时抛出 RangeError：索引 ≥ 字符串长度
 * @note 运行时用例：验证该场景的运行时行为
 * @runtime-throws=RangeError
 */
function main(): void {
  let s: string = "abc";
  let c: string = s[10];
  console.log("" + c);
}
