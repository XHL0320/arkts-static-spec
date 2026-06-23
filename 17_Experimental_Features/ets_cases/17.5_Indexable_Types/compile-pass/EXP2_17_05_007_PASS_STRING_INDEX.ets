/**
 * @id EXP2_17_05_007_PASS_STRING_INDEX
 * @expect compile-pass
 * @section 17.5
 * @design 使用 string 类型作为索引参数。验证 x["key"] 语法编译通过
 * @note 正向用例：验证字符串键索引的正确用法
 */
class StringKeyIndexable {
  private map: Object = new Object()

  $_get(key: string): string {
    return "value_for_" + key
  }

  $_set(key: string, value: string): void {
    // store logic
  }
}

function testStringIndex(): void {
  let obj: StringKeyIndexable = new StringKeyIndexable()
  let v: string = obj["name"]
  obj["age"] = "30"
}
