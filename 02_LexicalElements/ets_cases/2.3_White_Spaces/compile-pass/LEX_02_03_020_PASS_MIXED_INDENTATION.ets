/**
 * @id LEX_02_03_020_PASS_MIXED_INDENTATION
 * @expect compile-pass
 * @section 2.3
 * @design 行首缩进可混合 Space 和 Tab * @note 正向用例：验证该特性编译通过的正确用法

 */
function testMixedIndentation(): void {
  let a: int = 1
	let b: int = 2
 	let c: int = 3
	  let d: int = 4
}
