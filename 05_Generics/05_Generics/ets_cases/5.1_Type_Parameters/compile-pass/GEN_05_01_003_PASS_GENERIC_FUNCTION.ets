/**
 * @id GEN_05_01_003_PASS_GENERIC_FUNCTION
 * @expect compile-pass
 * @section 5.1
 * @design 泛型函数声明
 * @note 正向用例：验证泛型函数声明通过编译
 */
function identity<T>(arg: T): T {
    return arg;
}
