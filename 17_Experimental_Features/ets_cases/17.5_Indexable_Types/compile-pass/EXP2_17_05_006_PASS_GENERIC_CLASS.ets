/**
 * @id EXP2_17_05_006_PASS_GENERIC_CLASS
 * @expect compile-pass
 * @section 17.5
 * @design 泛型类中使用 $_get/$_set，类型参数 T 用于索引返回值和方法参数
 * @note 正向用例：验证泛型类中可以声明和使用索引方法
 */
class GenericIndexable<T> {
  private items: T[]

  constructor() {
    this.items = []
  }

  $_get(index: int): T {
    return this.items[index]
  }

  $_set(index: int, value: T): void {
    this.items[index] = value
  }
}

function testGenericClass(): void {
  let stringIndex: GenericIndexable<string> = new GenericIndexable<string>()
  let numIndex: GenericIndexable<number> = new GenericIndexable<number>()
  numIndex[0] = 42
  let n: number = numIndex[0]
}
