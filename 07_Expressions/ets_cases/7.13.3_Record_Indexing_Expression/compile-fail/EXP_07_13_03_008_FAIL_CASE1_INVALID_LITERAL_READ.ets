/**
 * @id EXP_07_13_03_008_FAIL_CASE1_INVALID_LITERAL_READ
 * @expect compile-fail
 * @section 7.13.3
 * @design Case 1: 验证读取字面量联合中不存在的键产生编译时错误
 * @note 反向用例：x['key4'] 不在 Keys = 'key1'|'key2'|'key3' 中，编译时错误
 */
type Keys = 'key1' | 'key2' | 'key3';

function main(): void {
  let x: Record<Keys, number> = {
    'key1': 1,
    'key2': 2,
    'key3': 4
  };
  let y: number = x['key4'];
}
