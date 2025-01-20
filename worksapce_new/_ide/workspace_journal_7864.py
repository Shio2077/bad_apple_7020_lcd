# 2025-01-19T13:42:11.352370500
import vitis

client = vitis.create_client()
client.set_workspace(path="worksapce_new")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="bad_apple_lcd")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

