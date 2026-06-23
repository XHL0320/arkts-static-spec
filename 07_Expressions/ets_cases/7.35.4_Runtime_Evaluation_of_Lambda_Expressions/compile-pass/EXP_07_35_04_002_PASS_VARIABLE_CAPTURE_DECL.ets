/**
 * @id EXP_07_35_04_002_PASS_VARIABLE_CAPTURE_DECL
 * @expect compile-pass
 * @section 7.35.4
 * @design 验证变量捕获声明编译通过：lambda 捕获外部 let 变量
 * @note 正向用例：lambda 可以捕获外部变量（let 声明的局部变量）
 */

// 函数作用域捕获声明
function captureFunction(): () => int {
  let v: int = 0
  // 捕获 v
  return (): int => {
    v++
    return v
  }
}

// 捕获外部作用域变量
let capturedVar: int = 42
const reader: () => int = (): int => {
  return capturedVar
}

// 捕获多个变量
let a: int = 1
let b: string = "hello"
let c: boolean = true
const multiCapture: () => int = (): int => {
  if (c) {
    return a
  }
  return 0
}
