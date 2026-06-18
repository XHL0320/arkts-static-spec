/**
 * @id STM_08_13_016_RUNTIME_object_instance_switch
 * @expect runtime
 * @section 8.13
 * @design switch class|null 实例运行时验证（通过函数返回避免类型窄化）
 * @note 运行时用例：null → case null，对象实例 → default
 */
class SwitchObjBox {
  value: int
  constructor(v: int) { this.value = v }
}

function makeObjOrNull(returnNull: boolean): SwitchObjBox | null {
  if (returnNull) { return null }
  return new SwitchObjBox(42)
}

function main(): void {
  let a: SwitchObjBox | null = makeObjOrNull(true)
  let matched: int = 0
  switch (a) {
    case null: matched = 1; break
    default: matched = 2; break
  }
  if (matched != 1) { throw new Error("null should match case null") }

  let b: SwitchObjBox | null = makeObjOrNull(false)
  matched = 0
  switch (b) {
    case null: matched = 1; break
    default: matched = 2; break
  }
  if (matched != 2) { throw new Error("instance should match default") }

  console.log("verified")
}
