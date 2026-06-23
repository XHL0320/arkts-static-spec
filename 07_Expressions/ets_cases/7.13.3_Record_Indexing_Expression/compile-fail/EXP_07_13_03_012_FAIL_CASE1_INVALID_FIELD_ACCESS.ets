/**
 * @id EXP_07_13_03_012_FAIL_CASE1_INVALID_FIELD_ACCESS
 * @expect compile-fail
 * @section 7.13.3
 * @design Case 1: 字段访问符号 x.key4 但 key4 不在字面量联合中，编译时错误
 * @note 反向用例：x.key4 等价于 x['key4']，不在 Keys 中，编译时错误
 */
type Keys = 'key1' | 'key2' | 'key3';

function main(): void {
  let x: Record<Keys, number> = {
    'key1': 1,
    'key2': 2,
    'key3': 4
  };
  let y: number = x.key4;
}
