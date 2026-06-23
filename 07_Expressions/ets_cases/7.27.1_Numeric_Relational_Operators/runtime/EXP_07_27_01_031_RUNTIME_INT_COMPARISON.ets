/**
 * @id EXP_07_27_01_031_RUNTIME_INT_COMPARISON
 * @expect runtime
 * @section 7.27.1
 * @design 验证 int 类型 <, <=, >, >= 四个关系运算符的基本值正确性
 * @note 运行时用例：int 比较基本值验证，包括 spec 示例 1 < -3 = false
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  // < 运算符
  assert((5 < 10) == true, "5 < 10 should be true");
  assert((10 < 5) == false, "10 < 5 should be false");
  assert((-3 < 0) == true, "-3 < 0 should be true");
  assert((0 < -3) == false, "0 < -3 should be false");

  // <= 运算符
  assert((5 <= 10) == true, "5 <= 10 should be true");
  assert((5 <= 5) == true, "5 <= 5 should be true");
  assert((10 <= 5) == false, "10 <= 5 should be false");
  assert((-1 <= 0) == true, "-1 <= 0 should be true");

  // > 运算符
  assert((5 > 10) == false, "5 > 10 should be false");
  assert((10 > 5) == true, "10 > 5 should be true");
  assert((-1 > -2) == true, "-1 > -2 should be true");
  assert((0 > -1) == true, "0 > -1 should be true");

  // >= 运算符
  assert((5 >= 10) == false, "5 >= 10 should be false");
  assert((5 >= 5) == true, "5 >= 5 should be true");
  assert((10 >= 5) == true, "10 >= 5 should be true");
  assert((-1 >= -1) == true, "-1 >= -1 should be true");

  // spec example: 1 < -3 // false
  assert((1 < -3) == false, "1 < -3 should be false (spec example)");

  // 相等值比较
  assert((0 > 0) == false, "0 > 0 should be false");
  assert((0 < 0) == false, "0 < 0 should be false");
  assert((0 >= 0) == true, "0 >= 0 should be true");
  assert((0 <= 0) == true, "0 <= 0 should be true");

  console.log("verified");
}
