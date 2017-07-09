module glavo.vm.Args;

import std.getopt;

class Args {
public:
    bool helpFlag = false;
    bool versionFlag = false;
    string cpOption = "";
    string mainClass = "";

    string[] args = [];

    static immutable string usage = "";

    static Args parse(string[] args) {
        Args cmd = new Args();

        getopt(
            args,
            std.getopt.config.bundling,
            "help|?", &cmd.helpFlag,
            "version", &cmd.versionFlag,
            "classpath|cp", &cmd.cpOption
        );

        if (args.length > 0) {
            cmd.mainClass = args[0];
            cmd.args = args[1..$];
        }
        return cmd;
    }

    static string getUsage() {
        return usage;
    }
}

