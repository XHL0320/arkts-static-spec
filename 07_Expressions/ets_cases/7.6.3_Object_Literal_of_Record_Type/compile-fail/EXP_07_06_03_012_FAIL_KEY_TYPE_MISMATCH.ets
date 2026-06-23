/**
 * @id EXP_07_06_03_012_FAIL_KEY_TYPE_MISMATCH
 * @expect compile-fail
 * @section 7.6.3
 * @design Key 类型不兼容：Record<string, number> 提供数值键 1（应为 string），应编译时错误
 * @note 反向用例：验证 Record 字面量的 key 表达式类型必须兼容 Key 类型
 */
let map: Record<string, number> = {
    1: 42,
}
