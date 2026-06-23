/**
 * @id EXP_07_06_03_007_PASS_TRAILING_COMMA
 * @expect compile-pass
 * @section 7.6.3
 * @design Record 字面量尾部逗号
 * @note 正向用例：验证 Record 字面量最后条目后允许尾部逗号
 */
let map: Record<string, number> = {
    "a": 1,
    "b": 2,
}
