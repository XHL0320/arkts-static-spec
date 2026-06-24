/**
 * @id LEX_02_09_09_010_PASS_NULL_UNION_TYPE
 * @expect compile-pass
 * @section 2.9.9
 * @design null 在联合类型中
 * @note compile-pass 用例：验证 null 在联合类型中的使用
 */

// null 在联合类型中
let x1: int | null = null
let x2: string | null = null
let x3: boolean | null = null
let x4: number | null = null
let x5: char | null = null
