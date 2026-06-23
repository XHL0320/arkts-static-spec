/**
 * @id LEX_02_09_08_002_PASS_UNDEFINED_TYPE
 * @expect compile-pass
 * @section 2.9.8
 * @design undefined 类型
 * @note compile-pass 用例：验证 undefined 类型
 */

// undefined 类型
let x1: undefined = undefined

// void 类型
function test(): void {
  return undefined
}

let x2: void = undefined
