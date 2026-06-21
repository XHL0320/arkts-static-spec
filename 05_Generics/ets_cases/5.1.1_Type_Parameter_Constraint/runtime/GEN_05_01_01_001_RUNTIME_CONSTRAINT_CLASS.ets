/**
 * @id GEN_05_01_01_001_RUNTIME_CONSTRAINT_CLASS
 * @expect runtime
 * @section 5.1.1
 * @design 带约束的泛型函数运行时验证
 * @note 运行时用例：验证约束泛型运行时行为正确
 */
function getValue<T extends Object>(x: T): T { return x; }
function main(): void {
    let r: number = getValue<number>(42);
    if (r != 42) throw new Error("assertion failed: " + r);
}
