/**
 * @id EXP_07_33_006_PASS_SPEC_EXAMPLES
 * @expect compile-pass
 * @section 7.33
 * @design 验证规范原文中的所有示例：condition?5:6→int、condition?"5":6→string|int、true?"5":6→string、false?"5":6→int、condition?new A():new B()→A
 * @note 正向用例：规范 7.33 所有示例表达式编译通过
 */
class A {}
class B extends A {}

function main(): void {
  let condition: boolean = true;

  // 示例：condition ? new A() : new B() → A | B => A（B extends A 归一化）
  let ex1: A = condition ? new A() : new B();

  // 示例：condition ? 5 : 6 → int
  let ex2: int = condition ? 5 : 6;

  // 示例：condition ? "5" : 6 → "5" | int => string|int
  let ex3: string | int = condition ? "5" : 6;

  // 示例：true ? "5" : 6 → "5"（compile-time true）
  let ex4: string = true ? "5" : 6;

  // 示例：false ? "5" : 6 → int（compile-time false）
  let ex5: int = false ? "5" : 6;
}
