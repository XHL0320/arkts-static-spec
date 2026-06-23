/**
 * @id EXP_07_33_003_PASS_CONDITION_UNKNOWN_TYPE
 * @expect compile-pass
 * @section 7.33
 * @design 验证编译时条件值未知时的类型推断：condition ? 5 : 6 → int（字面量 5|6 归一化为 int）；condition ? new A() : new B() → A（B extends A 归一化）；condition ? "5" : 6 → string|int
 * @note 正向用例：条件未知时，三元表达式类型为 whenTrue|whenFalse 归一化后的联合类型
 */
class A {}
class B extends A {}

function main(): void {
  let cond: boolean = true;

  // cond ? 5 : 6 → int（字面量 5|6 归一化为 int）
  let a: int = cond ? 5 : 6;

  // cond ? new A() : new B() → A（B extends A，A|B 归一化为 A）
  let b: A = cond ? new A() : new B();

  // cond ? new B() : new A() → A（同理）
  let c: A = cond ? new B() : new A();

  // cond ? 1.0 : 2.0 → float（1.0|2.0 归一化为 float）
  let d: float = cond ? 1.0 : 2.0;
}
