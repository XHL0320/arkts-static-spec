/**
 * @id EXP_07_13_03_002_PASS_CASE1_LITERAL_WRITE
 * @expect compile-pass
 * @section 7.13.3
 * @design Case 1: Key 为字面量联合类型，验证合法字面量赋值编译通过
 * @note 正向用例：x['key2'] = 8 赋值给合法字面量键，编译通过
 */
type Keys = 'key1' | 'key2' | 'key3';

function main(): void {
  let x: Record<Keys, number> = {
    'key1': 1,
    'key2': 2,
    'key3': 4
  };
  x['key2'] = 8;
  x['key1'] = 0;
}
