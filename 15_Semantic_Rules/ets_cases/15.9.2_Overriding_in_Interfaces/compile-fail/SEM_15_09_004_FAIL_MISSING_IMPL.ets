/**
 * @id SEM_15_09_004_FAIL_MISSING_IMPL
 * @expect compile-fail
 * @section 15.9.2
 * @design 验证接口方法未实现拒绝：缺少接口方法实现应报错
 * @note 反向用例：类声明 implements 但未提供方法实现
 */
interface Readable { read(): string; }
class FileStream implements Readable { }
function main(): void {}
