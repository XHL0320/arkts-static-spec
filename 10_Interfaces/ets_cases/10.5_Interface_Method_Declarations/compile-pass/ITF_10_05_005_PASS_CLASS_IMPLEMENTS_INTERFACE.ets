/**
 * @id ITF_10_05_005_PASS_CLASS_IMPLEMENTS_INTERFACE
 * @expect compile-pass
 * @section 10.5
 * @design 类实现接口
 * @note 正向用例：验证类 implements 接口
 */
interface Sayable {
    say(): string;
}
class Greeter implements Sayable {
    say(): string { return "hello"; }
}
