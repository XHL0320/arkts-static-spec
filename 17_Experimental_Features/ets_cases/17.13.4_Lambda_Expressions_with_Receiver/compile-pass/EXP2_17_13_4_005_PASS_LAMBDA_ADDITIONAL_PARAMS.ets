/**
 * @id EXP2_17_13_4_005_PASS_LAMBDA_ADDITIONAL_PARAMS
 * @expect compile-pass
 * @section 17.13.4
 * @design 带接收者的lambda带有额外参数
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class MyList { items: number[] = [] }
function testLambdaAdditionalParams(): void {
  let addItem = (this: MyList, item: number): void => { this.items.push(item) }
  let lst: MyList = new MyList()
  addItem(lst, 1)
  addItem(lst, 2)
  addItem(lst, 3)
  console.log("compiled successfully")
}
