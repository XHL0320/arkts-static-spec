/**
 * @id EXP_07_05_01_025_RUNTIME_BASIC_ARRAY_VALUES
 * @expect runtime
 * @section 7.5.1
 * @design 数组字面量运行时值验证
 * @note 运行时用例：验证变量声明类型标注上下文的数组字面量值正确
 */
function main(): void {
  let a: int[] = [1, 2, 3]
  if (a[0] != 1 || a[1] != 2 || a[2] != 3) {
    throw new Error("assertion failed: array values")
  }
  console.log("verified")
}
