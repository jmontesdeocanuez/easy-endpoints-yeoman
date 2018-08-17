const { launchShellCommand } = require('./scriptLauncher');

launchShellCommand('chmod u+x ./scripts/init.sh')
launchShellCommand('./scripts/init.sh')