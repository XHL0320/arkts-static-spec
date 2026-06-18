/**
 * @id STM_08_06_017_FAIL_LabelInLambdaForOf
 * @expect compile-fail
 * @section 8.6
 * @design 标签关联 for-of 循环，循环体内 lambda 表达式引用该标签的 break/continue — 编译时错误
 * @note STATEMENTS.md: "A compile-time error occurs if the label identifier is used in lambda expressions within a loop body." for-of 同样受此约束
 */
function testLabelInLambdaForOfBreak(): void {
  let arr: int[] = [1, 2, 3];
  search: for (let v of arr) {
    const h = (): void => {
      break search;
    };
  }
}

function testLabelInLambdaForOfContinue(): void {
  let arr: string[] = ["a", "b", "c"];
  filter: for (let s of arr) {
    const k = (): void => {
      continue filter;
    };
  }
}
