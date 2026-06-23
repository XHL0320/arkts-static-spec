/**
 * @id EXP_07_06_02_010_PASS_GETTER_ONLY_PROP
 * @expect compile-pass
 * @section 7.6.2
 * @design Getter-only 属性：接口只有 getter，对象字面量创建只读字段（始终返回字面量值）
 * @note 正向用例：验证 getter-only 属性的对象字面量创建合法
 */
interface I2 {
    get attr(): number
}
const i2: I2 = {attr: 42}
