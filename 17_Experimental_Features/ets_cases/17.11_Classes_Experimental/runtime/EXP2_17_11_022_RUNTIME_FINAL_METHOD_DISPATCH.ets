/**
 * @id EXP2_17_11_022_RUNTIME_FINAL_METHOD_DISPATCH
 * @expect runtime
 * @section 17.11
 * @design 运行时验证 final 方法调用
 * @note 运行时用例：通过子类引用调用继承的 final 方法
 */
class Animal {
  final sound(): string { return "generic" }
}

class Dog extends Animal {}

function main(): void {
  let d: Dog = new Dog()
  let s: string = d.sound()
  console.log(s)
}
