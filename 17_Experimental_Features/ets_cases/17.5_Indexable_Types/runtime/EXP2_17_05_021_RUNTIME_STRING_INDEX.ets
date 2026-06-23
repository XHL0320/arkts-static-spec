/**
 * @id EXP2_17_05_021_RUNTIME_STRING_INDEX
 * @expect runtime
 * @section 17.5
 * @design 运行时验证字符串键索引，$_get/$_set 使用 string 索引参数
 * @note 运行时用例：验证字符串键索引的读写行为
 */
class StringMap {
  private store: Object = new Object()

  $_get(key: string): string {
    if (key == "name") {
      return "default_name"
    }
    if (key == "version") {
      return "1.0"
    }
    return "unknown"
  }

  $_set(key: string, value: string): void {
    // Simulated storage
  }
}

function main(): void {
  let map: StringMap = new StringMap()

  // Test string key read
  let nameVal: string = map["name"]
  if (nameVal != "default_name") {
    throw new Error("assertion failed: map['name'] expected default_name, got " + nameVal)
  }

  let ver: string = map["version"]
  if (ver != "1.0") {
    throw new Error("assertion failed: map['version'] expected 1.0, got " + ver)
  }

  let unknown: string = map["nonexistent"]
  if (unknown != "unknown") {
    throw new Error("assertion failed: map['nonexistent'] expected unknown, got " + unknown)
  }

  // Test string key write (should compile and run)
  map["custom_key"] = "custom_value"

  console.log("verified")
}
