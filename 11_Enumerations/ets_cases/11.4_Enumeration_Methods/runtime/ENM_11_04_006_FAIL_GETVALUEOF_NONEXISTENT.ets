/**
 * @id ENM_11_04_006_FAIL_GETVALUEOF_NONEXISTENT
 * @expect runtime
 * @section 11.4
 * @design getValueOf 不存在的名字应抛运行时错误
 * @runtime-throws=Error
 * @note 运行时用例
 */
enum C6 { Red, Green, Blue }

function main(): void {
  let x: C6 = C6.getValueOf("NonExistent")
  console.log(x)
}