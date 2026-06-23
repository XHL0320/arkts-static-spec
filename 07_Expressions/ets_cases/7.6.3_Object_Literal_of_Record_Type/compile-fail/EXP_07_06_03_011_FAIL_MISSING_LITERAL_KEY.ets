/**
 * @id EXP_07_06_03_011_FAIL_MISSING_LITERAL_KEY
 * @expect compile-fail
 * @section 7.6.3
 * @design 字面量 union Key 缺少变体：Record<"aa"|"bb", number> 只提供 "aa"，缺少 "bb"，应编译时错误
 * @note 反向用例：验证字面量 union Key 的所有变体必须在 Record 字面量中列出
 */
let map: Record<"aa" | "bb", number> = {
    "aa": 1,
}
