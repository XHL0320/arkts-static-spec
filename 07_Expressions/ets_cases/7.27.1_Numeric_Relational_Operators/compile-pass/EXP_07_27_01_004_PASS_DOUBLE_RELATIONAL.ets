/**
 * @id EXP_07_27_01_004_PASS_DOUBLE_RELATIONAL
 * @expect compile-pass
 * @section 7.27.1
 * @design 验证 double 类型的 <, <=, >, >= 四个数值关系运算符的编译通过
 * @note 正向用例：double 类型的数值关系运算符应正常编译
 */
function main(): void {
  let a: double = 1.5;
  let b: double = 2.5;
  let r1: boolean = a < b;
  let r2: boolean = a <= b;
  let r3: boolean = a > b;
  let r4: boolean = a >= b;

  // double 字面量
  let r5: boolean = -1.0 < 0.0;
  let r6: boolean = 3.14 >= 3.14;

  // spec 示例：2 <= 1.0
  let r7: boolean = 2 <= 1.0;
}
