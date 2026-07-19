/**
 * @id LEX_02_08_031_RUNTIME_NULLISH_UNION_FIELD_FACTOR
 * @expect compile-fail
 * @section 2.8
 * @design 补充测试因子：?? / ?. / ??= 与 T|null 字段、参数、返回值组合
 * @note 运行时用例：覆盖 checklist 中 nullish、字段、参数、返回值组合因子
 */
class Box031 { value: string | null = null }
function getMaybe031(flag: boolean): string | null { return flag ? "ok" : null }
function fill031(b: Box031, v: string | null): void { b.value = v }
function main(): void {
  let b: Box031 = new Box031()
  fill031(b, getMaybe031(false))
  let s1: string = b.value ?? "default"
  if (s1 !== "default") { throw new Error("nullish default failed") }
  b.value ??= getMaybe031(true)
  let len: int | undefined = b.value?.length
  if (b.value !== "ok") { throw new Error("??= failed") }
  if (len !== 2) { throw new Error("optional chain failed") }
}
