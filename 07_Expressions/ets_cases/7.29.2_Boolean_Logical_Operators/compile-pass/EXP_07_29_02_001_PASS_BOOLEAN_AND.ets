/**
 * @id EXP_07_29_02_001_PASS_BOOLEAN_AND
 * @expect compile-pass
 * @section 7.29.2
 * @design 验证 boolean 类型 &（AND）运算符的编译通过：true & true、true & false、false & true、false & false 四种组合
 * @note 正向用例：验证 boolean & 运算符的正确编译，覆盖全部四种真值表组合
 */
function main(): void {
  let a: boolean = true;
  let b: boolean = false;

  // & 运算符四种真值表组合
  let r1: boolean = true & true;    // true
  let r2: boolean = true & false;   // false
  let r3: boolean = false & true;   // false
  let r4: boolean = false & false;  // false

  // 变量参与 & 运算
  let r5: boolean = a & true;       // true
  let r6: boolean = a & b;          // false
  let r7: boolean = b & a;          // false
  let r8: boolean = b & b;          // false
}
