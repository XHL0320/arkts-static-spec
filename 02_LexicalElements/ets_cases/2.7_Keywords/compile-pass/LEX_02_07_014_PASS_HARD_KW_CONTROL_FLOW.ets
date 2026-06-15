/**
 * @id LEX_02_07_014_PASS_HARD_KW_CONTROL_FLOW
 * @expect compile-pass
 * @section 2.7
 * @design 硬关键字: if/else/do/while/for/switch/case/default/break/continue
 * @note 正向用例：流程控制关键字
 */
function test014(): void {
  let x: int = 5
  if (x > 0) {
    x = x + 1
  } else {
    x = x - 1
  }

  do {
    x = x - 1
  } while (x > 0)

  for (let i: int = 0; i < 3; i = i + 1) {
    if (i === 1) { continue }
    if (i === 2) { break }
  }

  switch (x) {
    case 0:
      x = 100
      break
    case 1:
      x = 200
      break
    default:
      x = 999
  }
}
