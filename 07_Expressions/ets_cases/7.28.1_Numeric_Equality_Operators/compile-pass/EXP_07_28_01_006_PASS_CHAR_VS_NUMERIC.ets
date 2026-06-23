/**
 * @id EXP_07_28_01_006_PASS_CHAR_VS_NUMERIC
 * @expect compile-pass
 * @section 7.28.1
 * @design 验证 char 类型与数值类型等值比较编译通过
 * @note 正向用例：char 类型可通过加宽转换与 byte/int/long/float/double 等值比较
 *       char 文字量使用 c'X' 语法
 */
function main(): void {
  let c: char = c'A';
  let bi: byte = 65;
  let i: int = 65;
  let l: long = 65;
  let f: float = 65.0f;
  let d: double = 65.0;

  // char == byte（均为 int）
  let r1: boolean = c == bi;
  // char == int
  let r2: boolean = c == i;
  // char == long（char → long）
  let r3: boolean = c == l;
  // char == float（char → float）
  let r4: boolean = c == f;
  // char == double（char → double）
  let r5: boolean = c == d;
  // char != int
  let r6: boolean = c != 66;
}
