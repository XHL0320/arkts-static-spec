/**
 * @id LEX_02_03_033_RT_TAB_INDENTED_ARITH
 * @expect runtime
 * @section 2.3
 * @design Tab 缩进风格的运算结果正确 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
	let a: int = 10
	let b: int = 3
	let r: int = a + b * 2
	if (r !== 16) { throw new Error("r !== 16") }
}
