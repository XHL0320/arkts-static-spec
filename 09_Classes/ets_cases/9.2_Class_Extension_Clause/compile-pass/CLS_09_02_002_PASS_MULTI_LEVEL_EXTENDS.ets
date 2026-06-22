/**
 * @id CLS_09_02_002_PASS_MULTI_LEVEL_EXTENDS
 * @expect compile-pass
 * @section 9.2
 * @design 多级继承链A->B->C编译通过
 * @note 正向用例：验证extends子句支持多级继承
 */
class LevelA {
  public a: int = 1
}
class LevelB extends LevelA {
  public b: int = 2
}
class LevelC extends LevelB {
  public c: int = 3
}
