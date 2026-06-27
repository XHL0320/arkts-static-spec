/**
 * @id ANN_18_02_012_PASS_ON_LAMBDA
 * @expect compile-pass
 * @section 18.2
 * @design 验证 SOURCE 策略注解可应用于 lambda 表达式
 * @note 正向用例：@Retention("SOURCE") 注解在 lambda 上
 */
@Retention("SOURCE")
@interface Override {}

let f: () => void = @Override (): void => {}
