/**
 * @id LEX_02_03_038_RT_ZWNBSP_STRING_CONTENT
 * @expect runtime
 * @section 2.3
 * @design 字符串字面量内的 ZWNBSP 是字符串内容的一部分（不是分隔符） * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let s: string = "ab﻿cd"
  // ZWNBSP 在字符串字面量内是字符串内容，length = 5
  if (s.length !== 5) { throw new Error("string content length should include ZWNBSP") }
}
