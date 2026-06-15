/**
 * @id LEX_02_05_014_PASS_PUNCTUATORS
 * @expect compile-pass
 * @section 2.5
 * @design Punctuators Token: ( ) [ ] { } , ; : .
 * @note 正向用例：标点符号作为 Token
 */
class Holder {
  v: int = 0
}

function testPunctuators(): void {
  let a: int = (1 + 2);
  let arr: int[] = [1, 2, 3];
  let block: int = 0;
  {
    block = 5;
  }
  let h: Holder = new Holder();
  h.v = a + arr[0] + block;
}
