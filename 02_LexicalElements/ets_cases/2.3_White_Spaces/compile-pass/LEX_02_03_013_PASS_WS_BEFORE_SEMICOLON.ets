/**
 * @id LEX_02_03_013_PASS_WS_BEFORE_SEMICOLON
 * @expect compile-pass
 * @section 2.3
 * @design 分号前可有空白 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testWsBeforeSemicolon(): void {
  let x: number = 1   ;
  let y: number = 2	;
  let z: number = 3 ;
}
