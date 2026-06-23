/**
 * @id EXP_07_07_013_FAIL_NON_ITERABLE_CLASS
 * @expect compile-fail
 * @section 7.7
 * @design 非 iterable 类类型扩展：未实现 Iterable 接口的类，扩展编译时错误
 * @note 反向用例：验证非 iterable 类型扩展应报编译时错误
 */
class Data {
    value: int = 0
}
let d: Data = new Data()
let result: int[] = [...d]
