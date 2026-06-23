/**
 * @id EXP2_17_06_011_FAIL_ITERABLE_NO_ITERATOR
 * @expect compile-fail
 * @section 17.6
 * @design 类声明 implements Iterable<T> 但未定义 $_iterator() 方法，应产生编译时错误
 * @note 反向用例：验证缺少 $_iterator 方法应产生编译时错误
 */
class NoIterMethod implements Iterable<number> {
  private val: number
  constructor(v: number) {
    this.val = v
  }
}
