/**
 * @id EXP_07_28_01_002_PASS_LONG_EQUALITY
 * @expect compile-pass
 * @section 7.28.1
 * @design 验证 long 类型的 ==, !=, ===, !== 四个等值运算符编译通过
 * @note 正向用例：long 类型的等值运算符应正常编译
 */
function main(): void {
  let a: long = 5;
  let b: long = 10;
  let r1: boolean = a == b;
  let r2: boolean = a != b;
  let r3: boolean = a === b;
  let r4: boolean = a !== b;

  // long 变量比较
  let zero: long = 0;
  let negOne: long = -1;
  let bigLong: long = 9223372036854775807;
  let r5: boolean = zero == zero;
  let r6: boolean = negOne != bigLong;
  let r7: boolean = bigLong == bigLong;
}
