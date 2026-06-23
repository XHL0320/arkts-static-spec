/**
 * @id EXP2_17_08_01_011_RUNTIME_FOR_OF_INT_EXPLICIT_ITERATE
 * @expect runtime
 * @section 17.8.1
 * @design for-of 显式 int 类型遍历 int[]：运行时验证每次迭代值和循环总次数
 * @note 运行时用例：实际执行验证带有显式类型注释的 for-of 循环迭代行为
 */
function main(): void {
  let arr: int[] = [10, 20, 30, 40, 50]
  let expectedValues: int[] = [10, 20, 30, 40, 50]
  let idx: int = 0
  for (let v: int of arr) {
    if (v != expectedValues[idx]) {
      throw new Error("assertion failed: expected " + expectedValues[idx] + " but got " + v)
    }
    idx = idx + 1
  }
  if (idx != 5) {
    throw new Error("assertion failed: expected 5 iterations but got " + idx)
  }
  console.log("verified")
}
