/**
 * @id ANN_18_03_008_RUNTIME_EXPORTED_ANNOTATION
 * @expect runtime
 * @section 18.3
 * @design 验证导出注解可在运行时正常使用
 * @note 运行时用例：自包含方式验证注解导出
 */
export @interface MyAnno {}

@MyAnno
class C {}

function main(): void {
  console.log("verified")
}
