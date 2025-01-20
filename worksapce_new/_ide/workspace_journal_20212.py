# 2025-01-19T09:42:47.577490
import vitis

client = vitis.create_client()
client.set_workspace(path="worksapce_new")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../top.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="platform")
domain = platform.get_domain(name="zynq_fsbl")

status = domain.set_config(option = "lib", param = "XILFFS_use_lfn", value = "1", lib_name="xilffs")

domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.set_lib(lib_name="xilffs", path="D:\AMD\Vitis\2024.2\data\embeddedsw\lib\sw_services\xilffs_v5_3")

status = domain.set_config(option = "lib", param = "XILFFS_use_lfn", value = "1", lib_name="xilffs")

comp = client.create_app_component(name="bad_apple_lcd",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="bad_apple_lcd")
comp.build()

domain = platform.get_domain(name="zynq_fsbl")

status = domain.regenerate()

domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.set_lib(lib_name="xilrsa", path="D:\AMD\Vitis\2024.2\data\embeddedsw\lib\sw_services\xilrsa_v1_8")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

