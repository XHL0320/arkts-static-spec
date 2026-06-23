/**
 * @id EXP2_17_06_005_PASS_INTERFACE_EXTENDS_ITERABLE
 * @expect compile-pass
 * @section 17.6
 * @design 接口可以扩展 Iterable<T>，在其中声明 $_iterator()，编译应通过
 * @note 正向用例：验证接口扩展 Iterable 编译通过
 */
interface MyIterableCollection<T> extends Iterable<T> {
  $_iterator(): Iterator<T>
  size(): int
}

class MyNumberList implements MyIterableCollection<number> {
  private data: number[]
  constructor(p: number[]) {
    this.data = p
  }
  $_iterator(): Iterator<number> {
    return new MyNumIter(this.data)
  }
  size(): int {
    return this.data.length
  }
}

class MyNumIter implements Iterator<number> {
  private arr: number[]
  private pos: int = 0
  constructor(a: number[]) {
    this.arr = a
  }
  next(): IteratorResult<number> {
    if (this.pos >= this.arr.length) {
      return new IteratorResult<number>()
    }
    return new IteratorResult<number>(this.arr[this.pos++])
  }
}
