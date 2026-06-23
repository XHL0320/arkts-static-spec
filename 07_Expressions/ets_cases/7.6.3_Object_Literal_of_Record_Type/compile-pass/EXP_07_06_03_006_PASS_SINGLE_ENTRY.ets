/**
 * @id EXP_07_06_03_006_PASS_SINGLE_ENTRY
 * @expect compile-pass
 * @section 7.6.3
 * @design Record 单条目
 * @note 正向用例：验证 Record 字面量只有一条目时合法
 */
let map: Record<string, string> = {
    "key": "value"
}
