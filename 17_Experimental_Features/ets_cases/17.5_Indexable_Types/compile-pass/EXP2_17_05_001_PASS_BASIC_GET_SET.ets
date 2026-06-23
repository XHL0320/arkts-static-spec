/**
 * @id EXP2_17_05_001_PASS_BASIC_GET_SET
 * @expect compile-pass
 * @section 17.5
 * @design 类声明 $_get 和 $_set 方法，使用 int 类型索引进行读写。验证基本的索引语法编译通过
 * @note 正向用例：验证同时声明 $_get 和 $_set 的类可以通过 [] 语法读写
 *       ⚠️ SPEC 不一致：spec 要求索引参数为 string 或 number，但当前实现要求 int
 */
class MyIndexable {
  private data: string[] = ["a", "b", "c"]

  $_get(index: int): string {
    return this.data[index]
  }

  $_set(index: int, value: string): void {
    this.data[index] = value
  }
}

function testBasicGetSet(): void {
  let obj: MyIndexable = new MyIndexable()
  let v: string = obj[0]
  obj[1] = "x"
}
