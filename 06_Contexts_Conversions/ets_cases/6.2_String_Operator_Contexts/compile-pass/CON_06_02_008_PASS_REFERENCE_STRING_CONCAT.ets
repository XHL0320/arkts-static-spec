/**
 * @id CON_06_02_008_PASS_REFERENCE_STRING_CONCAT
 * @expect compile-pass
 * @section 6.2
 * @design String context: 引用类型(class) + string，通过 toString() 方法调用转换
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Item {
  name: string
  constructor(n: string) {
    this.name = n
  }
}

function testReferenceStringConcat(): void {
  let item: Item = new Item("widget")
  let s1: string = "item: " + item
  let s2: string = item + " created"
}
