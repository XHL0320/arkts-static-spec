/**
 * @id EXP_07_34_010_PASS_COMPLEX_EXPRESSIONS
 * @expect compile-pass
 * @section 7.34
 * @design 验证复杂表达式在字符串插值中的编译通过：三元条件、逻辑运算、类型转换等复杂表达式嵌入
 * @note 正向用例：嵌入表达式可以是任意表达式，包括三元条件、逻辑与/或、字符串方法调用等
 */
function main(): void {
  let x: int = 5;
  let y: int = 10;
  let cond: boolean = true;

  // 三元条件嵌入
  let r1: string = `max = ${x > y ? x : y}`;

  // 字符串方法调用
  let s: string = "Hello World";
  let r2: string = `sub = ${s.substring(0, 5)}`;

  // 链式运算符
  let r3: string = `len = ${s.length}`;

  // 简单算术比较
  let r4: string = `${x} > ${y} = ${x > y}`;

  console.log("done");
}
