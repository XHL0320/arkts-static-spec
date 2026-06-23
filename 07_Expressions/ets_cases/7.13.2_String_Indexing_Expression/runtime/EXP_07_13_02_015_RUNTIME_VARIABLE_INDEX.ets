/**
 * @id EXP_07_13_02_015_RUNTIME_VARIABLE_INDEX
 * @expect runtime
 * @section 7.13.2
 * @design 验证 int 变量作为字符串索引运行时正确性
 * @note 运行时用例：int 变量作为字符串索引访问字符
 */
function main(): void {
  let s: string = "hello";
  let idx: int = 1;
  let c: string = s[idx];
  if (c != "e") {
    throw new Error("assertion failed: expected e, got " + c);
  }
  idx = 3;
  let c2: string = s[idx];
  if (c2 != "l") {
    throw new Error("assertion failed: expected l, got " + c2);
  }
  console.log("verified");
}
