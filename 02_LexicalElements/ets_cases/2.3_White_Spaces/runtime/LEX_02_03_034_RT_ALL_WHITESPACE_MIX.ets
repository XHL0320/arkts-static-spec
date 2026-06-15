/**
 * @id LEX_02_03_034_RT_ALL_WHITESPACE_MIX
 * @expect runtime
 * @section 2.3
 * @design 6种空白符混合不影响运行结果 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let 	a:  int﻿=10
  let	b: int =﻿3
  let r: int = a + b
  if (r !== 13) { throw new Error("r !== 13") }
}
