/**
 * @id EXP_07_13_03_010_FAIL_CASE1_VARIABLE_INDEX
 * @expect compile-fail
 * @section 7.13.3
 * @design Case 1: Key 为字面量联合类型时，索引必须是字面量，变量作为索引编译时错误
 * @note 反向用例：let k = 'key1'; x[k] 变量索引，编译时错误
 * ⚠️ SPEC 不一致：编译器允许变量作为 Case1 的索引（匹配到 string 类型的 Key），
 *     spec 规定字面量联合 Key 只能使用字面量索引
 */
type Keys = 'key1' | 'key2' | 'key3';

function main(): void {
  let x: Record<Keys, number> = {
    'key1': 1,
    'key2': 2,
    'key3': 4
  };
  let k: string = 'key1';
  let y: number = x[k];
}
