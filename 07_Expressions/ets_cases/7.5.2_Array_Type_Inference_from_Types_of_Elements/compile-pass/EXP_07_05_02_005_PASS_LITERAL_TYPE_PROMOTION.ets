/**
 * @id EXP_07_05_02_005_PASS_LITERAL_TYPE_PROMOTION
 * @expect compile-pass
 * @section 7.5.2
 * @design 字面量类型提升为超类型：let u: "A" | "B" = "A"; [u] 推断为 string[]
 * @note 正向用例：验证字面量 union 类型提升为超类型 string
 */
let u: "A" | "B" = "A"
let f = [u]
