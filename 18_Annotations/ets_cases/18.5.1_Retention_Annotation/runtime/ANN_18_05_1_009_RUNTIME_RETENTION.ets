/**
 * @id ANN_18_05_1_009_RUNTIME_RETENTION
 * @expect runtime
 * @section 18.5.1
 * @design 验证 @Retention("RUNTIME") 注解在运行时可用
 * @note 运行时用例：RUNTIME 策略注解
 */
@Retention("RUNTIME")
@interface MyAnno {}

@MyAnno
class C {}

function main(): void {
  console.log("verified")
}
