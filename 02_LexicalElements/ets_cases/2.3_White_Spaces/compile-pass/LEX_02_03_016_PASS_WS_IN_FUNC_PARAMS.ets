/**
 * @id LEX_02_03_016_PASS_WS_IN_FUNC_PARAMS
 * @expect compile-pass
 * @section 2.3
 * @design 函数参数间空白 * @note 正向用例：验证该特性编译通过的正确用法

 */
function add(a: int, b: int, c: int): int {
  return a + b + c
}

function testWsInFuncParams(): void {
  let r1: int = add(1, 2, 3)
  let r2: int = add(1,    2,    3)
  let r3: int = add( 1 , 2 , 3 )
}
