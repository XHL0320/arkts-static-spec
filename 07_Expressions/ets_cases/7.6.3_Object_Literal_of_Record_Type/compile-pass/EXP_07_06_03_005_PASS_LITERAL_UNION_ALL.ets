/**
 * @id EXP_07_06_03_005_PASS_LITERAL_UNION_ALL
 * @expect compile-pass
 * @section 7.6.3
 * @design 字面量 union Key 所有变体均列出：Record<"aa"|"bb", number> 提供 aa 和 bb
 * @note 正向用例：验证字面量 union Key 的所有变体均提供时合法
 */
let map: Record<"aa" | "bb", number> = {
    "aa": 1,
    "bb": 2,
}
