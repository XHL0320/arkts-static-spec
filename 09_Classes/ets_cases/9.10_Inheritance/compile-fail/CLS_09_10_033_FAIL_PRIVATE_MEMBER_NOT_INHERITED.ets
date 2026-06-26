/**
 * @id CLS_09_10_033_FAIL_PRIVATE_MEMBER_NOT_INHERITED
 * @expect compile-fail
 * @section 9.10
 * @design private成员不被子类继承 — 子类无法访问父类private成员
 * @note 反向用例：子类访问父类private字段应编译失败
 */
class Base15 { private secret: int = 42 }
class Child15 extends Base15 {
  reveal(): int { return this.secret }
}
