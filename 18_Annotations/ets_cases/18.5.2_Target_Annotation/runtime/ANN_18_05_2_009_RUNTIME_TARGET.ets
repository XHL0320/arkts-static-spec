/**
 * @id ANN_18_05_2_009_RUNTIME_TARGET
 * @expect runtime
 * @section 18.5.2
 * @design 验证 @Target 注解在运行时正常编译执行
 * @note 运行时用例：@Target 注解编译执行
 */
@Target({targets: [AnnotationTargets.CLASS]})
@interface MyAnno {}

@MyAnno
class C {}

function main(): void {
  console.log("verified")
}
