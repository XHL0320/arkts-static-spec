/**
 * @id LEX_02_02_001_PASS_FOUR_ELEMENT_TYPES
 * @expect compile-pass
 * @section 2.2
 * @design 一行代码中同时存在White Spaces、Tokens、Line Separators(隐含)、Comments四种词法输入元素 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testFourElementTypes(): void {
  let x: number = 1  // comment with spaces
}
