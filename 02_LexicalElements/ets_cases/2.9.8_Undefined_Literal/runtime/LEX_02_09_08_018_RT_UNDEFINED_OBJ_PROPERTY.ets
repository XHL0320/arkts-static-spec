/**
 * @id LEX_02_09_08_018_RT_UNDEFINED_OBJ_PROPERTY
 * @expect runtime
 * @section 2.9.8
 * @design undefined 在对象属性访问中
 * @note runtime 用例：验证 undefined 在对象属性访问中的运行时行为
 */

interface Obj {
  name: string
  value?: int
}

function main(): void {
  // undefined 在对象属性访问中
  let obj: Obj = { name: "test" }
  let x: int | undefined = obj.value
  if (x !== undefined) {
    throw new Error("obj property failed, got " + x)
  }
}
