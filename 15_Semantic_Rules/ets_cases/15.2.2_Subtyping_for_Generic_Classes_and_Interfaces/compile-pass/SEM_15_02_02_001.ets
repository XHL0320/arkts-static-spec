/**
 * @id SEM_15_02_02_001
 * @expect compile-pass
 * @section 15.2.2
 * @design 泛型类自身子类型
 * @note 相同类型参数的泛型实例可互相赋值
 */
class Holder<T> { val: T | undefined; }
function main(): void { let a: Holder<int> = new Holder<int>(); let b: Holder<int> = a; console.log("ok"); }
