/**
 * @id CLS_09_09_010_RUNTIME_DEFAULT_CTOR_FIELD_INIT
 * @expect runtime
 * @section 9.9.3
 * @design 默认构造器执行字段初始化器
 * @note 运行时用例：验证默认构造器正确初始化字段
 */
class WithDefaults {
  x: int = 10
  y: string = "hello"
}
function main(): void {
  let obj: WithDefaults = new WithDefaults()
  if (obj.x != 10) { throw new Error("field x should be 10") }
  if (obj.y != "hello") { throw new Error("field y should be hello") }
  console.log("verified")
}
