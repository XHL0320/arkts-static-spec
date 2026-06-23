/**
 * @id EXP_07_35_04_004_RUNTIME_CAPTURE_SEMANTICS
 * @expect runtime
 * @section 7.35.4
 * @design 验证捕获变量不是拷贝：修改捕获变量反映到原始变量（对应 spec 示例 1-2）
 * @note 运行时用例：捕获变量是引用语义而非拷贝语义
 */
function main(): void {
  // Spec example 1: captured variable is not a copy
  // function foo() {
  //   let y: int = 1
  //   let x = () => { return y+1 } // 'y' is *captured*.
  //   console.log(x()) // Output: 2
  // }
  let y: int = 1
  let x1 = (): int => { return y + 1 }
  let r1: int = x1()
  if (r1 != 2) {
    throw new Error("assertion failed 1: expected 2, got " + r1)
  }

  // Spec example 2: modify captured variable, original changes
  // function foo() {
  //   let y: int = 1
  //   let x = () => { y++ } // 'y' is *captured*.
  //   console.log(y) // Output: 1
  //   x()
  //   console.log(y) // Output: 2
  // }
  let z: int = 1
  let x2 = (): void => { z++ }
  if (z != 1) {
    throw new Error("assertion failed 2a: expected 1 before capture, got " + z)
  }
  x2()
  if (z != 2) {
    throw new Error("assertion failed 2b: expected 2 after capture, got " + z)
  }

  // 扩展验证：修改原始变量，捕获 lambda 返回值也变化
  let v: int = 5
  let reader: () => int = (): int => { return v }

  if (reader() != 5) {
    throw new Error("assertion failed 3a: expected 5, got " + reader())
  }
  v = 10
  if (reader() != 10) {
    throw new Error("assertion failed 3b: expected 10 after var change, got " + reader())
  }
  v = 100
  if (reader() != 100) {
    throw new Error("assertion failed 3c: expected 100 after var change, got " + reader())
  }

  console.log("verified")
}
