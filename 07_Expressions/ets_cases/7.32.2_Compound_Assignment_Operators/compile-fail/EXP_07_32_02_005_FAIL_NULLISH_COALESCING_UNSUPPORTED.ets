/**
 * @id EXP_07_32_02_005_FAIL_NULLISH_COALESCING_UNSUPPORTED
 * @expect compile-fail
 * @section 7.32.2
 * @design 验证 ??= (Nullish Coalescing Assignment) 的编译行为。Spec 定义 ??= 运算符语义，但编译器不支持（Syntax error ESY0227）
 * @note ⚠️ SPEC 不一致：Spec 中 7.32.2 显式声明 "??= only evaluates the right operand, and assigns to the left operand if the left operand is null or undefined"，但当前编译器不支持 `??=` 语法，报 ESY0227 Unexpected token '??='
 */

// 使用可空类型的 ??=
function testNullAssign(): void {
  let a: int | null = null;
  a ??= 42;    // Syntax error: ESY0227 — Unexpected token '??='

  let b: int | null = 10;
  b ??= 99;    // 同上
}

function testUndefinedAssign(): void {
  let a: int | undefined = undefined;
  a ??= 42;

  let b: int | undefined = 10;
  b ??= 99;
}

function testStringNullish(): void {
  let s: string | null = null;
  s ??= "default";

  let t: string | undefined = undefined;
  t ??= "fallback";
}

function main(): void {
  testNullAssign();
  testUndefinedAssign();
  testStringNullish();

  // 内联 ??= 使用
  let x: int | null = null;
  x ??= 100;
  x ??= 200;

  console.log("done");
}
