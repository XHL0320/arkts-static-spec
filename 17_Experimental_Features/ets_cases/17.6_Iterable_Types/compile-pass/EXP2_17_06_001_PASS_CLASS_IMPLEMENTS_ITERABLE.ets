/**
 * @id EXP2_17_06_001_PASS_CLASS_IMPLEMENTS_ITERABLE
 * @expect compile-pass
 * @section 17.6
 * @design 类实现 Iterable<number> 接口，定义 $_iterator() 方法返回 Iterator<number> 子类型，编译器应通过
 * @note 正向用例：验证基本 Iterable 实现编译通过的正确用法
 */
class NumberRange implements Iterable<number> {
  private start: int
  private end: int
  constructor(s: int, e: int) {
    this.start = s
    this.end = e
  }
  $_iterator(): Iterator<number> {
    return new NumberRangeIterator(this.start, this.end)
  }
}

class NumberRangeIterator implements Iterator<number> {
  private current: int
  private end: int
  constructor(s: int, e: int) {
    this.current = s
    this.end = e
  }
  next(): IteratorResult<number> {
    if (this.current > this.end) {
      return new IteratorResult<number>()
    }
    return new IteratorResult<number>(this.current++)
  }
}
