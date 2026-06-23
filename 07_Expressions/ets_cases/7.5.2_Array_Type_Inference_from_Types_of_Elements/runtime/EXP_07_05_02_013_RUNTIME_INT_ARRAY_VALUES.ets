/**
 * @id EXP_07_05_02_013_RUNTIME_INT_ARRAY_VALUES
 * @expect runtime
 * @section 7.5.2
 * @design int[] 字面量运行时值验证
 * @note 运行时用例：验证同类型 int 数组字面量值正确
 */
function main(): void {
  let c = [1, 2, 3]
  if (c[0] != 1 || c[1] != 2 || c[2] != 3) {
    throw new Error("assertion failed: int array values")
  }
  console.log("verified")
}
