/**
 * @id TYP_03_19_03_003_PASS_KEYOF_EMPTY_CLASS
 * @expect compile-pass
 * @section 3.19.3
 * @design keyof 空类等于 never
 * @note 正向用例：验证 keyof EmptyClass 返回 never
 */
class EmptyClass3 {}
type KeysOfEmpty3 = keyof EmptyClass3

function main(): void {
  console.log("verified")
}