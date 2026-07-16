/**
 * @id EXP_07_32_02_001_RUNTIME_SEMANTICS
 * @expect runtime
 * @section 7.32.2
 * @design 验证复合赋值运算符的运行时语义：算术复合（+=-=*=/=%=）值正确、移位复合值正确、位运算复合值正确、字符串拼接正确、字段/数组/记录复合值正确
 * @note 运行时用例：20+ 个断言覆盖多种运算符和三种 lhsExpression 形式。long 使用 int 字面量，不使用 n 后缀
 */

// 用于字段访问测试
class Data {
  val: int = 0;
  label: string = "";
  sum: long = 0;
}

// 记录索引 key 类型
type K = 'a' | 'b' | 'c';

function main(): void {
  // === 1. int 算术复合 ===

  // 1a. +=
  let a: int = 10;
  a += 5;
  if (a != 15) {
    throw new Error("assertion failed: int += expected 15, got " + a);
  }

  // 1b. -=
  a -= 3;
  if (a != 12) {
    throw new Error("assertion failed: int -= expected 12, got " + a);
  }

  // 1c. *=
  a *= 2;
  if (a != 24) {
    throw new Error("assertion failed: int *= expected 24, got " + a);
  }

  // 1d. /=
  a /= 4;
  if (a != 6) {
    throw new Error("assertion failed: int /= expected 6, got " + a);
  }

  // 1e. %=
  a %= 5;
  if (a != 1) {
    throw new Error("assertion failed: int %= expected 1, got " + a);
  }

  // === 2. long 算术复合 ===
  let b: long = 100;
  b += 50;
  if (b != 150) {
    throw new Error("assertion failed: long += expected 150, got " + b);
  }

  // === 3. float 复合 ===
  let c: float = 10.0f;
  c += 5.5f;
  if (c != 15.5f) {
    throw new Error("assertion failed: float += expected 15.5f, got " + c);
  }

  // === 4. double 复合 ===
  let d: double = 100.0;
  d += 50.5;
  if (d != 150.5) {
    throw new Error("assertion failed: double += expected 150.5, got " + d);
  }

  // === 5. 移位复合 ===
  let sh: int = 16;
  sh <<= 2;
  if (sh != 64) {
    throw new Error("assertion failed: int <<= expected 64, got " + sh);
  }
  sh >>= 1;
  if (sh != 32) {
    throw new Error("assertion failed: int >>= expected 32, got " + sh);
  }
  sh >>>= 1;
  if (sh != 16) {
    throw new Error("assertion failed: int >>>= expected 16, got " + sh);
  }

  // === 6. 位运算复合 ===
  let bw: int = 0xFF;
  bw &= 0x0F;
  if (bw != 0x0F) {
    throw new Error("assertion failed: int &= expected 0x0F, got " + bw);
  }
  bw |= 0xF0;
  if (bw != 0xFF) {
    throw new Error("assertion failed: int |= expected 0xFF, got " + bw);
  }
  bw ^= 0xAA;
  if (bw != 0x55) {
    throw new Error("assertion failed: int ^= expected 0x55, got " + bw);
  }

  // === 7. boolean 位运算复合 ===
  let bl: boolean = true;
  bl &= false;
  if (bl != false) {
    throw new Error("assertion failed: boolean &= expected false, got " + bl);
  }
  bl |= true;
  if (bl != true) {
    throw new Error("assertion failed: boolean |= expected true, got " + bl);
  }
  bl ^= true;
  if (bl != false) {
    throw new Error("assertion failed: boolean ^= expected false, got " + bl);
  }

  // === 8. 字符串拼接 ===
  let s: string = "hello";
  s += " world";
  if (s != "hello world") {
    throw new Error("assertion failed: string += expected 'hello world', got " + s);
  }
  s += 42;
  if (s != "hello world42") {
    throw new Error("assertion failed: string += int expected 'hello world42', got " + s);
  }

  // === 9. 字段访问复合 ===
  let data: Data = new Data();
  data.val += 50;
  if (data.val != 50) {
    throw new Error("assertion failed: field += expected 50, got " + data.val);
  }
  data.label += "suffix";
  if (data.label != "suffix") {
    throw new Error("assertion failed: field string += expected 'suffix', got " + data.label);
  }
  data.val *= 2;
  if (data.val != 100) {
    throw new Error("assertion failed: field *= expected 100, got " + data.val);
  }
  data.sum += 200;
  if (data.sum != 200) {
    throw new Error("assertion failed: field long += expected 200, got " + data.sum);
  }

  // === 10. 数组索引复合 ===
  let arr: int[] = [10, 20, 30, 40, 50];
  arr[0] += 5;
  if (arr[0] != 15) {
    throw new Error("assertion failed: array[0] += expected 15, got " + arr[0]);
  }
  let idx: int = 2;
  arr[idx] *= 3;
  if (arr[2] != 90) {
    throw new Error("assertion failed: array[2] *= expected 90, got " + arr[2]);
  }
  arr[4] /= 2;
  if (arr[4] != 25) {
    throw new Error("assertion failed: array[4] /= expected 25, got " + arr[4]);
  }

  // === 11. 记录索引复合 ===
  let rec: Record<K, int> = { 'a': 1, 'b': 2, 'c': 3 };
  rec['a'] += 10;
  if (rec['a'] != 11) {
    throw new Error("assertion failed: record['a'] += expected 11, got " + rec['a']);
  }
  rec['b'] *= 3;
  if (rec['b'] != 6) {
    throw new Error("assertion failed: record['b'] *= expected 6, got " + rec['b']);
  }
  rec['c'] %= 2;
  if (rec['c'] != 1) {
    throw new Error("assertion failed: record['c'] %= expected 1, got " + rec['c']);
  }

  console.log("verified");
}
