# 2025-01-19T15:20:26.370520700
import vitis

client = vitis.create_client()
client.set_workspace(path="worksapce_new")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="bad_apple_lcd")
comp.build()

domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.set_config(option = "proc", param = "proc_extra_compiler_flags", value = " -g -Wall -Wextra -fno-tree-loop-distribute-patterns -march=iwmmxt")

status = domain.set_config(option = "proc", param = "proc_extra_compiler_flags", value = "-g -Wall -Wextra -fno-tree-loop-distribute-patterns")

status = domain.set_config(option = "proc", param = "proc_extra_compiler_flags", value = "-g -Wall -Wextra -fno-tree-loop-distribute-patterns  -march=iwmmxt")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

status = domain.set_config(option = "proc", param = "proc_extra_compiler_flags", value = "-g -Wall -Wextra -fno-tree-loop-distribute-patterns ")

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

