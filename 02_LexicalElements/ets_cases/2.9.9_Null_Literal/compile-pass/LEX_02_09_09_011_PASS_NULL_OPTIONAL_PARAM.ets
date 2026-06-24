/**
 * @id LEX_02_09_09_011_PASS_NULL_OPTIONAL_PARAM
 * @expect compile-pass
 * @section 2.9.9
 * @design null 在可选参数中
 * @note compile-pass 用例：验证 null 在可选参数中的使用
 */

// null 在可选参数中
function test1(x: int | null = null): int {
  return x === null ? 0 : x
}

function test2(x: string | null = null): string {
  return x === null ? "" : x
}

let r1 = test1(null)
let r2 = test2(null)
