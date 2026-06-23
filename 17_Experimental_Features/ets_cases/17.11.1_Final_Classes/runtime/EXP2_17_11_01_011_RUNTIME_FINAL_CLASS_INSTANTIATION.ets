/**
 * @id EXP2_17_11_01_011_RUNTIME_FINAL_CLASS_INSTANTIATION
 * @expect runtime
 * @section 17.11.1
 * @design final 类实例化与属性访问运行时验证：验证 final 类可以正常实例化、属性访问和方法调用
 * @note 运行时用例：验证 final 类运行时行为与普通类一致（除继承限制外）
 */
final class RuntimeFinal {
  id: int = 0
  name: string = ""

  constructor(id_val: int, name_val: string) {
    this.id = id_val
    this.name = name_val
  }

  getId(): int {
    return this.id
  }

  getName(): string {
    return this.name
  }
}

function main(): void {
  let obj: RuntimeFinal = new RuntimeFinal(1, "test")
  if (obj.getId() != 1) {
    throw new Error("assertion failed: expected id 1, got " + obj.getId())
  }
  if (obj.getName() != "test") {
    throw new Error("assertion failed: expected name test, got " + obj.getName())
  }
  // Multiple instances
  let obj2: RuntimeFinal = new RuntimeFinal(2, "second")
  if (obj2.getId() != 2) {
    throw new Error("assertion failed: expected id 2")
  }
  console.log("verified")
}
