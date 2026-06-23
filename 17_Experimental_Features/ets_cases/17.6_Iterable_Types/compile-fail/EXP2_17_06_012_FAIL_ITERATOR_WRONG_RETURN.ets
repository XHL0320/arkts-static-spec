/**
 * @id EXP2_17_06_012_FAIL_ITERATOR_WRONG_RETURN
 * @expect compile-fail
 * @section 17.6
 * @design $_iterator() 方法返回类型不是 Iterator<T> 的子类型，应产生编译时错误
 * @note 反向用例：验证 $_iterator 返回错误类型应产生编译时错误
 */
class WrongReturnIterable implements Iterable<string> {
  private msg: string
  constructor(m: string) {
    this.msg = m
  }
  $_iterator(): string {
    return this.msg
  }
}
