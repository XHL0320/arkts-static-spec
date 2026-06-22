/**
 * @id CLS_09_05_002_PASS_ALL_MODIFIER_COMBOS
 * @expect compile-pass
 * @section 9.5
 * @design private/protected/public修饰成员编译通过
 * @note 正向用例：验证三种访问修饰符合法声明
 */
class AllModifiers {
  private privField: int = 1
  protected protField: string = "p"
  public pubField: double = 0.0
  private privMethod(): void {}
  protected protMethod(): void {}
  public pubMethod(): void {}
}
