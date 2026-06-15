/**
 * @id LEX_02_03_006_PASS_ZWNBSP_SEPARATOR
 * @expect compile-pass
 * @section 2.3
 * @design Zero-width no-break space (U+FEFF) 作为词法分隔符(BOM) * @note 正向用例：验证该特性编译通过的正确用法

 */
function testZwnbspSeparator(): void {
  let﻿x:﻿number﻿=﻿1
  let﻿y:﻿number﻿=﻿2
}
