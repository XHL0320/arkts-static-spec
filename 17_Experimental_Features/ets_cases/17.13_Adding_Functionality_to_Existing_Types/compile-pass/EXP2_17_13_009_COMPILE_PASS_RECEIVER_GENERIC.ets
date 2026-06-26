/**
 * @id EXP2_17_13_009_COMPILE_PASS_RECEIVER_GENERIC
 * @expect compile-pass
 * @section 17.13
 * @design 验证泛型 receiver 类型编译通过
 * @note 正向用例：receiver 函数可使用泛型 this 参数
 */
class Container<T> {
  value: T
  constructor(v: T) { this.value = v }
}

function getBoxValue(this: Container<int>): int { return this.value }

function main(): void {
  let b: Container<int> = new Container<int>(42)
  console.log(b.getBoxValue().toString())
}
