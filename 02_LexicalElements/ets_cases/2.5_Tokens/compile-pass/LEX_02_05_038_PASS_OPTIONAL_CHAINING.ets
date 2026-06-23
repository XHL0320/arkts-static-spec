/**
 * @id LEX_02_05_038_PASS_OPTIONAL_CHAINING
 * @expect compile-pass
 * @section 2.5
 * @design 可选链运算符 ?.
 * @note compile-pass 用例：验证可选链运算符
 */

// 可选链运算符 ?.
interface Address {
  city: string
}

interface Person {
  name: string
  address?: Address
}

let person: Person = { name: "Alice" }

// 可选链访问
let city = person?.address?.city
