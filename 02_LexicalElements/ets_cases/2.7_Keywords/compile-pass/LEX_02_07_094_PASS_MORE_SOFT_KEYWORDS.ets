/**
 * @id LEX_02_07_094_PASS_MORE_SOFT_KEYWORDS
 * @expect compile-pass
 * @section 2.7
 * @design 更多软关键字
 * @note compile-pass 用例：验证更多软关键字
 */

// extends 关键字
class Animal {
  name: string
  constructor(name: string) {
    this.name = name
  }
}

class Dog extends Animal {
  breed: string
  constructor(name: string, breed: string) {
    super(name)
    this.breed = breed
  }
}

// implements 关键字
interface Printable {
  print(): void
}

class Document implements Printable {
  content: string
  constructor(content: string) {
    this.content = content
  }
  print(): void {
    // print content
  }
}
