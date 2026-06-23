/**
 * @id EXP_07_13_03_006_PASS_CASE2_STRING_KEY
 * @expect compile-pass
 * @section 7.13.3
 * @design Case 2: Key 为 string 类型，索引无限制，结果类型为 Value | undefined
 * @note 正向用例：Record<string, int> 使用 string 变量索引，编译通过
 */
function main(): void {
  let x: Record<string, int> = {
    "a": 10,
    "b": 20
  };
  let k: string = "a";
  let v: int | undefined = x[k];
}
