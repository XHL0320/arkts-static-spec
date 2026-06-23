/**
 * @id CLS_09_03_1_012_RUNTIME_FIELD_IMPL_PROPERTY
 * @expect runtime
 * @section 9.3.1
 * @design 字段实现接口属性运行时验证
 * @note 运行时用例：验证类实例的字段读写操作
 */
interface IProp1 {
  val: number
}
class CProp1 implements IProp1 {
  val: number = 42
}

function main(): void {
  let c = new CProp1()
  if (c.val != 42) {
    throw new Error("c.val should be 42")
  }
  c.val = 100
  if (c.val != 100) {
    throw new Error("c.val should be 100 after assignment")
  }
  console.log("Field impl property verified")
}
