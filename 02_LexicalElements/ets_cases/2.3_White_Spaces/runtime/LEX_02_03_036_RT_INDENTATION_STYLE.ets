/**
 * @id LEX_02_03_036_RT_INDENTATION_STYLE
 * @expect runtime
 * @section 2.3
 * @design 不同的行首缩进风格不影响语义 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
    let a: int = 1
		let b: int = 2
 	let c: int = 3
  let r: int = a + b + c
  if (r !== 6) { throw new Error("r !== 6") }
}
