/**
 * @id LEX_02_09_08_011_PASS_UNDEFINED_OPTIONAL_PARAM
 * @expect compile-pass
 * @section 2.9.8
 * @design undefined 在可选参数中
 * @note compile-pass 用例：验证 undefined 在可选参数中的使用
 */

// undefined 在可选参数中
function test1(x?: int): int {
  return x === undefined ? 0 : x
}

function test2(x?: string): string {
  return x === undefined ? "" : x
}

let r1 = test1()
let r2 = test2()
