/**
 * @id SEM_15_01_032_RUNTIME_TYPE_PARAM
 * @expect runtime
 * @section 15.1.7
 * @design 验证类型参数运行时行为：泛型函数运行时派发正确
 * @note 运行时用例：identity 函数在类型参数实例化后运行正确
 */
function identity<T>(x: T): T { return x; }
function main(): void {
    let r: int = identity<int>(42);
    if (r != 42) { throw new Error("assertion failed: " + r.toString()); }
    console.log("verified");
}
