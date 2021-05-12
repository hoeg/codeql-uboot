import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation mi | 
      mi.getMacro().hasName(["ntohs", "ntohl", "ntohll"]) | 
      this = mi.getExpr()
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"