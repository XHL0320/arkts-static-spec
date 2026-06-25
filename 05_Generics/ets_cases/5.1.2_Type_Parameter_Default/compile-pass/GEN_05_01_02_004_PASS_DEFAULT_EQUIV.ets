/**
 * @id GEN_05_01_02_004_PASS_DEFAULT_EQUIV
 * @expect compile-pass
 * @section 5.1.2
 * @design 默认值的语义等价
 * @note 正向用例：验证省略默认参数与显式指定等价
 */
class SomeType {}
interface Interface<T = SomeType> {}
class Base_2<T = SomeType> {}
class Derived1 extends Base_2 implements Interface {}
class Derived2 extends Base_2<SomeType> implements Interface<SomeType> {}
