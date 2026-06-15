/**
 * @id LEX_02_04_029_RT_LINE_SEP_SEQUENCE_EQUIVALENCE
 * @expect runtime
 * @section 2.4
 * @design 任意行终止符序列等价于单一分隔（LF/CR/LS/PS 混合）
 * @note 运行时用例：4 种行终止符全混合后语义不变
 */
function main(): void {
  let a: int = 1
   let b: int = 2    let c: int = a + b
  if (c !== 3) { throw new Error("c !== 3") }
}
