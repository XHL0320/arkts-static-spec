/**
 * @id EXP_07_34_005_PASS_BOOLEAN_NULL_INTERPOLATION
 * @expect compile-pass
 * @section 7.34
 * @design 验证布尔值、null、undefined 在字符串插值中的编译通过：boolean 转为 "true"/"false"，nullish 值转为对应字面量
 * @note 正向用例：所有类型均可作为嵌入表达式，隐式转换规则与字符串拼接一致
 */
function main(): void {
  let b1: boolean = true;
  let b2: boolean = false;
  let n: int | undefined = undefined;

  // 布尔值插值
  let r1: string = `true = ${b1} and false = ${b2}`;

  // undefined 插值
  let r2: string = `nil = ${n}`;

  // 三元表达式作为嵌入表达式
  let cond: boolean = true;
  let r3: string = `cond = ${cond ? "yes" : "no"}`;

  console.log("done");
}
