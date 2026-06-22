/**
 * @id CLS_09_01_003_PASS_CLASS_WITH_METHODS
 * @expect compile-pass
 * @section 9.1
 * @design 含方法的类声明编译通过
 * @note 正向用例：验证类声明含方法
 */
class Counter {
  count: int = 0
  increment(): void {
    this.count++
  }
  getCount(): int {
    return this.count
  }
}

