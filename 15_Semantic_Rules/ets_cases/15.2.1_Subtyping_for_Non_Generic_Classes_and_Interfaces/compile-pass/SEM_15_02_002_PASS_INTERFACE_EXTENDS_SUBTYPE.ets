/**
 * @id SEM_15_02_002
 * @expect compile-pass
 * @section 15.2.1
 * @design 验证接口 extends 产生直接子类型关系：interface I extends J → I <: J
 * @note 正向用例：ReadWrite <: Readable，可赋值给 Readable 类型变量
 */
interface Readable { read(): string; }
interface Writable { write(data: string): void; }
interface ReadWrite extends Readable, Writable { readAndWrite(): string; }
class FileStream implements ReadWrite {
    content: string = ""; read(): string { return this.content; }
    write(data: string): void { this.content = data; }
    readAndWrite(): string { return `rw: ${this.content}`; }
}
function readFrom(r: Readable): string { return r.read(); }
function main(): void {
    let fs: FileStream = new FileStream(); fs.write("hello");
    let result: string = readFrom(fs);
    console.log(`Result: ${result}`);
}
