/**
 * @id SEM_15_04_004
 * @expect compile-pass
 * @section 15.4
 * @design 验证接口实现的可赋值性：实现类可赋值给接口类型
 * @note 正向用例：FileStream <: Readable，可赋值给接口变量
 */
interface Readable { read(): string; }
class FileStream implements Readable {
    content: string = "";
    read(): string { return this.content; }
}
function main(): void {
    let fs: FileStream = new FileStream();
    fs.content = "data";
    let r: Readable = fs;
    console.log(`read: ${r.read()}`);
}
