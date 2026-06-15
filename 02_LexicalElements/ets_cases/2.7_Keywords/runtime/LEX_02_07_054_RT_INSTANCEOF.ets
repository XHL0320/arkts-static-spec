/**
 * @id LEX_02_07_054_RT_INSTANCEOF
 * @expect runtime
 * @section 2.7
 * @design 关键字 instanceof 运行时类型检查
 * @note 运行时用例：instanceof 操作符
 */
class Animal054 {
  v: int = 0
}

class Dog054 extends Animal054 {
  bark(): int { return 1 }
}

function main(): void {
  let d: Animal054 = new Dog054()
  if (!(d instanceof Animal054)) { throw new Error("d not Animal") }
  if (!(d instanceof Dog054)) { throw new Error("d not Dog") }
}
