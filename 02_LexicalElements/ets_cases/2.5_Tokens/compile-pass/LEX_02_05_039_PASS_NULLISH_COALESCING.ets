/**
 * @id LEX_02_05_039_PASS_NULLISH_COALESCING
 * @expect compile-pass
 * @section 2.5
 * @design 空值合并运算符 ??
 * @note compile-pass 用例：验证空值合并运算符
 */

// 空值合并运算符 ??
let x: int | null = null
let y: int = x ?? 42

let a: string | undefined = undefined
let b: string = a ?? "default"
