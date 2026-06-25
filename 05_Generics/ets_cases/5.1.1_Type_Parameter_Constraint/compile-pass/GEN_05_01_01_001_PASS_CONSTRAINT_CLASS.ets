/**
 * @id GEN_05_01_01_001_PASS_CONSTRAINT_CLASS
 * @expect compile-pass
 * @section 5.1.1
 * @design 类型参数约束-类约束
 * @note 正向用例：验证 extends 类约束通过编译
 */
class Base {}
class Derived extends Base {}
class G<T extends Base> {}
let x: G<Base> = new G<Base>();
let y: G<Derived> = new G<Derived>();
