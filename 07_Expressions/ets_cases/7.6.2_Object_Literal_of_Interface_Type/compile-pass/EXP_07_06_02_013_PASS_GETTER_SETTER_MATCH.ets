/**
 * @id EXP_07_06_02_013_PASS_GETTER_SETTER_MATCH
 * @expect compile-pass
 * @section 7.6.2
 * @design Getter 和 setter 类型一致：get attr(): number 和 set attr(x: number) 类型相同
 * @note 正向用例：验证 getter+setter 类型一致时可创建对象字面量
 */
interface I {
    get attr(): number
    set attr(x: number)
}
const i: I = {attr: 42}
