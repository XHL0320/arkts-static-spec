/**
 * @id EXP_07_13_02_014_RUNTIME_CHAR_ACCESS
 * @expect runtime
 * @section 7.13.2
 * @design 验证字符串索引元素访问运行时正确性：索引访问返回 string 类型字符
 * @note 运行时用例：验证字符串索引访问结果正确性（首、中、尾字符）
 */
function main(): void {
  let s: string = "arkts";
  let c0: string = s[0];
  if (c0 != "a") {
    throw new Error("assertion failed: expected a, got " + c0);
  }
  let c2: string = s[2];
  if (c2 != "k") {
    throw new Error("assertion failed: expected k, got " + c2);
  }
  let c4: string = s[4];
  if (c4 != "s") {
    throw new Error("assertion failed: expected s, got " + c4);
  }
  console.log("verified");
}
