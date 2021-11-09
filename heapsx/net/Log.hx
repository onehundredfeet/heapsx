package heapsx.net;
import yojimbo.Native.LogLevel;

class Log {
public static inline function setLogLevel(ll : yojimbo.Native.LogLevel) {
    yojimbo.Native.Yojimbo.logLevel(ll);
}
}

