/**
 * @id EXP2_17_06_002_PASS_FOR_OF_CUSTOM_ITERABLE
 * @expect compile-pass
 * @section 17.6
 * @design 自定义 Iterable 类用于 for-of 语句，编译器应通过
 * @note 正向用例：验证 for-of 语句与自定义 Iterable 编译通过
 */
class StringList implements Iterable<string> {
  private items: string[]
  constructor(p: string[]) {
    this.items = p
  }
  $_iterator(): Iterator<string> {
    return new StringListIterator(this.items)
  }
}

class StringListIterator implements Iterator<string> {
  private data: string[]
  private idx: int = 0
  constructor(d: string[]) {
    this.data = d
  }
  next(): IteratorResult<string> {
    if (this.idx >= this.data.length) {
      return new IteratorResult<string>()
    }
    return new IteratorResult<string>(this.data[this.idx++])
  }
}
