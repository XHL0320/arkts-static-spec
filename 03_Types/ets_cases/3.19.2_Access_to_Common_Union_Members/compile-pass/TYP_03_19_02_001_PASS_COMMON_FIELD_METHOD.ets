/**
 * @id TYP_03_19_02_001_PASS_COMMON_FIELD_METHOD
 * @expect compile-pass
 * @section 3.19.2
 * @design 联合类型共同字段和方法访问
 * @note 正向用例：验证同名字段同类型、同名方法同签名可访问
 */
class Cat2 { n: number = 1; s: string = "aa"; foo(): void {} }
class Dog2 { n: number = 2; s: string = "bb"; foo(): void {} }

function main(): void {
  let u: Cat2 | Dog2 = new Cat2()
  let x: number = u.n
  u.foo()
  console.log("verified")
}