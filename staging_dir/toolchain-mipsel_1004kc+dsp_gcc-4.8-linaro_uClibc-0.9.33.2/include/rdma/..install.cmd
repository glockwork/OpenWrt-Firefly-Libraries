cmd_/home/wbj/project/mt7621/firewrt_build_all_app/FireWRT-OpenWrt-Firefly-FireWRT-SDK/build_dir/toolchain-mipsel_1004kc+dsp_gcc-4.8-linaro_uClibc-0.9.33.2/linux-dev//include/rdma/.install := bash scripts/headers_install.sh /home/wbj/project/mt7621/firewrt_build_all_app/FireWRT-OpenWrt-Firefly-FireWRT-SDK/build_dir/toolchain-mipsel_1004kc+dsp_gcc-4.8-linaro_uClibc-0.9.33.2/linux-dev//include/rdma ./include/uapi/rdma ib_user_cm.h ib_user_mad.h ib_user_sa.h ib_user_verbs.h rdma_netlink.h rdma_user_cm.h; bash scripts/headers_install.sh /home/wbj/project/mt7621/firewrt_build_all_app/FireWRT-OpenWrt-Firefly-FireWRT-SDK/build_dir/toolchain-mipsel_1004kc+dsp_gcc-4.8-linaro_uClibc-0.9.33.2/linux-dev//include/rdma ./include/rdma ; bash scripts/headers_install.sh /home/wbj/project/mt7621/firewrt_build_all_app/FireWRT-OpenWrt-Firefly-FireWRT-SDK/build_dir/toolchain-mipsel_1004kc+dsp_gcc-4.8-linaro_uClibc-0.9.33.2/linux-dev//include/rdma ./include/generated/uapi/rdma ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/wbj/project/mt7621/firewrt_build_all_app/FireWRT-OpenWrt-Firefly-FireWRT-SDK/build_dir/toolchain-mipsel_1004kc+dsp_gcc-4.8-linaro_uClibc-0.9.33.2/linux-dev//include/rdma/$$F; done; touch /home/wbj/project/mt7621/firewrt_build_all_app/FireWRT-OpenWrt-Firefly-FireWRT-SDK/build_dir/toolchain-mipsel_1004kc+dsp_gcc-4.8-linaro_uClibc-0.9.33.2/linux-dev//include/rdma/.install
