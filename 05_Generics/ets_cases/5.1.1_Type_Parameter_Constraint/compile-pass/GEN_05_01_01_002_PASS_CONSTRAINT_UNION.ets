/**
 * @id GEN_05_01_01_002_PASS_CONSTRAINT_UNION
 * @expect compile-pass
 * @section 5.1
 * @design 类型参数约束-联合类型
 * @note 正向用例：验证 extends 联合类型约束通过编译
 */
class Base {}
class SomeType {}
class H<T extends Base | SomeType> {}
let h1: H<Base> = new H<Base>();
let h2: H<SomeType> = new H<SomeType>();
