/**
 * @id CLS_09_07_005_FAIL_STATIC_METHOD_THIS_KEYWORD
 * @expect compile-fail
 * @section 9.7.1
 * @design 静态方法中禁止使用this关键字，因为静态方法不关联特定对象实例
 * @note 反向用例：静态方法内使用this引用实例字段导致编译错误
 */
class BadStaticThis005 {
  x: int = 0
  y: string = "hello"

  static getXUsingThis(): int {
    return this.x
  }

  static getYUsingThis(): string {
    return this.y
  }

  static setXUsingThis(v: int): void {
    this.x = v
  }
}
