/**
 * @id ENM_11_04_002_FAIL_FROMVALUE_NONEXISTENT
 * @expect runtime
 * @section 11.4
 * @design fromValue 不存在的值应抛运行时错误
 * @runtime-throws=Error
 * @note 运行时用例：spec 原例 Color.fromValue(6)
 */
enum C2 { Red, Green, Blue = 5 }

function main(): void {
  let x: C2 = C2.fromValue(6)
  console.log(x)
}