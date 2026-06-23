/**
 * @id NAM_04_03_009_PASS_INTERFACE_SCOPE
 * @expect compile-pass
 * @section 4.3
 * @design 接口作用域：接口成员在外部可访问（默认 public）
 * @note 正向用例：验证接口级别作用域下成员对外可访问（§4.3 行 327-328）
 */
interface Shape {
    area(): number;
}
class Circle implements Shape {
    area(): number { return 314; }
}
let c: Shape = new Circle();
