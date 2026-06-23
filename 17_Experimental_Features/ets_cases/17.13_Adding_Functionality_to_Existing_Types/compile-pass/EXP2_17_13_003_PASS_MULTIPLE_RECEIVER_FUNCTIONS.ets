/**
 * @id EXP2_17_13_003_PASS_MULTIPLE_RECEIVER_FUNCTIONS
 * @expect compile-pass
 * @section 17.13
 * @design 同一类型的多个接收者函数：为同一类型定义多个不同的顶层接收者函数，均可通过方法调用语法使用
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Calculator {
  value: number = 0
}

function addFunc(this: Calculator, x: number): void {
  this.value = this.value + x
}

function subtractFunc(this: Calculator, x: number): void {
  this.value = this.value - x
}

function multiplyFunc(this: Calculator, x: number): void {
  this.value = this.value * x
}

function testMultipleReceiverFunctions(): void {
  let calc: Calculator = new Calculator()
  calc.addFunc(10)
  calc.subtractFunc(3)
  calc.multiplyFunc(2)
  console.log("compiled successfully")
}
