/**
 * @id EXP_07_13_03_011_FAIL_CASE1_NUMERIC_NOT_IN_UNION
 * @expect compile-fail
 * @section 7.13.3
 * @design Case 1: 数值字面量联合 Key，索引值不在联合中时编译时错误
 * @note 反向用例：NKeys = 1|2|3，x[4] 不在联合中，编译时错误
 */
type NKeys = 1 | 2 | 3;

function main(): void {
  let x: Record<NKeys, string> = {
    1: "one",
    2: "two",
    3: "three"
  };
  let s: string = x[4];
}
