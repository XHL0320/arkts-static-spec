/**
 * @id EXP_07_05_01_027_RUNTIME_ARRAY_VIA_CAST
 * @expect runtime
 * @section 7.5.1
 * @design Cast 上下文数组字面量运行时值验证
 * @note 运行时用例：验证 cast 目标类型推断的数组字面量值正确
 */
function main(): void {
  let a = [10, 20, 30] as int[]
  if (a[0] != 10 || a[1] != 20 || a[2] != 30) {
    throw new Error("assertion failed: cast array values")
  }
  console.log("verified")
}
