/**
 * @id CON_06_02_021_RUNTIME_ENUM_STRING_CONVERSION
 * @expect runtime
 * @section 6.2
 * @design string 值枚举 string 转换运行时行为：转换为对应成员的字符串值
 * @note 运行时用例：实际执行验证 string enum → 成员值
 */
enum Fruit {
  Apple = "apple",
  Banana = "banana",
  Cherry = "cherry"
}

function main(): void {
  let r1: string = "fruit: " + Fruit.Apple
  if (r1 != "fruit: apple") {
    throw new Error("assertion failed: expected 'fruit: apple', got '" + r1 + "'")
  }

  let r2: string = Fruit.Banana + " is yellow"
  if (r2 != "banana is yellow") {
    throw new Error("assertion failed: expected 'banana is yellow', got '" + r2 + "'")
  }

  let r3: string = "pick: " + Fruit.Cherry
  if (r3 != "pick: cherry") {
    throw new Error("assertion failed: expected 'pick: cherry', got '" + r3 + "'")
  }

  console.log("Enum string conversion verified")
}
