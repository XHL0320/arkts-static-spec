/**
 * @id LEX_02_05_044_RT_OPTIONAL_CHAINING
 * @expect runtime
 * @section 2.5
 * @design 可选链运算符运行时验证
 * @note runtime 用例：验证可选链运算符的运行时行为
 */

interface Address {
  city: string
}

interface Person {
  name: string
  address?: Address
}

function main(): void {
  // 可选链运算符
  let person1: Person = { name: "Alice", address: { city: "Beijing" } }
  let person2: Person = { name: "Bob" }

  let city1 = person1?.address?.city
  if (city1 !== "Beijing") { throw new Error("person1 city failed, got " + city1) }

  let city2 = person2?.address?.city
  if (city2 !== undefined) { throw new Error("person2 city failed, got " + city2) }
}
