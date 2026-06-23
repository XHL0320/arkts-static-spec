/**
 * @id EXP2_17_05_003_PASS_SET_ONLY
 * @expect compile-pass
 * @section 17.5
 * @design 类仅声明 $_set（无 $_get），启用只写索引。验证写操作可用
 * @note 正向用例：验证仅 $_set 的类支持 obj[i] = v 语法
 */
class WriteOnlyIndexable {
  private data: string[] = ["", "", ""]

  $_set(index: int, value: string): void {
    this.data[index] = value
  }
}

function testSetOnly(): void {
  let obj: WriteOnlyIndexable = new WriteOnlyIndexable()
  obj[0] = "hello"
  obj[1] = "world"
}
