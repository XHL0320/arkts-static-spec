/**
 * @id LEX_02_09_08_010_PASS_UNDEFINED_UNION_TYPE
 * @expect compile-pass
 * @section 2.9.8
 * @design undefined 在联合类型中
 * @note compile-pass 用例：验证 undefined 在联合类型中的使用
 */

// undefined 在联合类型中
let x1: int | undefined = undefined
let x2: string | undefined = undefined
let x3: boolean | undefined = undefined
let x4: number | undefined = undefined
