/**
 * @id SEM_15_12_00_200_RUNTIME_ERASURE
 * @expect runtime
 * @section 15.12
 * @design 验证泛型类型擦除运行时行为：擦除后类型信息不影响运行时
 * @note 运行时用例：泛型函数在类型擦除后运行时正确
 */
class Holder<T> { val: T | undefined; }
function identity<T>(x: T): T { return x; }
function main(): void {
    let r: int = identity<int>(42);
    if (r != 42) { throw new Error("assertion failed"); }
    console.log("verified");
}
