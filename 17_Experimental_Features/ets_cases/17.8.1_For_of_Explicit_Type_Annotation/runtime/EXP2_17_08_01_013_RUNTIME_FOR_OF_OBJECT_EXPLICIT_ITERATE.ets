/**
 * @id EXP2_17_08_01_013_RUNTIME_FOR_OF_OBJECT_EXPLICIT_ITERATE
 * @expect runtime
 * @section 17.8.1
 * @design for-of 显式 Object 类型遍历 int[]：运行时验证 int 装箱为 Object，迭代正常
 * @note 运行时用例：实际执行验证 Object 类型标注的 for-of 循环迭代行为
 */
function main(): void {
  let arr: int[] = [100, 200, 300]
  let sum: int = 0
  for (let obj: Object of arr) {
    if (obj instanceof Object) {
      // Boxed int is an Object
      sum = sum + 1
    }
  }
  if (sum != 3) {
    throw new Error("assertion failed: expected 3 Object instances but got " + sum)
  }
  console.log("verified")
}
