/**
 * @id EXP_07_06_02_016_FAIL_GETTER_SETTER_MISMATCH
 * @expect compile-fail
 * @section 7.6.2
 * @design Getter 和 setter 类型不匹配：getter 返回 number，setter 参数 string，应为编译时错误
 * @note 反向用例：验证 getter 返回类型和 setter 参数类型必须一致
 */
interface I {
    get attr(): number
    set attr(x: string)
}
const i: I = {attr: 42}
