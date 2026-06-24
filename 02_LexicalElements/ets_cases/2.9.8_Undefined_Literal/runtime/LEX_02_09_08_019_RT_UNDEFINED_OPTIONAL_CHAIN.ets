/**
 * @id LEX_02_09_08_019_RT_UNDEFINED_OPTIONAL_CHAIN
 * @expect runtime
 * @section 2.9.8
 * @design undefined 在可选链中
 * @note runtime 用例：验证 undefined 在可选链中的运行时行为
 */

interface Nested {
  value: int
}

interface Obj {
  name: string
  nested?: Nested
}

function main(): void {
  // undefined 在可选链中
  let obj: Obj = { name: "test" }
  let x: int | undefined = obj.nested?.value
  if (x !== undefined) {
    throw new Error("optional chain failed, got " + x)
  }
}
