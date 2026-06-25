/**
 * @id EXP2_FuncOverload_ReturnValue_runtime
 * @expect runtime
 * @section 17.9.1
 * @design overload 调用返回正确值
 * @note 运行时用例：验证返回值的正确性
 */
function lenStr(s: string): int { return s.length }
function lenArr<T>(arr: T[]): int { return arr.length }
overload lengthOf { lenStr, lenArr }

function main(): void {
  let s: string = "hello"
  let n: int = lengthOf(s)
  if (n != 5) {
    throw new Error("Expected 5, got " + n)
  }

  let arr: int[] = [1, 2, 3, 4, 5]
  let m: int = lengthOf(arr)
  if (m != 5) {
    throw new Error("Expected 5, got " + m)
  }

  console.log("Return value dispatch verified")
}
