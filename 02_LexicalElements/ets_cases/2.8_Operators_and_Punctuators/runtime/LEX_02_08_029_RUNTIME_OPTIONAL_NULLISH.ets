/**
 * @id LEX_02_08_029_RUNTIME_OPTIONAL_NULLISH
 * @expect runtime
 * @section 2.8
 * @design 可选链 ?. 在 null 时短路、空值合并 ?? 仅替换 null/undefined
 * @note 运行时用例：实际执行验证语义正确性
 */
class Addr {
  city: string = "Beijing"
}
class Holder {
  addr: Addr | null = null
}
function main(): void {
  let h1: Holder = new Holder()
  let c1: string | undefined = h1.addr?.city
  if (c1 !== undefined) { throw new Error("optional chain on null should yield undefined") }

  let h2: Holder = new Holder()
  h2.addr = new Addr()
  let c2: string | undefined = h2.addr?.city
  if (c2 !== "Beijing") { throw new Error("optional chain on non-null failed") }

  let s: string | null = null
  let v1: string = s ?? "default"
  if (v1 !== "default") { throw new Error("?? on null failed") }

  let s2: string | null = ""
  let v2: string = s2 ?? "default"
  if (v2 !== "") { throw new Error("?? should not replace empty string") }
}
