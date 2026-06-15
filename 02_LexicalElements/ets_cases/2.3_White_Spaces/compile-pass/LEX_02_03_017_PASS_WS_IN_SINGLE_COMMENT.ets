/**
 * @id LEX_02_03_017_PASS_WS_IN_SINGLE_COMMENT
 * @expect compile-pass
 * @section 2.3
 * @design 单行注释内含各种空白符（spec显式允许） * @note 正向用例：验证该特性编译通过的正确用法

 */
function testWsInSingleComment(): void {
  let x: int = 1 // comment with	tab and﻿zwnbsp
  let y: int = 2 //        leading spaces in comment
}
