/**
 * @id ENM_11_04_004_RUNTIME_INDEX_BY_VALUE
 * @expect runtime
 * @section 11.4
 * @design 通过枚举值索枚举名: Color[c]
 * @note 运行时用例
 */
enum C4 { Red, Green = 10, Blue }

function main(): void {
  let c: C4 = C4.Green
  let memberName: string = C4[c]
  if (memberName != "Green") throw new Error("index by value should be Green")
  console.log("enum index by value verified")
}