/**
 * @id LEX_02_05_043_PASS_MORE_KEYWORDS
 * @expect compile-pass
 * @section 2.5
 * @design 更多关键字
 * @note compile-pass 用例：验证更多关键字
 */

// 类相关关键字
class Animal {
  name: string
  constructor(name: string) {
    this.name = name
  }
}

// 继承关键字
class Dog extends Animal {
  breed: string
  constructor(name: string, breed: string) {
    super(name)
    this.breed = breed
  }
}

// 接口关键字
interface Printable {
  print(): void
}

// 实现关键字
class Document implements Printable {
  content: string
  constructor(content: string) {
    this.content = content
  }
  print(): void {
    // print content
  }
}
