module glavo.vm.Args;

import std.getopt;

class Args {
public:
    bool helpFlag = false;
    bool versionFlag = false;
    string cpOption = "";
    string mainClass = "";

    string[] args = [];

    static immutable string usage = import("Help.txt");

    static Args parse(string[] args) {
        Args cmd = new Args();

        getopt(
            args,
            std.getopt.config.bundling,
            "help|?", &cmd.helpFlag,
            "version", &cmd.versionFlag,
            "classpath|cp", &cmd.cpOption
        );

        if (args.length > 1) {
            cmd.mainClass = args[1];
            cmd.args = args[2..$];
        }
        return cmd;
    }

    static string getUsage() {
        return usage;
    }
}

