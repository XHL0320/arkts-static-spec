/**
 * @id CON_06_01_035_RUNTIME_COMPOSITE_ARRAY
 * @expect runtime
 * @section 6.1
 * @design 复合字面量上下文（数组）运行时行为：数组元素值正确初始化
 * @note 运行时用例：实际执行验证数组字面量元素赋值语义
 */
function main(): void {
  let arr: int[] = [10, 20, 30]
  if (arr.length != 3) {
    throw new Error("assertion failed: arr.length expected 3, got " + arr.length)
  }
  if (arr[0] != 10) {
    throw new Error("assertion failed: arr[0] expected 10, got " + arr[0])
  }
  if (arr[1] != 20) {
    throw new Error("assertion failed: arr[1] expected 20")
  }
  if (arr[2] != 30) {
    throw new Error("assertion failed: arr[2] expected 30")
  }

  let strArr: string[] = ["a", "b", "c"]
  if (strArr[0] != "a") {
    throw new Error("assertion failed: strArr[0] expected 'a'")
  }
  if (strArr[1] != "b") {
    throw new Error("assertion failed: strArr[1] expected 'b'")
  }

  console.log("Composite array context verified")
}
