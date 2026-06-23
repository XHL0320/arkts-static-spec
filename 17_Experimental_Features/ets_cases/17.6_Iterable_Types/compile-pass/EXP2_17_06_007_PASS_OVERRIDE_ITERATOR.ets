/**
 * @id EXP2_17_06_007_PASS_OVERRIDE_ITERATOR
 * @expect compile-pass
 * @section 17.6
 * @design 子类可以覆盖父类的 $_iterator() 方法，编译器应通过
 * @note 正向用例：验证覆盖 $_iterator 编译通过
 */
class BaseRange implements Iterable<number> {
  protected start: int
  protected end: int
  constructor(s: int, e: int) {
    this.start = s
    this.end = e
  }
  $_iterator(): Iterator<number> {
    return new BaseIter(this.start, this.end)
  }
}

class BaseIter implements Iterator<number> {
  private cur: int
  private max: int
  constructor(c: int, m: int) {
    this.cur = c
    this.max = m
  }
  next(): IteratorResult<number> {
    if (this.cur > this.max) {
      return new IteratorResult<number>()
    }
    return new IteratorResult<number>(this.cur++)
  }
}

class StepRange extends BaseRange {
  private step: int
  constructor(s: int, e: int, step: int) {
    super(s, e)
    this.step = step
  }
  $_iterator(): Iterator<number> {
    return new StepIter(this.start, this.end, this.step)
  }
}

class StepIter implements Iterator<number> {
  private cur: int
  private max: int
  private stp: int
  constructor(c: int, m: int, s: int) {
    this.cur = c
    this.max = m
    this.stp = s
  }
  next(): IteratorResult<number> {
    if (this.cur > this.max) {
      return new IteratorResult<number>()
    }
    let val: int = this.cur
    this.cur = this.cur + this.stp
    return new IteratorResult<number>(val)
  }
}
