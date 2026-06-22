/**
 * @id CON_06_01_013_PASS_GENERIC_DECLARATION
 * @expect compile-pass
 * @section 6.1
 * @design Declaration context: 泛型声明上下文（let t: T = p）
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function foo<T1, T2>(p1: T1, p2: T2): void {
  let t1: T1 = p1
  let t2: T2 = p2
}

function testGenericDeclaration(): void {
  foo<number, string>(42, "hello")
  foo<int, boolean>(100, true)
}
