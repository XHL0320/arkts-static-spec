/**
 * @id LEX_02_09_09_009_PASS_NULL_DEFAULT_PARAM
 * @expect compile-pass
 * @section 2.9.9
 * @design null 作为默认参数值
 * @note compile-pass 用例：验证 null 作为函数默认参数值
 */

// null 作为默认参数值（可选参数）
function test1(x: int | null = null): int {
  return x === null ? 0 : x
}

function test2(x: string | null = null): string {
  return x === null ? "" : x
}

let r1 = test1()
let r2 = test2()
let r3 = test1(42)
let r4 = test2("hello")
