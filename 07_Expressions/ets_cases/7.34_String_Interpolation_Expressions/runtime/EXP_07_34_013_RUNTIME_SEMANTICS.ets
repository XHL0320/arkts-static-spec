/**
 * @id EXP_07_34_013_RUNTIME_SEMANTICS
 * @expect runtime
 * @section 7.34
 * @design 验证字符串插值表达式在运行时的求值正确性：12 个断言覆盖变量插值、算术表达式、多表达式、布尔值、方法返回值、字段访问、数组索引、拼接等价
 * @note 运行时用例：验证字符串插值的运行时替换结果与手动拼接一致
 */

// 用于测试的顶层函数
function getValue(): int {
  return 99;
}

class Data {
  x: int = 0;
  label: string = "";
}

function main(): void {
  // === 1. 字符串变量插值 ===
  let name: string = "world";
  let r1: string = `hello ${name}`;
  if (r1 != "hello world") {
    throw new Error("assertion failed: expected 'hello world', got '" + r1 + "'");
  }

  // === 2. int 变量插值 ===
  let i: int = 42;
  let r2: string = `value = ${i}`;
  if (r2 != "value = 42") {
    throw new Error("assertion failed: expected 'value = 42', got '" + r2 + "'");
  }

  // === 3. 算术表达式插值 ===
  let a: int = 2;
  let b: int = 3;
  let r3: string = `${a} + ${b} = ${a + b}`;
  if (r3 != "2 + 3 = 5") {
    throw new Error("assertion failed: expected '2 + 3 = 5', got '" + r3 + "'");
  }

  let r3b: string = `${a} * ${b} = ${a * b}`;
  if (r3b != "2 * 3 = 6") {
    throw new Error("assertion failed: expected '2 * 3 = 6', got '" + r3b + "'");
  }

  let r3c: string = `${a} - ${b} = ${a - b}`;
  if (r3c != "2 - 3 = -1") {
    throw new Error("assertion failed: expected '2 - 3 = -1', got '" + r3c + "'");
  }

  // === 4. 多个嵌入表达式 ===
  let c: int = 5;
  let r4: string = `${a} and ${b} and ${c}`;
  if (r4 != "2 and 3 and 5") {
    throw new Error("assertion failed: multiple expressions, got '" + r4 + "'");
  }

  // === 5. 布尔值插值 ===
  let bt: boolean = true;
  let bf: boolean = false;
  let r5: string = `${bt} and ${bf}`;
  if (r5 != "true and false") {
    throw new Error("assertion failed: expected 'true and false', got '" + r5 + "'");
  }

  // === 6. 方法返回值插值 ===
  let r6: string = `value = ${getValue()}`;
  if (r6 != "value = 99") {
    throw new Error("assertion failed: expected 'value = 99', got '" + r6 + "'");
  }

  // === 7. 字段访问插值 ===
  let data: Data = new Data();
  data.x = 77;
  data.label = "test";
  let r7: string = `data.x = ${data.x}`;
  if (r7 != "data.x = 77") {
    throw new Error("assertion failed: expected 'data.x = 77', got '" + r7 + "'");
  }

  // === 8. 数组索引插值 ===
  let arr: int[] = [10, 20, 30];
  let r8: string = `arr[0] = ${arr[0]}`;
  if (r8 != "arr[0] = 10") {
    throw new Error("assertion failed: expected 'arr[0] = 10', got '" + r8 + "'");
  }

  // === 9. 与拼接结果等价 ===
  let r9a: string = `The result of ${a} * ${b} is ${a * b}`;
  let r9b: string = "The result of " + a + " * " + b + " is " + a * b;
  if (r9a != r9b) {
    throw new Error("assertion failed: interpolation '" + r9a + "' != concat '" + r9b + "'");
  }

  // === 10. 纯反引号（无插值） ===
  let r10: string = `hello world`;
  if (r10 != "hello world") {
    throw new Error("assertion failed: expected 'hello world', got '" + r10 + "'");
  }

  console.log("verified");
}
