/**
 * @id LEX_02_09_09_018_RT_NULL_OBJ_PROPERTY
 * @expect runtime
 * @section 2.9.9
 * @design null 在对象属性访问中
 * @note runtime 用例：验证 null 在对象属性访问中的运行时行为
 */

interface Obj {
  name: string
  value: int | null
}

function main(): void {
  // null 在对象属性访问中
  let obj: Obj = { name: "test", value: null }
  let x: int | null = obj.value
  if (x !== null) {
    throw new Error("obj property failed, got " + x)
  }
}
