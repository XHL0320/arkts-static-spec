/**
 * @id EXP_07_06_02_012_PASS_REGULAR_PROP
 * @expect compile-pass
 * @section 7.6.2
 * @design 普通属性：接口中普通属性，对象字面量创建可读写字段
 * @note 正向用例：验证普通属性的对象字面量创建合法（getter+setter 都可用）
 */
interface I4 {
    attr: number
}
const i4: I4 = {attr: 42}
