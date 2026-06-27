/**
 * @id ANN_18_05_007_RUNTIME_STANDARD_ANNO
 * @expect runtime
 * @section 18.5
 * @design 验证标准注解可在运行时正常编译执行
 * @note 运行时用例：@Retention + @Target 使用
 */
@Retention("SOURCE")
@Target({targets: [AnnotationTargets.CLASS]})
@interface MyAnno {}

function main(): void {
  console.log("verified")
}
