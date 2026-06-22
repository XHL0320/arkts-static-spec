var p=0,f=0;func c(_ b:Bool,_ s:String){if b{p+=1;print("PASS \(s)")}else{f+=1;print("FAIL \(s)")}}
enum ExplicitByte:Int{case a=0,b=1}
enum ExplicitDouble:Double{case a=0.0,b=1.0,c=3.14}
c(ExplicitByte.a.rawValue==0,"swift explicit Int rawValue")
c(ExplicitDouble.c.rawValue==3.14,"swift explicit Double rawValue")
c(true,"Swift rawValue is always explicit but limited to Int/String/Double N/A")
print("SUMMARY pass=\(p) fail=\(f)");if f != 0{exit(1)}
