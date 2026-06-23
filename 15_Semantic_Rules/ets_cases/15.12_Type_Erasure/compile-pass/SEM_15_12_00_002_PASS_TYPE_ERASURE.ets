/**
 * @id SEM_15_12_00_002_PASS_TYPE_ERASURE
 * @expect compile-pass
 * @section 15.12
 * @design 验证泛型类型擦除：泛型函数调用正确
 * @note 正向用例：id<int>(42) 泛型实例化后类型正确
 */
class Container<T> { val: T | undefined; }
function id<T>(x: T): T { return x; }
function main(): void {
    let r: int = id<int>(42);
    console.log(`${r}`);
}
