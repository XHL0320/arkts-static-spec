/**
 * @id EXP2_17_04_01_026_RUNTIME_DIM_EVALUATED_BEFORE_ELEMENT
 * @expect runtime
 * @section 17.4.1
 * @design 求值顺序：验证维度表达式在元素表达式之前被求值
 * @note 运行时用例：使用全局标志验证求值顺序符合规范（维度先于元素）
 */
let dimEvaluated: boolean = false

function computeDim(): int {
  dimEvaluated = true
  return 3
}

function computeElem(): int {
  if (!dimEvaluated) {
    throw new Error("assertion failed: dimension should be evaluated before element expression")
  }
  return 42
}

function main(): void {
  let arr: int[] = new int[computeDim()] (computeElem())
  // Verify array was created correctly
  if (arr.length != 3) {
    throw new Error("assertion failed: array length should be 3, got " + arr.length)
  }
  if (arr[0] != 42) {
    throw new Error("assertion failed: arr[0] should be 42, got " + arr[0])
  }
  if (arr[2] != 42) {
    throw new Error("assertion failed: arr[2] should be 42, got " + arr[2])
  }
  console.log("verified")
}
