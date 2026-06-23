/**
 * @id EXP_07_06_03_010_PASS_THREE_LITERAL_KEYS
 * @expect compile-pass
 * @section 7.6.3
 * @design Record 字面量 union Key 三个变体全部列出：Record<"x"|"y"|"z", string>
 * @note 正向用例：验证三个变体的字面量 union Key 全部提供时合法
 */
let map: Record<"x" | "y" | "z", string> = {
    "x": "first",
    "y": "second",
    "z": "third",
}
