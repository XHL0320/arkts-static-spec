/**
 * @id EXP_07_02_05_008_RUNTIME_ARRAY_LITERAL_ORDER
 * @expect runtime
 * @section 7.2.5
 * @design 数组字面量元素从左到右求值顺序：[e1, e2, e3] 中每个元素表达式按顺序求值
 * @note 运行时用例：验证 Resizable Array Creation 中数组字面量元素按 XYZ 顺序求值
 */
let trace: string = ""

function track(label: string): int {
  trace = trace + label
  return 1
}

function main(): void {
  let arr: int[] = [track("X"), track("Y"), track("Z")]
  if (trace != "XYZ") {
    throw new Error("array literal order fail: " + trace)
  }
  if (arr[0] + arr[1] + arr[2] != 3) {
    throw new Error("array literal value fail")
  }
  console.log("verified")
}
