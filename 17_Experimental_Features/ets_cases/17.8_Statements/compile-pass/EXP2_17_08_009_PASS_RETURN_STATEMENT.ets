/**
 * @id EXP2_17_08_009_PASS_RETURN_STATEMENT
 * @expect compile-pass
 * @section 17.8
 * @design 验证 return 语句在 ArkTS 中编译通过
 * @note 正向用例：验证 void 函数 return 和带返回值函数 return 表达式编译通过
 */
function returnVoid(): void {
  let x: number = 1
  if (x > 0) {
    return
  }
  return
}

function returnValue(): number {
  let a: number = 10
  let b: number = 20
  return a + b
}

function returnBoolean(): boolean {
  let x: number = 5
  let y: number = 10
  return x < y
}

function returnString(): string {
  return "hello"
}

function returnArray(): number[] {
  let arr: number[] = [1, 2, 3]
  return arr
}
