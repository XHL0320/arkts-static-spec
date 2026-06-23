/**
 * @id EXP_07_13_03_009_FAIL_CASE1_INVALID_LITERAL_WRITE
 * @expect compile-fail
 * @section 7.13.3
 * @design Case 1: 验证对字面量联合中不存在的键赋值产生编译时错误
 * @note 反向用例：x['another key'] = 5 不在 Keys 中，编译时错误
 */
type Keys = 'key1' | 'key2' | 'key3';

function main(): void {
  let x: Record<Keys, number> = {
    'key1': 1,
    'key2': 2,
    'key3': 4
  };
  x['another key'] = 5;
}
