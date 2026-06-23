/**
 * @id CLS_09_09_008_PASS_THIS_CALL
 * @expect compile-pass
 * @section 9.9.2
 * @design 显式this()构造器调用 — 同类主构造器/次级构造器模式
 * @note 正向用例：次级构造器通过this(args)委托给同类主构造器
 */
class CLS_09_09_008_Base {
  x: int
  y: int
  // Primary constructor: initializes all fields directly
  constructor(x: int, y: int) {
    this.x = x
    this.y = y
  }
  // Secondary constructor: delegates to primary via this()
  constructor() {
    this(0, 0)
  }
}
