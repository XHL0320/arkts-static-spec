/**
 * @id EXP_07_28_01_011_PASS_SPEC_EXAMPLES
 * @expect compile-pass
 * @section 7.28.1
 * @design 验证 spec 代码示例中的等值比较编译通过
 * @note 正向用例：spec 提供的示例代码应全部编译通过
 */
function main(): void {
  // spec example 1-3: 5 == 5 // true
  let r1: boolean = 5 == 5;
  // spec example: 5 != 5 // false
  let r2: boolean = 5 != 5;
  // spec example: 5 === 5 // true
  let r3: boolean = 5 === 5;
  // spec example: 5 == new Number(5) // true
  let r4: boolean = 5 == new Number(5);
  // spec example: 5 === new Number(5) // true
  let r5: boolean = 5 === new Number(5);
  // spec example: 5 == 5.0 // true
  let r6: boolean = 5 == 5.0;
}
