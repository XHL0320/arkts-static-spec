/**
 * @id EXP2_17_05_013_FAIL_WRITE_ONLY_READ
 * @expect compile-fail
 * @section 17.5
 * @design 类仅声明 $_set（无 $_get），尝试通过索引读操作 v = x[i] 应产生编译错误
 * @note 反向用例：验证只写索引不支持读操作
 */
class WriteOnlyIdx {
  private data: string[] = ["", ""]

  $_set(index: int, value: string): void {
    this.data[index] = value
  }
}

function testWriteOnlyRead(): void {
  let obj: WriteOnlyIdx = new WriteOnlyIdx()
  let v: string = obj[0]
}
