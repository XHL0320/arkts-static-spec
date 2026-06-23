/**
 * @id LEX_02_08_015_PASS_PUNCTUATORS
 * @expect compile-pass
 * @section 2.8
 * @design 标点符号 ( ) [ ] { } , ; . : 在表达式与语句中的使用
 * @note 正向用例：验证标点符号编译通过
 */
class Point015 {
  x: int = 0
  y: int = 0
}

function testPunctuators(): void {
  let arr: int[] = [1, 2, 3]
  let p: Point015 = new Point015()
  p.x = arr[0]
  p.y = arr[1]
  let val: int = (p.x + p.y) * 2
  for (let i: int = 0; i < arr.length; i++) {
    let item: int = arr[i]
  }
  let block: int = 0
  {
    block = 100
  }
}
