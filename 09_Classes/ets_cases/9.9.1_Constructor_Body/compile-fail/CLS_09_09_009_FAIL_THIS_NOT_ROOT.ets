/**
 * @id CLS_09_09_009_FAIL_THIS_NOT_ROOT
 * @expect compile-fail
 * @section 9.9.1
 * @design 辅助构造器中this()调用必须是根级语句 — spec: "call is not a root-level statement within a constructor"
 * @note 反向用例：辅助构造器中this()放在if块内应编译失败
 */
class Point009 {
  x: int = 0
  y: int = 0
  constructor(x: int, y: int) {
    this.x = x
    this.y = y
  }
  constructor() {
    if (true) {
      this(0, 0)
    }
  }
}
