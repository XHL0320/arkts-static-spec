/*
 * @id SEM_15_01_00_016_PASS_type_annotated_declaration
 * @expect compile-pass
 * @section 15.1
 * @design 语义基础：类型注解的变量声明
 * @note 测试带类型注解的变量声明：int 和 string 类型的变量声明及使用
 */

// 测试类型注解的变量声明
function test_type_annotated_declaration(): void {
  let x: int = 10
  let y: string = "hello"

  console.log(`${x} ${y}`)
}
