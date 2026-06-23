/**
 * @id SEM_15_03_00_101_FAIL_GENERIC_DIFF_ARGS
 * @expect compile-fail
 * @section 15.3
 * @design 验证泛型类型不同参数不具同一性：Container<int> 和 Container<string> 不是同一类型
 * @note 反向用例：不同类型参数的泛型实例不可互相赋值
 */
class Container<T> { val: T | undefined; }
function main(): void {
    let a: Container<int> = new Container<int>();
    let b: Container<string> = a;
}
