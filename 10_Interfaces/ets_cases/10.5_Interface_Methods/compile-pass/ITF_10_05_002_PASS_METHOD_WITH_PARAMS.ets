/**
 * @id ITF_10_05_002_PASS_METHOD_WITH_PARAMS
 * @expect compile-pass
 * @section 10.5
 * @design 带参数方法
 * @note 正向用例：验证接口带参数方法声明
 */
interface Processor {
    process(input: string, times: number): string;
}
