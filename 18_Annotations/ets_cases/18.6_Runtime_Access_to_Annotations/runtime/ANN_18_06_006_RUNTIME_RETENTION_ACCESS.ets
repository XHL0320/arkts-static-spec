/**
 * @id ANN_18_06_006_RUNTIME_RETENTION_ACCESS
 * @expect runtime
 * @section 18.6
 * @design 验证 RUNTIME 保留注解编译并执行
 * @note 运行时用例：RUNTIME 策略注解可正常编译执行
 */
@Retention("RUNTIME")
@interface MyAnno {
  name: string
}

@MyAnno({name: "test"})
class A {}

function main(): void {
  console.log("verified")
}
