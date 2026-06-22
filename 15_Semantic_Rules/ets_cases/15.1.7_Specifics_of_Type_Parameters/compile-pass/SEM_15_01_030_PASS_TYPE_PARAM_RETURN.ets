/**
 * @id SEM_15_01_030
 * @expect compile-pass
 * @section 15.1.7
 * @design 验证类型参数作为返回值类型：泛型函数返回类型参数类型
 * @note 正向用例：identity<int>(42) 返回 int 类型
 */
function identity<T>(x: T): T { return x; }
function main(): void {
    let r: int = identity<int>(42);
    console.log(`${r}`);
}
