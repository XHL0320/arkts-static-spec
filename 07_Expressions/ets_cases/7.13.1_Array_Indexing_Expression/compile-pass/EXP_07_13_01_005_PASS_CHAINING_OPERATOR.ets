/**
 * @id EXP_07_13_01_005_PASS_CHAINING_OPERATOR
 * @expect compile-pass
 * @section 7.13.1
 * @design 验证链式操作符 ?. 后的数组索引合法
 * @note 正向用例：obj?.arr[0] 中 ?. 之后数组类型 T，索引表达式合法
 */
class Holder {
  items: string[] = ["x", "y", "z"];
}

function main(): void {
  let h: Holder | undefined = new Holder();
  let s: string | undefined = h?.items[1];
}
