/**
 * @id EXP_07_35_04_001_PASS_LAMBDA_EVAL_NO_BODY
 * @expect compile-pass
 * @section 7.35.4
 * @design 验证 lambda 表达式求值本身不会执行 lambda 体：定义 lambda 并赋值给变量编译通过
 * @note 正向用例：lambda 表达式求值产生函数类型实例，不执行体
 */
function sideEffect(): void {
  let x: int = 1
}

let sideEffectFlag: boolean = false

// Lambda 定义赋值 — 此时体不应执行
const f1: () => int = () => { return 42 }
const f2: () => int = (): int => {
  sideEffectFlag = true
  return 99
}
const f3: () => string = () => { return "hello" }
let outer: int = 10
const f4: () => int = (): int => {
  outer = outer + 1
  return outer
}
