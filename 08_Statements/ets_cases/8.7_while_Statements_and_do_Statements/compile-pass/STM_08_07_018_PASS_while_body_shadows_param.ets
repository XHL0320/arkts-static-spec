/**
 * @id STM_08_07_018_PASS_while_body_shadows_param
 * @expect compile-pass
 * @section 8.7
 * @design while 循环体内 let 声明遮蔽参数名 — 循环体创建独立的块作用域
 * @note 正向用例：验证循环体遮蔽与 for 循环体遮蔽行为一致
 */
function testWhileShadowParam(param: int): void {
  let i: int = 0
  while (i < 3) {
    let param: string = "shadow"
    i++
  }
}
