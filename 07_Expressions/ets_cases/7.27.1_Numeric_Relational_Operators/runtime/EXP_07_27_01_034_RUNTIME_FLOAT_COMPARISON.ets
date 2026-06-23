/**
 * @id EXP_07_27_01_034_RUNTIME_FLOAT_COMPARISON
 * @expect runtime
 * @section 7.27.1
 * @design 验证 float 类型 <, <=, >, >= 四个关系运算符的基本值正确性
 * @note 运行时用例：float 比较基本值验证，包括 spec 示例 1 <= 1.0f = true
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  let a: float = 1.5f;
  let b: float = 2.5f;
  let zero: float = 0.0f;
  let neg: float = -1.5f;

  // < 运算符
  assert((a < b) == true, "1.5f < 2.5f should be true");
  assert((b < a) == false, "2.5f < 1.5f should be false");
  assert((neg < zero) == true, "-1.5f < 0.0f should be true");
  assert((zero < neg) == false, "0.0f < -1.5f should be false");

  // <= 运算符
  assert((a <= b) == true, "1.5f <= 2.5f should be true");
  assert((a <= a) == true, "1.5f <= 1.5f should be true");
  assert((b <= a) == false, "2.5f <= 1.5f should be false");
  assert((neg <= zero) == true, "-1.5f <= 0.0f should be true");

  // > 运算符
  assert((a > b) == false, "1.5f > 2.5f should be false");
  assert((b > a) == true, "2.5f > 1.5f should be true");
  assert((neg > neg) == false, "-1.5f > -1.5f should be false");
  assert((zero > neg) == true, "0.0f > -1.5f should be true");

  // >= 运算符
  assert((a >= b) == false, "1.5f >= 2.5f should be false");
  assert((a >= a) == true, "1.5f >= 1.5f should be true");
  assert((b >= a) == true, "2.5f >= 1.5f should be true");
  assert((neg >= neg) == true, "-1.5f >= -1.5f should be true");

  // spec example: 1 <= 1.0f // true
  assert((1 <= 1.0f) == true, "1 <= 1.0f should be true (spec example)");

  // float 小数精度比较
  let pi: float = 3.14159f;
  let e: float = 2.71828f;
  assert((e < pi) == true, "e < pi should be true");
  assert((pi > e) == true, "pi > e should be true");

  console.log("verified");
}
