/**
 * @id EXP_07_06_02_008_PASS_THIS_REFERENCE
 * @expect compile-pass
 * @section 7.6.2
 * @design 对象字面量方法中 this 引用匿名类实例：返回 this 表示匿名类实例
 * @note 正向用例：验证 this 在对象字面量方法中引用匿名类实例
 */
interface I {
    method(i: I): I
}
const i: I = { method(i: I): I { return this } }
