/**
 * @id EXP2_17_13_1_011_FAIL_WRONG_THIS_NAME
 * @expect compile-fail
 * @section 17.13.1
 * @design 接收者参数名称必须是 "this"，使用其他名称应编译失败（self 不会被视为接收者）
 * @note 反向用例：验证该场景应产生编译时错误 ESE0087
 */
class MyItem { id: number = 0 }
function getId(self: MyItem): number { return self.id }
function testWrongThisName(): void {
  let it: MyItem = new MyItem(); it.id = 100
  let result: number = it.getId()
}
