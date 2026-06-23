/**
 * @id SEM_15_05_00_100_FAIL_GENERIC_INVARIANCE
 * @expect compile-fail
 * @section 15.5
 * @design 验证泛型类型参数不变性：Holder<Derived> 不是 Holder<Base> 的子类型
 * @note 反向用例：泛型类型参数不变，派生类参数不可赋值给基类参数
 */
class Holder<T> { val: T | undefined; }
class Base { base: int = 0; }
class Derived extends Base { derived: int = 0; }
function acceptHolderOfBase(b: Holder<Base>): void {
    console.log(`base`);
}
function main(): void {
    let derivedBox: Holder<Derived> = new Holder<Derived>();
    acceptHolderOfBase(derivedBox);
}
