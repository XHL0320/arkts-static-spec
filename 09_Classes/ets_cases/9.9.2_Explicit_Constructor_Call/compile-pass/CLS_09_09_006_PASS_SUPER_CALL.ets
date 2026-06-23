/**
 * @id CLS_09_09_006_PASS_SUPER_CALL
 * @expect compile-pass
 * @section 9.9.2
 * @design 显式super()构造器调用
 * @note 正向用例：super(args)调用父类构造器
 */
class Base6 { constructor(n: int) {} }
class Derived6 extends Base6 {
  constructor(n: int) { super(n) }
}
