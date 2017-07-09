import std.stdio;
import glavo.vm.Args;

int main(string[] args) {
    Args cmd = Args.parse(args);

	if (cmd.versionFlag) {
	    writeln("version 0.0.1");
	} else if (cmd.helpFlag || cmd.cpOption == "") {
        writeln(Args.getUsage());
	}

	return 0;
}
