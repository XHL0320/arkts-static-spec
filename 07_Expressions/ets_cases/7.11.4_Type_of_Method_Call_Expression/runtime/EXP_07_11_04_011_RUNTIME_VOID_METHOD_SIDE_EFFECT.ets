/**
 * @id EXP_07_11_04_011_RUNTIME_VOID_METHOD_SIDE_EFFECT
 * @expect runtime
 * @section 7.11.4
 * @design 验证 void 方法作为语句调用时副作用生效
 * @note 运行时用例：void 方法作为语句调用，验证其副作用（字段修改）正确生效
 */
class Counter {
  count: int = 0;

  increment(): void {
    this.count = this.count + 1;
  }

  getCount(): int {
    return this.count;
  }
}

function main(): void {
  let c: Counter = new Counter();
  c.increment();
  c.increment();
  c.increment();
  let val: int = c.getCount();
  if (val != 3) {
    throw new Error("assertion failed: expected 3, got " + val);
  }
  console.log("verified");
}
