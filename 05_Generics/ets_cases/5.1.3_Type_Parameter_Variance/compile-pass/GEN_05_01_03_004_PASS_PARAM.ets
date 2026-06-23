/**
 * @id GEN_05_01_03_004_PASS_PARAM
 * @expect compile-pass
 * @section 5.2
 * @design in 方法参数位置
 * @note 正向用例：验证 in 类型参数在方法参数位置通过编译
 */
class Y<in T> {
    set(p: T): void {}
}
