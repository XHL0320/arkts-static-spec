/**
 * @id CLS_09_09_006_FAIL_SUPER_CONSTRUCTOR_NOT_ACCESSIBLE
 * @expect compile-fail
 * @section 9.9
 * @design 子类默认构造器无法访问父类不可访问构造器
 * @note 编译错误：父类无参数构造器不可访问时子类构造器报错
 */
class Base006 {
  private constructor() {}
}
class Bad006 extends Base006 { // 编译错误：父类构造器不可访问
  constructor() { super() }
}
