/**
 * @id EXP_07_04_01_002_PASS_FUNCTION_REF_TYPE_INFERENCE
 * @expect compile-pass
 * @section 7.4.1
 * @design 函数引用类型推导：验证不同签名的函数引用类型推导正确
 * @note 正向用例：验证多参数、无参数、void 返回等函数签名的引用编译通过
 */
function add(a: number, b: number): number {
  return a + b
}

function greet(): string {
  return "hello"
}

function log(msg: string): void {
  console.log(msg)
}

let f1 = add   // (a: number, b: number) => number
let f2 = greet // () => string
let f3 = log   // (msg: string) => void
