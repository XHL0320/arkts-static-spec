/**
 * @id EXP_07_27_01_032_RUNTIME_INT_EDGE
 * @expect runtime
 * @section 7.27.1
 * @design 验证 int 类型边界值（MAX_VALUE、MIN_VALUE、负数边界）的关系比较
 * @note 运行时用例：int 边界值比较，验证 INT_MAX、INT_MIN 等边缘场景
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  let maxInt: int = 2147483647;
  let minInt: int = -2147483647 - 1;

  // INT_MAX 比较
  assert((maxInt > 0) == true, "INT_MAX > 0 should be true");
  assert((maxInt < 2147483647) == false, "INT_MAX < INT_MAX should be false");
  assert((maxInt <= 2147483647) == true, "INT_MAX <= INT_MAX should be true");
  assert((maxInt >= 2147483647) == true, "INT_MAX >= INT_MAX should be true");
  assert((maxInt > 2147483646) == true, "INT_MAX > INT_MAX-1 should be true");
  assert((2147483646 < maxInt) == true, "INT_MAX-1 < INT_MAX should be true");

  // INT_MIN 比较
  assert((minInt < 0) == true, "INT_MIN < 0 should be true");
  assert((minInt > -2147483647 - 1) == false, "INT_MIN < INT_MIN should be false");
  assert((minInt <= -2147483647 - 1) == true, "INT_MIN <= INT_MIN should be true");
  assert((minInt >= -2147483647 - 1) == true, "INT_MIN >= INT_MIN should be true");
  assert((minInt < -2147483647) == true, "INT_MIN < INT_MIN+1 should be true");

  // INT_MIN vs INT_MAX
  assert((minInt < maxInt) == true, "INT_MIN < INT_MAX should be true");
  assert((maxInt > minInt) == true, "INT_MAX > INT_MIN should be true");
  assert((minInt <= maxInt) == true, "INT_MIN <= INT_MAX should be true");
  assert((maxInt >= minInt) == true, "INT_MAX >= INT_MIN should be true");

  // 大负数比较
  assert((-1000000 < 0) == true, "-1M < 0 should be true");
  assert((-1000000 > -2000000) == true, "-1M > -2M should be true");

  console.log("verified");
}
