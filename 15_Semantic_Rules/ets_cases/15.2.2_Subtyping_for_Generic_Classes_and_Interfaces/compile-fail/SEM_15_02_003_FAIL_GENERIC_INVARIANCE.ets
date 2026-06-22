/**
 * @id SEM_15_02_003
 * @expect compile-fail
 * @section 15.2.2
 * @design 验证泛型类不变性：Array<Derived> 不是 Array<Base> 的子类型
 * @note 反向用例：泛型类型不变，Array<Derived> 不可赋值给 Array<Base>
 */
class Base { value: int = 0; }
class Derived extends Base { extra: int = 0; }
function acceptBaseArray(arr: Array<Base>): void { console.log(`Length: ${arr.length}`); }
function main(): void {
    let derivedArr: Array<Derived> = [new Derived()];
    acceptBaseArray(derivedArr);
}
