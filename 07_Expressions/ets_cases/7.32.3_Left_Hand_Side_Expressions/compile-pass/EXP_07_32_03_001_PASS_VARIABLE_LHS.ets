/**
 * @id EXP_07_32_03_001_PASS_VARIABLE_LHS
 * @expect compile-pass
 * @section 7.32.3
 * @design 验证变量（Variable）作为左值表达式的编译通过：int、long、float、double、string、boolean 六种基本类型变量作为赋值目标
 * @note 正向用例：变量是五种有效左值形式之一，验证所有基本类型变量均可作为赋值目标编译通过
 */
function main(): void {
  // int 变量作为左值
  let a: int = 0;
  a = 42;

  // long 变量作为左值（使用 int 字面量隐式扩宽到 long）
  let b: long = 0;
  b = 100;

  // float 变量作为左值
  let c: float = 0.0f;
  c = 3.14f;

  // double 变量作为左值
  let d: double = 0.0;
  d = 2.718;

  // string 变量作为左值
  let e: string = "";
  e = "hello";

  // boolean 变量作为左值
  let f: boolean = false;
  f = true;

  if (a != 42 || b != 100 || c != 3.14f || d > 2.7181 || d < 2.7179 || e != "hello" || f != true) {
    // just verify compilation succeeded
  }

  console.log("done");
}
