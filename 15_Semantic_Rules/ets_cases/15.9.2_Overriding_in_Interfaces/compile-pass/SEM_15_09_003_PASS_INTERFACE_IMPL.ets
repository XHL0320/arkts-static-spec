/**
 * @id SEM_15_09_003_PASS_INTERFACE_IMPL
 * @expect compile-pass
 * @section 15.9.2
 * @design 验证接口方法实现：类实现接口中的所有方法
 * @note 正向用例：FileStream implements Readable
 */
interface Readable { read(): string; }
class FileStream implements Readable { content: string = ""; read(): string { return this.content; } }
function main(): void {
    let fs: FileStream = new FileStream();
    fs.content = "data";
    console.log(fs.read());
}
