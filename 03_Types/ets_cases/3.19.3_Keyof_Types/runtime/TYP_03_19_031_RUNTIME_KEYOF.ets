/**
 * @id TYP_03_19_031_RUNTIME_KEYOF
 * @expect runtime
 * @section 3.19.3
 * @design keyof 类型运行时验证
 * @note 运行时用例：验证 keyof 结果在运行时正确工作
 */
class A31 {
  field: number = 0
  method(): void {}
}
type KeysOfA31 = keyof A31

function main(): void {
  let key: KeysOfA31 = "field"
  let obj: A31 = new A31()
  if (obj.field != 0) {
    throw new Error("obj.field should be 0")
  }
  obj.method()
  console.log("verified")
}