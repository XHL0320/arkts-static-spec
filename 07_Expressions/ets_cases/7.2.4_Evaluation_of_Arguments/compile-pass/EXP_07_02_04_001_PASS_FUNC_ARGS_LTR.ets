/**
 * @id EXP_07_02_04_001_PASS_FUNC_ARGS_LTR
 * @expect compile-pass
 * @section 7.2.4
 * @design 函数调用参数从左到右求值基本编译通过：三个参数各自独立计算，验证参数求值顺序不影响编译
 * @note 正向用例：验证函数调用参数表达式从左到右编译的正确性
 */
function argA(x: int): int {
  return x + 1
}

function argB(x: int): int {
  return x + 2
}

function argC(x: int): int {
  return x + 3
}

function test(a: int, b: int, c: int): int {
  return a + b + c
}

let result: int = test(argA(10), argB(20), argC(30))
