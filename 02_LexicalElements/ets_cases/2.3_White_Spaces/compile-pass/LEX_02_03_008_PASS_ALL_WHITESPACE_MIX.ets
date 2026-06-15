/**
 * @id LEX_02_03_008_PASS_ALL_WHITESPACE_MIX
 * @expect compile-pass
 * @section 2.3
 * @design 全部6种空白符混合分隔Token: Space + Tab + VT + FF + NBSP + ZWNBSP * @note 正向用例：验证该特性编译通过的正确用法

 */
function testAllWhitespaceMix(): void {
  let 	 ﻿x: number = 1
  let	  y:﻿ number= 2
}
