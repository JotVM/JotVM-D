module glavo.vm.VM;

import glavo.vm.Args;
import std.stdio;

class VM {
    void start(Args args) {
        writeln("classpath: ", args.cpOption, " mainClass: ", args.mainClass, " args: ", args.args);
    }
}