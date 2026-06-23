/**
 * @id CLS_09_10_021_FAIL_OVERRIDE_NON_COVARIANT
 * @expect compile-fail
 * @section 9.10
 * @design override返回非协变类型
 * @note 反向用例
 */
class Animal21 {}
class Plant21 {}
class Base21 { getThing(): Animal21 { return new Animal21() } }
class Bad21 extends Base21 { override getThing(): Plant21 { return new Plant21() } }
