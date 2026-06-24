/**
 * @id LEX_02_09_09_019_RT_NULL_OPTIONAL_CHAIN
 * @expect runtime
 * @section 2.9.9
 * @design null 在可选链中
 * @note runtime 用例：验证 null 在可选链中的运行时行为
 */

interface Nested {
  value: int | null
}

interface Obj {
  name: string
  nested?: Nested
}

function main(): void {
  // null 在可选链中
  let obj: Obj = { name: "test" }
  let x: int | null = obj.nested?.value ?? null
  if (x !== null) {
    throw new Error("optional chain failed, got " + x)
  }
}
