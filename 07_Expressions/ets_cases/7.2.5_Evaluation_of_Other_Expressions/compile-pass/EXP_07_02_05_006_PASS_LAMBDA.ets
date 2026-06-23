/**
 * @id EXP_07_02_05_006_PASS_LAMBDA
 * @expect compile-pass
 * @section 7.2.5
 * @design Lambda 表达式基本编译通过：箭头函数创建和调用，验证 lambda 表达式编译正确性
 * @note 正向用例：验证 Lambda Expressions 编译通过
 */
function apply(f: (x: int) => int, v: int): int {
  return f(v)
}

let dbl: (x: int) => int = (x: int): int => x * 2
let triple: (x: int) => int = (x: int): int => x * 3

let r1: int = dbl(5)
let r2: int = triple(5)
let r3: int = apply((x: int): int => x + 1, 10)
