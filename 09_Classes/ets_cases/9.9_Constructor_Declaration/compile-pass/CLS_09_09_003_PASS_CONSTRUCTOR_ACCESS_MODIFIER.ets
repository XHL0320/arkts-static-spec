/**
 * @id CLS_09_09_003_PASS_CONSTRUCTOR_ACCESS_MODIFIER
 * @expect compile-pass
 * @section 9.9
 * @design 构造器访问修饰符（public/private/protected）
 * @note 正向用例：构造器可带访问修饰符
 */
class Logger003 {
  private constructor() {}
  static create(): Logger003 {
    return new Logger003()
  }
}
class Config003 {
  public constructor(env: string) {}
}
class Base003 {
  protected constructor() {}
}
class Sub003 extends Base003 {
  constructor() { super() }
}
