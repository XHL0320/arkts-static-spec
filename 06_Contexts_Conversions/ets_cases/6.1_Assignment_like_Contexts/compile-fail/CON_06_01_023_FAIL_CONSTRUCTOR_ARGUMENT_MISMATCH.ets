/**
 * @id CON_06_01_023_FAIL_CONSTRUCTOR_ARGUMENT_MISMATCH
 * @expect compile-fail
 * @section 6.1
 * @design Call context: 构造器调用实参类型(number)与形参类型(string)不匹配且无隐式转换
 * @note 反向用例：验证该场景应产生编译时错误
 */
class Item {
  label: string
  constructor(l: string) {
    this.label = l
  }
}

function testConstructorArgumentMismatchFail(): void {
  let item: Item = new Item(999)
}
