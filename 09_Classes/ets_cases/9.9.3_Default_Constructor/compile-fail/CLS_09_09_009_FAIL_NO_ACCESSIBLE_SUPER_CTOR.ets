/**
 * @id CLS_09_09_009_FAIL_NO_ACCESSIBLE_SUPER_CTOR
 * @expect compile-fail
 * @section 9.9.3
 * @design 父类没有可访问的无参构造器时，子类默认构造器编译失败
 * @note 反向用例：父类仅有private无参构造器，子类默认构造器无法调用super()
 */
class A { private constructor() {} }
class B extends A {}
