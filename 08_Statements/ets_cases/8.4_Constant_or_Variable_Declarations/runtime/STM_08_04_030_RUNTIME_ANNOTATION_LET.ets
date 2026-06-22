/**
 * @id STM_08_04_030_RUNTIME_ANNOTATION_LET
 * @expect runtime
 * @section 8.4
 * @design 注解使用在声明中

 * @note 运行时用例：实际执行验证注解声明
 */
function main(): void {
  let x: int = 1
  const y: int = 2
  let z: int = x + y
  if (z != 3) { throw new Error("assertion: 1+2=3") }
  console.log("verified")
}
