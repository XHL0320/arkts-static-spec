/**
 * @id EXP_07_32_03_007_RUNTIME_LHS_SETTER
 * @expect runtime
 * @section 7.32.3
 * @design 左值：setter 访问器

 * @note 运行时用例：实际执行验证setter 左值
 */
class C {
  private _val: int = 0
  set value(v: int) { this._val = v }
  get value(): int { return this._val }
}
function main(): void {
  let c: C = new C(); c.value = 42
  if (c.value != 42) { throw new Error("assertion failed: setter") }
  console.log("verified")
}
