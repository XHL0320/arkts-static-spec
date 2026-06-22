/**
 * @id CON_06_03_02_025_RUNTIME_CHAR_NEGATIVE_COMPARISON
 * @expect runtime
 * @section 6.3.2
 * @design char 与负值 int/long 比较运行时行为
 * @note 运行时用例：char 为无符号类型(0-65535)，与负值比较 char 应更大
 */
function main(): void {
  let c: char = c'A'

  let negInt: int = -10
  if (!(c > negInt)) {
    throw new Error("assertion failed: 'A'(65) > -10 should be true")
  }
  if (c < negInt) {
    throw new Error("assertion failed: 'A'(65) < -10 should be false")
  }

  let negLong: long = -100
  if (!(c > negLong)) {
    throw new Error("assertion failed: 'A'(65) > -100 should be true")
  }

  let negDouble: double = -1.5
  if (!(c > negDouble)) {
    throw new Error("assertion failed: 'A'(65) > -1.5 should be true")
  }

  console.log("Char negative comparison verified")
}
