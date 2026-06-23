/**
 * @id EXP_07_06_02_011_PASS_READONLY_PROP
 * @expect compile-pass
 * @section 7.6.2
 * @design Readonly 属性：接口中 readonly 属性，对象字面量创建只读字段
 * @note 正向用例：验证 readonly 属性的对象字面量创建合法（同 getter-only）
 */
interface I3 {
    readonly attr: number
}
const i3: I3 = {attr: 42}
