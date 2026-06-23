/**
 * @id CLS_09_10_014_PASS_EXTENDS_IMPLEMENTS
 * @expect compile-pass
 * @section 9.10
 * @design 同时extends和implements
 * @note 正向用例：extends父类+implements接口组合
 */
interface Named { getName(): string }
class Base14 { id: int = 0 }
class Child14 extends Base14 implements Named {
  getName(): string { return "child" }
}
