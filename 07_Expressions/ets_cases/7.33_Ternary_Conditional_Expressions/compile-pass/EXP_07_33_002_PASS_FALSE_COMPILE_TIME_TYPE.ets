/**
 * @id EXP_07_33_002_PASS_FALSE_COMPILE_TIME_TYPE
 * @expect compile-pass
 * @section 7.33
 * @design 验证编译时条件为 false 时，三元表达式类型为 whenFalse 分支的类型：false ? "5" : 6 → int 类型
 * @note 正向用例：编译时 false 条件，整个表达式类型为 whenFalse 分支类型
 */
class A {}
class B extends A {}

function main(): void {
  // false ? "5" : 6 → 类型为 int（compile-time false 选择 whenFalse 分支的类型）
  let a: int = false ? "5" : 6;

  // false ? 3.14f : 99 → 类型为 int
  let b: int = false ? 3.14f : 99;

  // false ? new A() : new B() → 类型为 B
  let c: B = false ? new A() : new B();

  // false ? 42 : 99 → 类型为 int
  let d: int = false ? 42 : 99;
}
