/**
 * @id GEN_05_01_013_PASS_FUNC_DEFAULT
 * @expect compile-pass
 * @section 5.1
 * @design 泛型函数默认类型参数
 * @note 正向用例：验证泛型函数有默认类型参数
 */
function foo<T = number>(input: T): T {
    return input;
}
let r: number = foo(1);
