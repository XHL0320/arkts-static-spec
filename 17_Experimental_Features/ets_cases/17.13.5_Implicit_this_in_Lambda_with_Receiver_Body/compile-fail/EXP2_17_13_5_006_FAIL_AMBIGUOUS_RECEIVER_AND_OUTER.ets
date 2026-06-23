/**
 * @id EXP2_17_13_5_006_FAIL_AMBIGUOUS_RECEIVER_AND_OUTER
 * @expect compile-fail
 * @section 17.13.5
 * @design 接收者lambda中省略this访问与外部同名的成员应产生编译错误（使用隐式this需要编译器支持）
 * @note 反向用例：验证该场景应产生编译时错误（es2panda 不支持隐式 this，需要显式 this. 前缀）
 */
let g_title: string = "global title"
class Article { title: string = "article title" }
function testAmbiguous(): void {
  let printer = (this: Article): string => { return title }
  let a: Article = new Article()
  let r: string = printer(a)
}
