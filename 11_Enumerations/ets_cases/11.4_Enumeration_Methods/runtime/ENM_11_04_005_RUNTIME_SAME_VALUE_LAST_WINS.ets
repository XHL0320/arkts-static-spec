/**
 * @id ENM_11_04_005_RUNTIME_SAME_VALUE_LAST_WINS
 * @expect runtime
 * @section 11.4
 * @design 同值枚举在 textually last 优先
 * @note 运行时用例：E { One=1, one=1, oNe=1 }, fromValue(1).getName() → "oNe"
 */
enum E5 { One = 1, one = 1, oNe = 1 }

function main(): void {
  let name: string = E5.fromValue(1).getName()
  if (name != "oNe") throw new Error("last member with same value should win, got " + name)
  console.log("same value last wins verified")
}