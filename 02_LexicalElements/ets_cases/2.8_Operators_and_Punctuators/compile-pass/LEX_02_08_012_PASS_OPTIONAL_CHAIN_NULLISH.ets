/**
 * @id LEX_02_08_012_PASS_OPTIONAL_CHAIN_NULLISH
 * @expect compile-pass
 * @section 2.8
 * @design 可选链 ?. 与空值合并 ??
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Address {
  city: string = "Beijing"
}
class User {
  address: Address | null = null
}
function testOptionalAndNullish(): void {
  let u: User = new User()
  let c: string | undefined = u.address?.city
  let safe: string = u.address?.city ?? "Unknown"
  let s: string | null = null
  let v: string = s ?? "default"
}
