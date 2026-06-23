/**
 * @id EXP_07_29_02_002_PASS_BOOLEAN_XOR_OR
 * @expect compile-pass
 * @section 7.29.2
 * @design 验证 boolean 类型 ^（XOR）和 |（OR）运算符的编译通过，各覆盖四种真值表组合
 * @note 正向用例：验证 boolean ^ 和 | 运算符的正确编译
 */
function main(): void {
  let a: boolean = true;
  let b: boolean = false;

  // ^ 运算符四种真值表组合
  let x1: boolean = true ^ true;    // false
  let x2: boolean = true ^ false;   // true
  let x3: boolean = false ^ true;   // true
  let x4: boolean = false ^ false;  // false

  // 变量参与 ^ 运算
  let x5: boolean = a ^ true;       // false
  let x6: boolean = a ^ b;          // true
  let x7: boolean = b ^ a;          // true
  let x8: boolean = b ^ b;          // false

  // | 运算符四种真值表组合
  let o1: boolean = true | true;    // true
  let o2: boolean = true | false;   // true
  let o3: boolean = false | true;   // true
  let o4: boolean = false | false;  // false

  // 变量参与 | 运算
  let o5: boolean = a | true;       // true
  let o6: boolean = a | b;          // true
  let o7: boolean = b | a;          // true
  let o8: boolean = b | b;          // false
}
