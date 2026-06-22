/**
 * @id SEM_15_10_02_002
 * @expect compile-pass
 * @section 15.10.2
 * @design 方法重载可区分 - 编译器选择最佳匹配
 * @note foo(1) 解析为 foo(int) 通过
 */
class C { foo(x: int): void {} foo(x: double): void {} }
function main(): void { let c: C = new C(); c.foo(1); }
