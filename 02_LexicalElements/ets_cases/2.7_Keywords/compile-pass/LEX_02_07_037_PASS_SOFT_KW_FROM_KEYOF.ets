/**
 * @id LEX_02_07_037_PASS_SOFT_KW_FROM_KEYOF
 * @expect compile-pass
 * @section 2.7
 * @design 软关键字: keyof 在类型上下文中
 * @note 正向用例：keyof 类型操作符 (from 需要模块上下文，此处省略)
 */
class Item037 {
  name: string = ""
  count: int = 0
}

function test037(): void {
  let item: Item037 = new Item037()
  item.name = "apple"
  item.count = 10
}
