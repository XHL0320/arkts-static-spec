/**
 * @id EXP_07_06_02_009_PASS_SETTER_ONLY_PROP
 * @expect compile-pass
 * @section 7.6.2
 * @design Setter-only 属性：接口只有 setter，对象字面量创建可写字段
 * @note 正向用例：验证 setter-only 属性的对象字面量创建合法
 */
interface I1 {
    set attr(attr: number)
}
const i1: I1 = {attr: 42}
