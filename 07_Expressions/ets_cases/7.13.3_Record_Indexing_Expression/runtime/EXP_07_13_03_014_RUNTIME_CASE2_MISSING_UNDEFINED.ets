/**
 * @id EXP_07_13_03_014_RUNTIME_CASE2_MISSING_UNDEFINED
 * @expect runtime
 * @section 7.13.3
 * @design Case 2: 验证非字面量 Key 的 Record 索引缺失时返回 undefined
 * @note 运行时用例：Record<number, string> 中 x[3] 不存在，返回 undefined
 */
function main(): void {
  let x: Record<number, string> = {
    1: "hello",
    2: "bye"
  };
  let s: string | undefined = x[1];
  if (s != "hello") {
    throw new Error("assertion failed: expected hello, got " + s);
  }
  let s2: string | undefined = x[3];
  if (s2 != undefined) {
    throw new Error("assertion failed: expected undefined, got " + s2);
  }
  console.log("verified");
}
