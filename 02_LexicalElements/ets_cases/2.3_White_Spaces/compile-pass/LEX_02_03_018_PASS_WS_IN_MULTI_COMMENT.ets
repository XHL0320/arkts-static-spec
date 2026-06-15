/**
 * @id LEX_02_03_018_PASS_WS_IN_MULTI_COMMENT
 * @expect compile-pass
 * @section 2.3
 * @design 多行注释内含各种空白符（含VT FF NBSP ZWNBSP） * @note 正向用例：验证该特性编译通过的正确用法

 */
function testWsInMultiComment(): void {
  /* contains	tabvtff nbsp﻿zwnbsp */
  let x: int = 1
}
