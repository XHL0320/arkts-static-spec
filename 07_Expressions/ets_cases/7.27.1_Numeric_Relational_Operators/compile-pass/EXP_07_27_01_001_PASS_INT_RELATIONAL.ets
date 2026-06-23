/**
 * @id EXP_07_27_01_001_PASS_INT_RELATIONAL
 * @expect compile-pass
 * @section 7.27.1
 * @design 验证 int 类型的 <, <=, >, >= 四个数值关系运算符的编译通过
 * @note 正向用例：int 类型的数值关系运算符应正常编译
 */
function main(): void {
  let a: int = 5;
  let b: int = 10;
  let r1: boolean = a < b;
  let r2: boolean = a <= b;
  let r3: boolean = a > b;
  let r4: boolean = a >= b;

  // 字面量比较
  let r5: boolean = 1 < -3;
  let r6: boolean = -5 >= 2;
  let r7: boolean = 0 <= 100;
  let r8: boolean = 2147483647 > 0;
}
