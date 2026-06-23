/**
 * @id EXP_07_34_007_PASS_NESTED_BACKTICK
 * @expect compile-pass
 * @section 7.34
 * @design 验证嵌套反引号字符串在字符串插值中的编译通过：嵌入表达式可以是反引号多行字符串，也可包含嵌套的插值
 * @note 正向用例：Spec 明确规定 "An embedded expression can contain nested multiline strings"，验证嵌套语法
 */
function main(): void {
  let x: int = 42;

  // 嵌入表达式为反引号字符串（无插值）
  let r1: string = `${`inner`}`;

  // 嵌入表达式为含插值的反引号字符串（双重嵌套）
  let r2: string = `outer ${`inner ${x}`}`;

  // 混合多层嵌套
  let a: int = 1;
  let b: int = 2;
  let r3: string = `${`${a} + ${b} = ${a + b}`}`;

  console.log("done");
}
