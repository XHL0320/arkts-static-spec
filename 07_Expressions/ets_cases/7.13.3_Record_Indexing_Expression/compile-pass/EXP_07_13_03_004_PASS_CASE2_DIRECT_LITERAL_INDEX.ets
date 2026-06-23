/**
 * @id EXP_07_13_03_004_PASS_CASE2_DIRECT_LITERAL_INDEX
 * @expect compile-pass
 * @section 7.13.3
 * @design Case 2: 验证非字面量联合 Key（number/string）的 Record 直接字面量索引编译通过
 * @note 正向用例：Record<number, string> 直接使用数字字面量索引，编译通过
 */
function main(): void {
  let x: Record<number, string> = {
    1: "hello",
    2: "bye"
  };
  let s: string | undefined = x[1];
  let s2: string | undefined = x[2];
}
