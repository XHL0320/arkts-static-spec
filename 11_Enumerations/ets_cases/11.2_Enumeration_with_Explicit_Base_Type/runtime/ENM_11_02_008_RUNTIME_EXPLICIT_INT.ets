/**
 * @id ENM_11_02_008_RUNTIME_EXPLICIT_INT
 * @expect runtime
 * @section 11.2
 * @design 显式 int 基类枚举运行时数值正确
 * @note 运行时用例
 */
enum E8 { A = 10, B = 20 }

function main(): void {
  let v: int = E8.A
  if (v != 10) throw new Error("explicit int enum value failed")
  console.log("Explicit base type runtime verified")
}