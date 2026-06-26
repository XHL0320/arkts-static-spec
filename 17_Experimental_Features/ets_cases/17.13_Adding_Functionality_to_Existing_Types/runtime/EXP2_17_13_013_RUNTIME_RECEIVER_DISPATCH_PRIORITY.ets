/**
 * @id EXP2_17_13_013_RUNTIME_RECEIVER_DISPATCH_PRIORITY
 * @expect runtime
 * @section 17.13
 * @design 运行时验证实例方法优先于 receiver 函数的分派优先级
 * @note 运行时用例：验证同签名实例方法调用优先级高于 receiver 函数
 */
class Greeter {
  greet(): string { return "class-greet" }
}

class Calculator {
  value: int = 0
}

function addValue(this: Calculator, x: int): Calculator { this.value += x; return this }
function getValue(this: Calculator): int { return this.value }

function main(): void {
  let c: Calculator = new Calculator()
  c.addValue(10).addValue(20)
  let r: int = c.getValue()
  console.log(r.toString())
}
