/**
 * @id ANN_18_01_014_RUNTIME_BASIC_ANNOTATION_DECLARE
 * @expect runtime
 * @section 18.1
 * @design 验证注解声明可在运行时正常加载和编译
 * @note 运行时用例：声明注解并验证编译加载成功
 */
@interface Info {
  name: string
  version: number
}

function main(): void {
  console.log("verified")
}
