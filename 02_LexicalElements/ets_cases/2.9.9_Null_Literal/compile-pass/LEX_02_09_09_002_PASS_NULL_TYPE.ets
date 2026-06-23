/**
 * @id LEX_02_09_09_002_PASS_NULL_TYPE
 * @expect compile-pass
 * @section 2.9.9
 * @design null 类型
 * @note compile-pass 用例：验证 null 类型
 */

// null 类型
let x1: null = null

// T | null 类型
let x2: int | null = null
let x3: string | null = null
