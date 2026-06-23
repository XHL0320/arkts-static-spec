/**
 * @id STM_08_12_016_PASS_return_in_lambda_inside_function
 * @expect compile-pass
 * @section 8.12
 * @design 测试函数体内定义的lambda表达式中return语句的使用
 * @note 正向测试：函数内部定义的lambda中return带表达式（类型匹配lambda声明返回类型），lambda作为函数参数传递时也可正常返回；捕获外部变量后return仍合法
 */

function processWithLambda(arr: int[], factor: int): int {
    let mapper: (x: int) => int = (x: int): int => {
        return x * factor;
    };
    let total: int = 0;
    for (let i: int = 0; i < arr.length; i++) {
        total = total + mapper(arr[i]);
    }
    return total;
}

function useLambdaAsArgument(data: string[]): string {
    let prefix: string = ">> ";
    let result: string = "";
    for (let j: int = 0; j < data.length; j++) {
        let formatter: (s: string) => string = (s: string): string => {
            return prefix + "[" + s + "]";
        };
        result = result + formatter(data[j]);
    }
    return result;
}
