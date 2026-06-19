/**
 * @id CLS_09_09_014_FAIL_SUPER_NO_PARAMETERLESS
 * @expect compile-fail
 * @section 9.9.3
 * @design 父类仅有带参构造器时，无显式构造器的子类默认构造器无法调用super()导致编译失败
 * @note 反向用例：父类声明了带参构造器后不再有无参构造器，子类默认构造器找不到可调用super()
 */
class Base {
  value: int
  constructor(v: int) {
    this.value = v
  }
}
class Derived extends Base {
  extra: string = "derived"
}
