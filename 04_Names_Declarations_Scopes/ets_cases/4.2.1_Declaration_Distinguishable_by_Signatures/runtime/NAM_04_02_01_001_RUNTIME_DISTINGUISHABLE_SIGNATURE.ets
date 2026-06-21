/**
 * @id NAM_04_02_01_001_RUNTIME_DISTINGUISHABLE_SIGNATURE
 * @expect runtime
 * @section 4.2.1
 * @design 不同签名的函数重载，运行时正确调用
 * @note 运行时用例：验证签名可区分时正常运行
 */
function foo(x: int): int { return x; }
function foo(s: string): string { return s; }
function main(): void {
    let a: int = foo(42);
    let b: string = foo("hello");
    if (a != 42) throw new Error("assertion failed: " + a);
    if (b != "hello") throw new Error("assertion failed: " + b);
}
