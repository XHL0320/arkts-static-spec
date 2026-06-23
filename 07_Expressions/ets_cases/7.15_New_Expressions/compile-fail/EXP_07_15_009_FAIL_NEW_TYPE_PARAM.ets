/**
 * @id EXP_07_15_009_FAIL_NEW_TYPE_PARAM
 * @expect compile-fail
 * @section 7.15
 * @design 验证类型参数作为 new 的 typeReference 编译时错误
 * @note 反向用例：class 实例 new 表达式的 typeReference 不能是类型参数
 */
class A<T> {
  foo(): T {
    let x = new T()
    return x
  }
}
