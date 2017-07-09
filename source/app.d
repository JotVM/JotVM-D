import std.stdio;
import glavo.vm.Args;
import glavo.vm.VM;

int main(string[] args) {
    try {
        Args cmd = Args.parse(args);
	    if (cmd.versionFlag) {
	        writeln("version 0.0.1");
	    } else if (cmd.helpFlag || cmd.mainClass == "") {
            writeln(Args.getUsage());
	    } else  {
            VM vm = new VM();
            vm.start(cmd);
	    }
    } catch (Exception e) {
        writeln(Args.getUsage());
        return -1;
    }
	return 0;
}
