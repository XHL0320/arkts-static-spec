/**
 * @id EXP_07_27_01_035_RUNTIME_DOUBLE_COMPARISON
 * @expect runtime
 * @section 7.27.1
 * @design 验证 double 类型 <, <=, >, >= 四个关系运算符的基本值正确性
 * @note 运行时用例：double 比较基本值验证，包括 spec 示例 2 <= 1.0 = false
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  let a: double = 1.5;
  let b: double = 2.5;
  let zero: double = 0.0;
  let neg: double = -1.5;

  // < 运算符
  assert((a < b) == true, "1.5 < 2.5 should be true");
  assert((b < a) == false, "2.5 < 1.5 should be false");
  assert((neg < zero) == true, "-1.5 < 0.0 should be true");
  assert((zero < neg) == false, "0.0 < -1.5 should be false");

  // <= 运算符
  assert((a <= b) == true, "1.5 <= 2.5 should be true");
  assert((a <= a) == true, "1.5 <= 1.5 should be true");
  assert((b <= a) == false, "2.5 <= 1.5 should be false");
  assert((neg <= zero) == true, "-1.5 <= 0.0 should be true");

  // > 运算符
  assert((a > b) == false, "1.5 > 2.5 should be false");
  assert((b > a) == true, "2.5 > 1.5 should be true");
  assert((neg > neg) == false, "-1.5 > -1.5 should be false");
  assert((zero > neg) == true, "0.0 > -1.5 should be true");

  // >= 运算符
  assert((a >= b) == false, "1.5 >= 2.5 should be false");
  assert((a >= a) == true, "1.5 >= 1.5 should be true");
  assert((b >= a) == true, "2.5 >= 1.5 should be true");
  assert((neg >= neg) == true, "-1.5 >= -1.5 should be true");

  // spec example: 2 <= 1.0 // false
  assert((2 <= 1.0) == false, "2 <= 1.0 should be false (spec example)");

  // double 小数精度比较
  let pi: double = 3.14159265358979;
  let e: double = 2.71828182845905;
  assert((e < pi) == true, "e < pi should be true");
  assert((pi > e) == true, "pi > e should be true");

  // 极大极小 double 值
  let tiny: double = 1e-300;
  let huge: double = 1e300;
  assert((tiny < huge) == true, "1e-300 < 1e300 should be true");
  assert((huge > tiny) == true, "1e300 > 1e-300 should be true");
  assert((-tiny > -huge) == true, "-1e-300 > -1e300 should be true");

  console.log("verified");
}
