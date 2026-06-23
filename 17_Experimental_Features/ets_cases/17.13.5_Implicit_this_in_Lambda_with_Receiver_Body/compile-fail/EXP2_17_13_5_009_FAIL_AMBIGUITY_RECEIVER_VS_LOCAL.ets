/**
 * @id EXP2_17_13_5_009_FAIL_AMBIGUITY_RECEIVER_VS_LOCAL
 * @expect compile-fail
 * @section 17.13.5
 * @design 接收者函数中this绑定到非接收者类型 — ESE0201
 * @note 反向用例：验证该场景应产生编译时错误
 */
class DataBag { value: number = 0 }
function testAmbiguityLocal(): void {
  let processor = (this: DataBag): string => { let v: string = this; return v }
  let db: DataBag = new DataBag(); db.value = 42
  let r: string = processor(db)
}
