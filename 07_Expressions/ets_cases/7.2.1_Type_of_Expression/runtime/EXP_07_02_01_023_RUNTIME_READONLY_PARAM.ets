/**
 * @id EXP_07_02_01_023_RUNTIME_READONLY_PARAM
 * @expect runtime
 * @section 7.2.1
 * @design readonly 数组参数正确传递和读取
 * @note 运行时用例：验证 readonly 数组参数运行时正确
 */
function sumArray(arr: readonly int[]): int {
  let s: int = 0
  for (let i: int = 0; i < arr.length; i++) {
    s += arr[i]
  }
  return s
}

function main(): void {
  let writable: int[] = [1, 2, 3, 4, 5]
  let r1 = sumArray(writable)
  if (r1 != 15) {
    throw new Error("assertion failed: sumArray(writable) != 15, got " + r1)
  }
  let readonly: readonly int[] = [10, 20, 30]
  let r2 = sumArray(readonly)
  if (r2 != 60) {
    throw new Error("assertion failed: sumArray(readonly) != 60, got " + r2)
  }
  console.log("verified")
}
