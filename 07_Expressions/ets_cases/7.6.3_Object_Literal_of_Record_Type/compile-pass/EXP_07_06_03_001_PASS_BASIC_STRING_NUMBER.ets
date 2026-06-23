/**
 * @id EXP_07_06_03_001_PASS_BASIC_STRING_NUMBER
 * @expect compile-pass
 * @section 7.6.3
 * @design 基本 Record<string, number> 字符串键值对
 * @note 正向用例：验证 Record<string, number> 基本键值对字面量
 */
let map: Record<string, number> = {
    "John": 25,
    "Mary": 21,
}
