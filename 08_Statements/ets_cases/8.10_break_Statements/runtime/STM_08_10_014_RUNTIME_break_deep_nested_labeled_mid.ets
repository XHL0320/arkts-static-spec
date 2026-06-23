/**
 * @id STM_08_10_014_RUNTIME_break_deep_nested_labeled_mid
 * @expect runtime
 * @section 8.10
 * @design 3层嵌套循环中 labeled break 跳出中间层
 * @note 运行时用例：break mid_label 跳出中间循环，验证外层继续迭代
 */
function main(): void {
  let outerCount: int = 0
  let innerCount: int = 0

  outer:
  for (let i: int = 0; i < 3; i++) {
    outerCount++
    mid:
    for (let j: int = 0; j < 5; j++) {
      for (let k: int = 0; k < 5; k++) {
        innerCount++
        if (j == 2) { break mid }
      }
    }
  }

  if (outerCount != 3) { throw new Error("outer should run 3 times") }
  // per outer: j=0(inner:5), j=1(inner:5), j=2(inner:1 then break) = 11
  // 3 * 11 = 33
  if (innerCount != 33) { throw new Error("Expected innerCount=33, got " + innerCount) }

  console.log("verified")
}
