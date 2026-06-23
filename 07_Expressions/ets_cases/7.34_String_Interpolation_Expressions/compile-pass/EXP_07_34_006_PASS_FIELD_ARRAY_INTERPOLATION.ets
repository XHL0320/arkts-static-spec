/**
 * @id EXP_07_34_006_PASS_FIELD_ARRAY_INTERPOLATION
 * @expect compile-pass
 * @section 7.34
 * @design 验证对象字段访问和数组元素访问在字符串插值中的编译通过：obj.field、arr[idx] 均可作为嵌入表达式
 * @note 正向用例：字段访问、数组索引等复杂左值表达式也可以作为嵌入表达式
 */

class Data {
  x: int = 0;
  label: string = "default";
}

function main(): void {
  let d: Data = new Data();
  d.x = 42;
  d.label = "answer";

  // 字段访问插值
  let r1: string = `obj.x = ${d.x}`;
  let r2: string = `obj.label = ${d.label}`;

  // 数组元素插值
  let arr: int[] = [10, 20, 30];
  let r3: string = `arr[0] = ${arr[0]}`;
  let idx: int = 1;
  let r4: string = `arr[${idx}] = ${arr[idx]}`;

  console.log("done");
}
