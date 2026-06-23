/**
 * @id EXP_07_13_03_003_PASS_CASE1_FIELD_ACCESS
 * @expect compile-pass
 * @section 7.13.3
 * @design Case 1: 验证字段访问符号 x.key2 等价于 x['key2'] 且编译通过
 * @note 正向用例：字段访问符号作为索引表达式的等价语法，编译通过
 * ⚠️ SPEC 不一致：编译器不支持 Record 类型上的字段访问符号（"Property does not exist on type 'Record'"），
 *     spec 规定字段访问符号 x.key2 等价于 x['key2']
 */
type Keys = 'key1' | 'key2' | 'key3';

function main(): void {
  let x: Record<Keys, number> = {
    'key1': 1,
    'key2': 2,
    'key3': 4
  };
  let a: number = x.key2;
  x.key2 = 8;
  let b: number = x.key2;
}
