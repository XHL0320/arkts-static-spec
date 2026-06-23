/**
 * @id EXP_07_11_02_012_RUNTIME_UNION_COMMON_METHOD
 * @expect runtime
 * @section 7.11.2
 * @design Union 类型公共方法运行时行为：接口类型变量调用公共方法，运行时分发到实际类型
 * @note 运行时用例：验证 expression with interface type 的候选实体集合在运行时分发的正确性
 */
interface DocFormatter {
    format(): string
}

class JsonFormatter implements DocFormatter {
    format(): string {
        return "{json: true}"
    }
}

class XmlFormatter implements DocFormatter {
    format(): string {
        return "<xml/>"
    }
}

function useFormatter(f: DocFormatter): string {
    return f.format()
}

function main(): void {
    let j: JsonFormatter = new JsonFormatter()
    let x: XmlFormatter = new XmlFormatter()

    let r1: string = useFormatter(j)
    if (r1 != "{json: true}") {
        throw new Error("assertion failed: expected json, got " + r1)
    }

    let r2: string = useFormatter(x)
    if (r2 != "<xml/>") {
        throw new Error("assertion failed: expected xml, got " + r2)
    }

    console.log("verified")
}
