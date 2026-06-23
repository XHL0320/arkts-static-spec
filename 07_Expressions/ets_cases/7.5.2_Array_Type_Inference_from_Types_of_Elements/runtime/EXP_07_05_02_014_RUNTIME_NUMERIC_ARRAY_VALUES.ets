/**
 * @id EXP_07_05_02_014_RUNTIME_NUMERIC_ARRAY_VALUES
 * @expect runtime
 * @section 7.5.2
 * @design number[] 混合数值类型运行时值验证
 * @note 运行时用例：验证混合数值类型数组字面量值正确
 */
function main(): void {
  let d = [1, 2, 3]
  if (d[0] != 1 || d[1] != 2 || d[2] != 3) {
    throw new Error("assertion failed: numeric array values")
  }
  console.log("verified")
}
