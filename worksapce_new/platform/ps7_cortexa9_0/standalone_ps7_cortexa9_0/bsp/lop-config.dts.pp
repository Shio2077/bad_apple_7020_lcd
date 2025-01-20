# 0 "D:\\Projects\\prj\\AMD\\bad_apple_7020_lcd\\worksapce_new\\platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\lop-config.dts"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "D:\\Projects\\prj\\AMD\\bad_apple_7020_lcd\\worksapce_new\\platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\lop-config.dts"

/dts-v1/;
/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                lop_0 {
                        compatible = "system-device-tree-v1,lop,load";
                        load = "assists/baremetal_validate_comp_xlnx.py";
                };

                lop_1 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "D:/Projects/prj/AMD/bad_apple_7020_lcd/worksapce_new/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "ps7_cortexa9_0 D:/AMD/Vitis/2024.2/data/embeddedsw/lib/sw_services/xilrsa_v1_8/src D:/Projects/prj/AMD/bad_apple_7020_lcd/worksapce_new/_ide/.wsdata/.repo.yaml";
                };

        };
    };
