/**
 * @id LEX_02_03_011_PASS_WS_BETWEEN_IDENTIFIERS
 * @expect compile-pass
 * @section 2.3
 * @design 空白在标识符与类型注解、变量名之间 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testWsBetweenIdentifiers(): void {
  let foo : number = 1
  let bar : string = "hello"
  let baz : boolean = true
}
