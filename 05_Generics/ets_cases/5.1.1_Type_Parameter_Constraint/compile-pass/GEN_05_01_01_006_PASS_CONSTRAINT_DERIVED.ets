/**
 * @id GEN_05_01_01_006_PASS_CONSTRAINT_DERIVED
 * @expect compile-pass
 * @section 5.1.1
 * @design 子类型通过联合约束（Derived extends Base，满足Base|SomeType）
 * @note 正向用例：验证 H<Derived> 满足 extends Base|SomeType 约束编译通过（spec 5.1.1 行139）
 */
class Base {}
class Derived extends Base {}
class SomeType {}
class H<T extends Base | SomeType> {}
let h2 = new H<Derived>
