/**
 * @id SEM_15_02_02_001_PASS_generic_self_assign
 * @expect compile-pass
 * @section 15.2.2
 * @design 泛型类自身子类型：相同类型参数的泛型实例可互相赋值
 * @note 正向用例：Holder<int> 类型实例可赋值给同类型变量
 */
class Holder<T> { val: T | undefined; }
function main(): void {
    let a: Holder<int> = new Holder<int>();
    let b: Holder<int> = a;
    console.log("ok");
}
