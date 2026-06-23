/**
 * @id EXP2_17_05_002_PASS_GET_ONLY
 * @expect compile-pass
 * @section 17.5
 * @design 类仅声明 $_get（无 $_set），启用只读索引。验证读操作可用
 * @note 正向用例：验证仅 $_get 的类支持 v = obj[i] 语法
 */
class ReadOnlyIndexable {
  private data: string[] = ["x", "y", "z"]

  $_get(index: int): string {
    return this.data[index]
  }
}

function testGetOnly(): void {
  let obj: ReadOnlyIndexable = new ReadOnlyIndexable()
  let v: string = obj[0]
  let w: string = obj[2]
}
