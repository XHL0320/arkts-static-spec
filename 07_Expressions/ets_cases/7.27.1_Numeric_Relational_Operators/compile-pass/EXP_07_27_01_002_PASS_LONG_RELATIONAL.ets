/**
 * @id EXP_07_27_01_002_PASS_LONG_RELATIONAL
 * @expect compile-pass
 * @section 7.27.1
 * @design 验证 long 类型的 <, <=, >, >= 四个数值关系运算符的编译通过
 * @note 正向用例：long 类型的数值关系运算符应正常编译
 */
function main(): void {
  let a: long = 5;
  let b: long = 10;
  let r1: boolean = a < b;
  let r2: boolean = a <= b;
  let r3: boolean = a > b;
  let r4: boolean = a >= b;

  // long 字面量比较（通过变量）
  let c: long = -1;
  let d: long = -1;
  let r5: boolean = c >= d;

  // spec 示例：-1 as long >= -1 as short
  let r6: boolean = -1 as long >= -1 as short;
}
