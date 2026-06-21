/**
 * @id TYP_03_19_02_003_FAIL_DIFF_METHOD_SIG
 * @expect compile-fail
 * @section 3.19.2
 * @design 联合类型同名方法不同签名不可调用
 * @note 反向用例：验证 goo(n: number) 和 goo() 签名不同
 */
class CatB { goo(n: number): void {} }
class DogB { goo(): void {} }

function main(): void {
  let u: CatB | DogB = new CatB()
  u.goo()
}