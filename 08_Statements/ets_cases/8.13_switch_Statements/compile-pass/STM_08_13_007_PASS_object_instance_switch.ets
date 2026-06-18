/**
 * @id STM_08_13_007_PASS_object_instance_switch
 * @expect compile-pass
 * @section 8.13
 * @design switch 表达式为 class|null union（严格遵循 STATEMENTS.md §8.13 示例模式）
 * @note 正向用例：通过函数返回 T|null 避免编译器静态窄化
 */
class SwitchTestBox {
  value: int
  constructor(v: int) { this.value = v }
}

function makeBoxOrNull(returnNull: boolean): SwitchTestBox | null {
  if (returnNull) { return null }
  return new SwitchTestBox(0)
}

function testObjectInstanceSwitch(): void {
  let a: SwitchTestBox | null = makeBoxOrNull(false)
  switch (a) {
    case null:
      console.log("null")
      break
    default:
      console.log("instance")
      break
  }
}
