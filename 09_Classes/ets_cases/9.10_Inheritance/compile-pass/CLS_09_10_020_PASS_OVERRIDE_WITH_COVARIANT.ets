/**
 * @id CLS_09_10_020_PASS_OVERRIDE_WITH_COVARIANT
 * @expect compile-pass
 * @section 9.10
 * @design override协变返回类型
 * @note 正向用例
 */
class Animal20 {}
class Dog20 extends Animal20 {}
class Base20 { getPet(): Animal20 { return new Animal20() } }
class Child20 extends Base20 { override getPet(): Dog20 { return new Dog20() } }
