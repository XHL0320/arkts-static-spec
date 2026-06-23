/**
 * @id EXP_07_27_06_021_RUNTIME_INT_ORDER
 * @expect runtime
 * @section 7.27.6
 * @design 验证 int 基类型枚举成员的关系运算符运行时行为，4 运算符 × 多组合（12 断言）
 * @note 运行时用例：int 基类型枚举基于隐含值 0,1,2,3 的数值比较
 *       Red=0, Green=1, Blue=2, Alpha=3
 */
enum Color { Red, Green, Blue, Alpha }

function main(): void {
    // === < 运算符（3 组合）===
    if (Color.Red < Color.Green != true) { throw new Error("FAIL: Red(0) < Green(1) should be true"); }
    if (Color.Green < Color.Blue != true) { throw new Error("FAIL: Green(1) < Blue(2) should be true"); }
    if (Color.Blue < Color.Red != false) { throw new Error("FAIL: Blue(2) < Red(0) should be false"); }

    // === <= 运算符（3 组合）===
    if (Color.Red <= Color.Red != true) { throw new Error("FAIL: Red(0) <= Red(0) should be true"); }
    if (Color.Red <= Color.Green != true) { throw new Error("FAIL: Red(0) <= Green(1) should be true"); }
    if (Color.Blue <= Color.Red != false) { throw new Error("FAIL: Blue(2) <= Red(0) should be false"); }

    // === > 运算符（3 组合）===
    if (Color.Alpha > Color.Blue != true) { throw new Error("FAIL: Alpha(3) > Blue(2) should be true"); }
    if (Color.Green > Color.Alpha != false) { throw new Error("FAIL: Green(1) > Alpha(3) should be false"); }
    if (Color.Blue > Color.Red != true) { throw new Error("FAIL: Blue(2) > Red(0) should be true"); }

    // === >= 运算符（3 组合）===
    if (Color.Alpha >= Color.Alpha != true) { throw new Error("FAIL: Alpha(3) >= Alpha(3) should be true"); }
    if (Color.Red >= Color.Red != true) { throw new Error("FAIL: Red(0) >= Red(0) should be true"); }
    if (Color.Red >= Color.Blue != false) { throw new Error("FAIL: Red(0) >= Blue(2) should be false"); }

    console.log("verified");
}
