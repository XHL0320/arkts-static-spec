/**
 * @id EXP_07_27_01_033_RUNTIME_LONG_COMPARISON
 * @expect runtime
 * @section 7.27.1
 * @design 验证 long 类型 <, <=, >, >= 四个关系运算符的基本值正确性
 * @note 运行时用例：long 比较基本值验证，包括 spec 示例 -1 as long >= -1 as short
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function main(): void {
  let a: long = 5;
  let b: long = 10;
  let zero: long = 0;
  let neg: long = -5;

  // < 运算符
  assert((a < b) == true, "5L < 10L should be true");
  assert((b < a) == false, "10L < 5L should be false");
  assert((neg < zero) == true, "-5L < 0L should be true");
  assert((zero < neg) == false, "0L < -5L should be false");

  // <= 运算符
  assert((a <= b) == true, "5L <= 10L should be true");
  assert((a <= a) == true, "5L <= 5L should be true");
  assert((b <= a) == false, "10L <= 5L should be false");
  assert((neg <= zero) == true, "-5L <= 0L should be true");

  // > 运算符
  assert((a > b) == false, "5L > 10L should be false");
  assert((b > a) == true, "10L > 5L should be true");
  assert((neg > neg) == false, "-5L > -5L should be false");

  // >= 运算符
  assert((a >= b) == false, "5L >= 10L should be false");
  assert((a >= a) == true, "5L >= 5L should be true");
  assert((b >= a) == true, "10L >= 5L should be true");
  assert((neg >= neg) == true, "-5L >= -5L should be true");

  // spec example: -1 as long >= -1 as short // true
  assert((-1 as long >= -1 as short) == true, "-1L >= -1S should be true (spec example)");

  // long 大数比较
  let big: long = 9223372036854775807 as long - 1;
  assert((big > 0) == true, "big long > 0 should be true");

  // long 负数边界
  let minLong: long = -9223372036854775807 as long - 1;
  assert((minLong < 0) == true, "MIN_LONG < 0 should be true");
  assert((minLong < big) == true, "MIN_LONG < MAX_LONG-1 should be true");

  console.log("verified");
}
