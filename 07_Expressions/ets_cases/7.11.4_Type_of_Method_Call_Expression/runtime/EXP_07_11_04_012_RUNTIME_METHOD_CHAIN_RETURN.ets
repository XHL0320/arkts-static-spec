/**
 * @id EXP_07_11_04_012_RUNTIME_METHOD_CHAIN_RETURN
 * @expect runtime
 * @section 7.11.4
 * @design 验证链式方法调用返回值正确传播
 * @note 运行时用例：非 void 方法返回值通过表达式链式传递，验证正确性
 */
class Adder {
  value: int = 0;

  add(n: int): Adder {
    this.value = this.value + n;
    return this;
  }

  getValue(): int {
    return this.value;
  }
}

function main(): void {
  let a: Adder = new Adder();
  let result: int = a.add(5).add(10).add(20).getValue();
  if (result != 35) {
    throw new Error("assertion failed: expected 35, got " + result);
  }
  console.log("verified");
}
