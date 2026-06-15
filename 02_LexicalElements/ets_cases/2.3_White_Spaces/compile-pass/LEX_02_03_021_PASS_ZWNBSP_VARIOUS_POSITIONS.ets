/**
 * @id LEX_02_03_021_PASS_ZWNBSP_VARIOUS_POSITIONS
 * @expect compile-pass
 * @section 2.3
 * @design ZWNBSP (U+FEFF) 在各种位置作为分隔符 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testZwnbspVariousPositions(): void {
  ﻿let a: int = 1
  let﻿b: int = 2
  let c﻿: int = 3
  let d:﻿int = 4
  let e: int﻿= 5
  let f: int =﻿6
}
