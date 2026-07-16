/**
 * @id GEN_05_02_01_101_FAIL_EMPTY_TYPE_ARG
 * @expect compile-fail
 * @section 5.2.1
 * @design 空的类型实参列表应报编译时错误
 * @note spec: Type arguments are non-empty lists of types
 */
class G101<T> {}
let x101: G101<> = new G101<int>()
