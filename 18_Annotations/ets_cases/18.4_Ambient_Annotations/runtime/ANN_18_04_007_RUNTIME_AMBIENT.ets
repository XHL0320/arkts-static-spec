/**
 * @id ANN_18_04_007_RUNTIME_AMBIENT
 * @expect runtime
 * @section 18.4
 * @design 验证 ambient annotation 运行时编译执行
 * @note 运行时用例：declare @interface 声明并执行
 */
declare @interface MyAnno {}

function main(): void {
  console.log("verified")
}
