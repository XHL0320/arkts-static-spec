/**
 * @id SEM_15_03_002
 * @expect compile-pass
 * @section 15.3
 * @design 验证泛型类型实例化同一性：Container<int> 和 Container<int> 是同一类型
 * @note 正向用例：相同类型参数实例化的泛型类型相同
 */
class Container<T> { val: T | undefined; }
function main(): void {
    let a: Container<int> = new Container<int>();
    let b: Container<int> = a;
    console.log(`val=${b.val}`);
}
