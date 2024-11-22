TUNE=base
LABEL=mytest-m64
NUMBER=525
NAME=x264_r
SOURCES= x264_src/common/mc.c x264_src/common/predict.c \
	 x264_src/common/pixel.c x264_src/common/macroblock.c \
	 x264_src/common/frame.c x264_src/common/dct.c x264_src/common/cpu.c \
	 x264_src/common/cabac.c x264_src/common/common.c x264_src/common/mdate.c \
	 x264_src/common/rectangle.c x264_src/common/set.c \
	 x264_src/common/quant.c x264_src/common/deblock.c x264_src/common/vlc.c \
	 x264_src/common/mvpred.c x264_src/encoder/analyse.c \
	 x264_src/encoder/me.c x264_src/encoder/ratecontrol.c \
	 x264_src/encoder/set.c x264_src/encoder/macroblock.c \
	 x264_src/encoder/cabac.c x264_src/encoder/cavlc.c \
	 x264_src/encoder/encoder.c x264_src/encoder/lookahead.c \
	 x264_src/input/timecode.c x264_src/input/yuv.c x264_src/input/y4m.c \
	 x264_src/output/raw.c x264_src/output/matroska.c \
	 x264_src/output/matroska_ebml.c x264_src/output/flv.c \
	 x264_src/output/flv_bytestream.c x264_src/input/thread.c x264_src/x264.c \
	 x264_src/extras/getopt.c
EXEBASE=x264_r
NEED_MATH=yes
BENCHLANG=C

BENCH_FLAGS      = -Ildecod_src/inc -Ix264_src -Ix264_src/extras -Ix264_src/common -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x12345678
CC               = ~/llvm-cfmse/bin/clang       -m64
CC_VERSION_OPTION = --version
COPTIMIZE        = -g -O2 -mllvm -enable-cfmse=false -mllvm -force-cfmse  -mllvm -cfmse-unsafe-dci=false -march=native
CXX              = ~/llvm-cfmse/bin/clang++      -m64
CXXOPTIMIZE      = -g -O2 -mllvm -enable-cfmse=false -mllvm -force-cfmse -mllvm -cfmse-unsafe-dci=false -march=native
CXX_VERSION_OPTION = --version
EXTRA_CFLAGS     = -fno-strict-aliasing -fno-unsafe-math-optimizations -fno-finite-math-only -fgnu89-inline -fcommon
EXTRA_PORTABILITY = -DSPEC_LP64
FC               = gfortran           -m64
FC_VERSION_OPTION = --version
FOPTIMIZE        = -g -O2 -march=native
OPTIMIZE         = -g -O2 -march=native
OS               = unix
SPECLANG         = /home/srini/llvm-cfmse/bin/
absolutely_no_locking = 0
abstol           = 
action           = validate
allow_label_override = 0
backup_config    = 1
baseexe          = x264_r
basepeak         = 0
benchdir         = benchspec
benchmark        = 525.x264_r
binary           = 
bindir           = exe
builddir         = build
bundleaction     = 
bundlename       = 
calctol          = 1
changedhash      = 0
check_version    = 0
clean_between_builds = no
command_add_redirect = 1
commanderrfile   = speccmds.err
commandexe       = x264_r_base.mytest-m64
commandfile      = speccmds.cmd
commandoutfile   = speccmds.out
commandstdoutfile = speccmds.stdout
comparedir       = compare
compareerrfile   = compare.err
comparefile      = compare.cmd
compareoutfile   = compare.out
comparestdoutfile = compare.stdout
compile_error    = 0
compwhite        = 
configdir        = config
configfile       = srini.cfg
configpath       = /home/buvttchi/spec/config/srini.cfg
copies           = 1
current_range    = 
datadir          = data
default_size     = ref
default_submit   = $command
delay            = 0
deletebinaries   = 0
deletework       = 0
dependent_workloads = 1
device           = 
difflines        = 10
dirprot          = 511
discard_power_samples = 0
enable_monitor   = 1
endian           = 12345678
env_vars         = 0
expand_notes     = 0
expid            = 
exthash_bits     = 256
failflags        = 0
fake             = 0
feedback         = 1
flag_url_base    = https://www.spec.org/auto/cpu2017/Docs/benchmarks/flags/
floatcompare     = 
force_monitor    = 0
from_runcpu      = 2
fw_bios          = 
hostname         = buvttchi-ASUS-TUF-Gaming-A15-FA507RE-FA507RE
http_proxy       = 
http_timeout     = 30
hw_avail         = 
hw_cpu_max_mhz   = 
hw_cpu_name      = AMD Ryzen 7 6800H with Radeon Graphics
hw_cpu_nominal_mhz = 
hw_disk          = 412 GB  add more disk info here
hw_memory001     = 14.862 GB fixme: If using DDR4, the format is:
hw_memory002     = 'N GB (N x N GB nRxn PC4-nnnnX-X)'
hw_model         = 
hw_nchips        = 1
hw_ncores        = 
hw_ncpuorder     = 
hw_nthreadspercore = 
hw_ocache        = 
hw_other         = 
hw_pcache        = 
hw_scache        = 
hw_tcache        = 
hw_vendor        = My Corporation
idle_current_range = 
idledelay        = 10
idleduration     = 60
ignore_errors    = 1
ignore_sigint    = 0
ignorecase       = 
info_wrap_columns = 50
inputdir         = input
inputgenerrfile  = inputgen.err
inputgenfile     = inputgen.cmd
inputgenoutfile  = inputgen.out
inputgenstdoutfile = inputgen.stdout
iteration        = -1
iterations       = 1
keeptmp          = 0
label            = mytest-m64
license_num      = nnn (Your SPEC license number)
line_width       = 1020
link_input_files = 1
locking          = 1
log              = CPU2017
log_line_width   = 1020
log_timestamp    = 0
logfile          = /home/buvttchi/spec/tmp/CPU2017.061/templogs/preenv.intrate.061.0.log
logname          = /home/buvttchi/spec/tmp/CPU2017.061/templogs/preenv.intrate.061.0.log
lognum           = 061.0
mail_reports     = all
mailcompress     = 0
mailmethod       = smtp
mailport         = 25
mailserver       = 127.0.0.1
mailto           = 
make             = specmake
make_no_clobber  = 0
makefile_template = Makefile.YYYtArGeTYYYspec
makeflags        = --jobs=8
max_average_uncertainty = 1
max_hum_limit    = 0
max_report_runs  = 3
max_unknown_uncertainty = 1
mean_anyway      = 1
meter_connect_timeout = 30
meter_errors_default = 5
meter_errors_percentage = 5
min_report_runs  = 2
min_temp_limit   = 20
minimize_builddirs = 0
minimize_rundirs = 0
name             = x264_r
nansupport       = 
need_math        = yes
no_input_handler = close
no_monitor       = 
noratios         = 0
note_preenv      = 1
notes_plat_sysinfo_100 = 
notes_plat_sysinfo_101 =  Sysinfo program /home/buvttchi/spec/bin/sysinfo
notes_plat_sysinfo_102 =  Rev: r6732 of 2022-11-07 fe91c89b7ed5c36ae2c92cc097bec197
notes_plat_sysinfo_103 =  running on buvttchi-ASUS-TUF-Gaming-A15-FA507RE-FA507RE Sat Jul  6 12:52:23 2024
notes_plat_sysinfo_104 = 
notes_plat_sysinfo_105 =  SUT (System Under Test) info as seen by some common utilities.
notes_plat_sysinfo_107 = 
notes_plat_sysinfo_108 =  ------------------------------------------------------------
notes_plat_sysinfo_109 =  Table of contents
notes_plat_sysinfo_110 =  ------------------------------------------------------------
notes_plat_sysinfo_111 =   1. uname -a
notes_plat_sysinfo_112 =   2. w
notes_plat_sysinfo_113 =   3. Username
notes_plat_sysinfo_114 =   4. ulimit -a
notes_plat_sysinfo_115 =   5. sysinfo process ancestry
notes_plat_sysinfo_116 =   6. /proc/cpuinfo
notes_plat_sysinfo_117 =   7. lscpu
notes_plat_sysinfo_118 =   8. numactl warning
notes_plat_sysinfo_119 =   9. /proc/meminfo
notes_plat_sysinfo_120 =  10. who -r
notes_plat_sysinfo_121 =  11. Systemd service manager version: systemd 249 (249.11-0ubuntu3.12)
notes_plat_sysinfo_122 =  12. Failed units, from systemctl list-units --state=failed
notes_plat_sysinfo_123 =  13. Services, from systemctl list-unit-files
notes_plat_sysinfo_124 =  14. Linux kernel boot-time arguments, from /proc/cmdline
notes_plat_sysinfo_125 =  15. sysctl
notes_plat_sysinfo_126 =  16. /sys/kernel/mm/transparent_hugepage
notes_plat_sysinfo_127 =  17. /sys/kernel/mm/transparent_hugepage/khugepaged
notes_plat_sysinfo_128 =  18. OS release
notes_plat_sysinfo_129 =  19. Disk information
notes_plat_sysinfo_130 =  20. /sys/devices/virtual/dmi/id
notes_plat_sysinfo_131 =  21. dmidecode warning
notes_plat_sysinfo_132 =  22. BIOS
notes_plat_sysinfo_133 =  ------------------------------------------------------------
notes_plat_sysinfo_206 = 
notes_plat_sysinfo_207 =  ------------------------------------------------------------
notes_plat_sysinfo_208 =  1. uname -a
notes_plat_sysinfo_209 =    Linux buvttchi-ASUS-TUF-Gaming-A15-FA507RE-FA507RE 6.5.0-41-generic \#41~22.04.2-Ubuntu SMP PREEMPT_DYNAMIC
notes_plat_sysinfo_210 =    Mon Jun  3 11:32:55 UTC 2 x86_64 x86_64 x86_64 GNU/Linux
notes_plat_sysinfo_211 = 
notes_plat_sysinfo_212 =  ------------------------------------------------------------
notes_plat_sysinfo_213 =  2. w
notes_plat_sysinfo_214 =     12:52:23 up 2 days, 15:04,  1 user,  load average: 1.81, 0.73, 0.43
notes_plat_sysinfo_215 =    USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
notes_plat_sysinfo_216 =    buvttchi tty7     :0               Thu08    2days 22:40   0.94s mate-session
notes_plat_sysinfo_217 = 
notes_plat_sysinfo_218 =  ------------------------------------------------------------
notes_plat_sysinfo_219 =  3. Username
notes_plat_sysinfo_220 =    From environment variable $USER:  buvttchi
notes_plat_sysinfo_221 = 
notes_plat_sysinfo_222 =  ------------------------------------------------------------
notes_plat_sysinfo_223 =  4. ulimit -a
notes_plat_sysinfo_224 =    time(seconds)        unlimited
notes_plat_sysinfo_225 =    file(blocks)         unlimited
notes_plat_sysinfo_226 =    data(kbytes)         unlimited
notes_plat_sysinfo_227 =    stack(kbytes)        8192
notes_plat_sysinfo_228 =    coredump(blocks)     0
notes_plat_sysinfo_229 =    memory(kbytes)       unlimited
notes_plat_sysinfo_230 =    locked memory(kbytes) 1948004
notes_plat_sysinfo_231 =    process              60365
notes_plat_sysinfo_232 =    nofiles              1024
notes_plat_sysinfo_233 =    vmemory(kbytes)      unlimited
notes_plat_sysinfo_234 =    locks                unlimited
notes_plat_sysinfo_235 =    rtprio               0
notes_plat_sysinfo_236 = 
notes_plat_sysinfo_237 =  ------------------------------------------------------------
notes_plat_sysinfo_238 =  5. sysinfo process ancestry
notes_plat_sysinfo_239 =   /sbin/init splash
notes_plat_sysinfo_240 =   mate-terminal
notes_plat_sysinfo_241 =   bash
notes_plat_sysinfo_242 =   runcpu --config=srini.cfg intrate
notes_plat_sysinfo_243 =   runcpu --configfile srini.cfg --noreportable --nopower --runmode rate --tune base:peak --size refrate
notes_plat_sysinfo_244 =     intrate --nopreenv --note-preenv --logfile $SPEC/tmp/CPU2017.061/templogs/preenv.intrate.061.0.log
notes_plat_sysinfo_245 =     --lognum 061.0 --from_runcpu 2
notes_plat_sysinfo_246 =   specperl $SPEC/bin/sysinfo
notes_plat_sysinfo_247 =  $SPEC = /home/buvttchi/spec
notes_plat_sysinfo_248 = 
notes_plat_sysinfo_249 =  ------------------------------------------------------------
notes_plat_sysinfo_250 =  6. /proc/cpuinfo
notes_plat_sysinfo_251 =      model name      : AMD Ryzen 7 6800H with Radeon Graphics
notes_plat_sysinfo_252 =      vendor_id       : AuthenticAMD
notes_plat_sysinfo_253 =      cpu family      : 25
notes_plat_sysinfo_254 =      model           : 68
notes_plat_sysinfo_255 =      stepping        : 1
notes_plat_sysinfo_256 =      microcode       : 0xa404101
notes_plat_sysinfo_257 =      bugs            : sysret_ss_attrs spectre_v1 spectre_v2 spec_store_bypass srso
notes_plat_sysinfo_258 =      TLB size        : 2560 4K pages
notes_plat_sysinfo_259 =      cpu cores       : 8
notes_plat_sysinfo_260 =      siblings        : 16
notes_plat_sysinfo_261 =      1 physical ids (chips)
notes_plat_sysinfo_262 =      16 processors (hardware threads)
notes_plat_sysinfo_263 =      physical id 0: core ids 0-7
notes_plat_sysinfo_264 =      physical id 0: apicids 0-15
notes_plat_sysinfo_265 =    Caution: /proc/cpuinfo data regarding chips, cores, and threads is not necessarily reliable, especially for
notes_plat_sysinfo_266 =    virtualized systems.  Use the above data carefully.
notes_plat_sysinfo_267 = 
notes_plat_sysinfo_268 =  ------------------------------------------------------------
notes_plat_sysinfo_269 =  7. lscpu
notes_plat_sysinfo_270 = 
notes_plat_sysinfo_271 =  From lscpu from util-linux 2.37.2:
notes_plat_sysinfo_272 =    Architecture:                       x86_64
notes_plat_sysinfo_273 =    CPU op-mode(s):                     32-bit, 64-bit
notes_plat_sysinfo_274 =    Address sizes:                      48 bits physical, 48 bits virtual
notes_plat_sysinfo_275 =    Byte Order:                         Little Endian
notes_plat_sysinfo_276 =    CPU(s):                             16
notes_plat_sysinfo_277 =    On-line CPU(s) list:                0-15
notes_plat_sysinfo_278 =    Vendor ID:                          AuthenticAMD
notes_plat_sysinfo_279 =    Model name:                         AMD Ryzen 7 6800H with Radeon Graphics
notes_plat_sysinfo_280 =    CPU family:                         25
notes_plat_sysinfo_281 =    Model:                              68
notes_plat_sysinfo_282 =    Thread(s) per core:                 2
notes_plat_sysinfo_283 =    Core(s) per socket:                 8
notes_plat_sysinfo_284 =    Socket(s):                          1
notes_plat_sysinfo_285 =    Stepping:                           1
notes_plat_sysinfo_286 =    CPU max MHz:                        4785.0000
notes_plat_sysinfo_287 =    CPU min MHz:                        400.0000
notes_plat_sysinfo_288 =    BogoMIPS:                           6388.03
notes_plat_sysinfo_289 =    Flags:                              fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36
notes_plat_sysinfo_290 =                                        clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb rdtscp
notes_plat_sysinfo_291 =                                        lm constant_tsc rep_good nopl nonstop_tsc cpuid extd_apicid aperfmperf
notes_plat_sysinfo_292 =                                        rapl pni pclmulqdq monitor ssse3 fma cx16 sse4_1 sse4_2 x2apic movbe
notes_plat_sysinfo_293 =                                        popcnt aes xsave avx f16c rdrand lahf_lm cmp_legacy svm extapic
notes_plat_sysinfo_294 =                                        cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt tce
notes_plat_sysinfo_295 =                                        topoext perfctr_core perfctr_nb bpext perfctr_llc mwaitx cpb cat_l3
notes_plat_sysinfo_296 =                                        cdp_l3 hw_pstate ssbd mba ibrs ibpb stibp vmmcall fsgsbase bmi1 avx2
notes_plat_sysinfo_297 =                                        smep bmi2 invpcid cqm rdt_a rdseed adx smap clflushopt clwb sha_ni
notes_plat_sysinfo_298 =                                        xsaveopt xsavec xgetbv1 xsaves cqm_llc cqm_occup_llc cqm_mbm_total
notes_plat_sysinfo_299 =                                        cqm_mbm_local clzero irperf xsaveerptr rdpru wbnoinvd cppc arat npt
notes_plat_sysinfo_300 =                                        lbrv svm_lock nrip_save tsc_scale vmcb_clean flushbyasid decodeassists
notes_plat_sysinfo_301 =                                        pausefilter pfthreshold avic v_vmsave_vmload vgif v_spec_ctrl umip pku
notes_plat_sysinfo_302 =                                        ospke vaes vpclmulqdq rdpid overflow_recov succor smca
notes_plat_sysinfo_303 =    Virtualization:                     AMD-V
notes_plat_sysinfo_304 =    L1d cache:                          256 KiB (8 instances)
notes_plat_sysinfo_305 =    L1i cache:                          256 KiB (8 instances)
notes_plat_sysinfo_306 =    L2 cache:                           4 MiB (8 instances)
notes_plat_sysinfo_307 =    L3 cache:                           16 MiB (1 instance)
notes_plat_sysinfo_308 =    NUMA node(s):                       1
notes_plat_sysinfo_309 =    NUMA node0 CPU(s):                  0-15
notes_plat_sysinfo_310 =    Vulnerability Gather data sampling: Not affected
notes_plat_sysinfo_311 =    Vulnerability Itlb multihit:        Not affected
notes_plat_sysinfo_312 =    Vulnerability L1tf:                 Not affected
notes_plat_sysinfo_313 =    Vulnerability Mds:                  Not affected
notes_plat_sysinfo_314 =    Vulnerability Meltdown:             Not affected
notes_plat_sysinfo_315 =    Vulnerability Mmio stale data:      Not affected
notes_plat_sysinfo_316 =    Vulnerability Retbleed:             Not affected
notes_plat_sysinfo_317 =    Vulnerability Spec rstack overflow: Vulnerable: Safe RET, no microcode
notes_plat_sysinfo_318 =    Vulnerability Spec store bypass:    Mitigation; Speculative Store Bypass disabled via prctl
notes_plat_sysinfo_319 =    Vulnerability Spectre v1:           Mitigation; usercopy/swapgs barriers and __user pointer sanitization
notes_plat_sysinfo_320 =    Vulnerability Spectre v2:           Mitigation; Retpolines; IBPB conditional; IBRS_FW; STIBP always-on; RSB
notes_plat_sysinfo_321 =                                        filling; PBRSB-eIBRS Not affected; BHI Not affected
notes_plat_sysinfo_322 =    Vulnerability Srbds:                Not affected
notes_plat_sysinfo_323 =    Vulnerability Tsx async abort:      Not affected
notes_plat_sysinfo_324 = 
notes_plat_sysinfo_325 =  From lscpu --cache:
notes_plat_sysinfo_326 =       NAME ONE-SIZE ALL-SIZE WAYS TYPE        LEVEL  SETS PHY-LINE COHERENCY-SIZE
notes_plat_sysinfo_327 =       L1d       32K     256K    8 Data            1    64        1             64
notes_plat_sysinfo_328 =       L1i       32K     256K    8 Instruction     1    64        1             64
notes_plat_sysinfo_329 =       L2       512K       4M    8 Unified         2  1024        1             64
notes_plat_sysinfo_330 =       L3        16M      16M   16 Unified         3 16384        1             64
notes_plat_sysinfo_331 = 
notes_plat_sysinfo_332 =  ------------------------------------------------------------
notes_plat_sysinfo_333 =  8. numactl warning
notes_plat_sysinfo_334 = 
notes_plat_sysinfo_335 =  Unable to get information from 'numactl --hardware'.  Please consider installing numactl.
notes_plat_sysinfo_336 = 
notes_plat_sysinfo_337 =  ------------------------------------------------------------
notes_plat_sysinfo_338 =  9. /proc/meminfo
notes_plat_sysinfo_339 =     MemTotal:       15584056 kB
notes_plat_sysinfo_340 = 
notes_plat_sysinfo_341 =  ------------------------------------------------------------
notes_plat_sysinfo_342 =  10. who -r
notes_plat_sysinfo_343 =    run-level 5 Jul 3 21:47
notes_plat_sysinfo_344 = 
notes_plat_sysinfo_345 =  ------------------------------------------------------------
notes_plat_sysinfo_346 =  11. Systemd service manager version: systemd 249 (249.11-0ubuntu3.12)
notes_plat_sysinfo_347 =    Default Target  Status
notes_plat_sysinfo_348 =    graphical       degraded
notes_plat_sysinfo_349 = 
notes_plat_sysinfo_350 =  ------------------------------------------------------------
notes_plat_sysinfo_351 =  12. Failed units, from systemctl list-units --state=failed
notes_plat_sysinfo_352 =      UNIT                      LOAD   ACTIVE SUB    DESCRIPTION
notes_plat_sysinfo_353 =    * apport-autoreport.service loaded failed failed Process error reports when automatic reporting is enabled
notes_plat_sysinfo_354 = 
notes_plat_sysinfo_355 =  ------------------------------------------------------------
notes_plat_sysinfo_356 =  13. Services, from systemctl list-unit-files
notes_plat_sysinfo_357 =    STATE            UNIT FILES
notes_plat_sysinfo_358 =    enabled          ModemManager NetworkManager NetworkManager-dispatcher NetworkManager-wait-online
notes_plat_sysinfo_359 =                     accounts-daemon anacron apparmor avahi-daemon binfmt-support blueman-mechanism bluetooth
notes_plat_sysinfo_360 =                     bluez-alsa console-setup cron cups cups-browsed dmesg e2scrub_reap getty@ gpu-manager
notes_plat_sysinfo_361 =                     grub-common grub-initrd-fallback irqbalance kerneloops keyboard-setup lm-sensors
notes_plat_sysinfo_362 =                     networkd-dispatcher networking openvpn rsyslog secureboot-db setvtrgb snapd systemd-pstore
notes_plat_sysinfo_363 =                     systemd-resolved systemd-timesyncd thermald ua-reboot-cmds ubuntu-advantage udisks2 ufw
notes_plat_sysinfo_364 =                     unattended-upgrades virtualbox-guest-utils wpa_supplicant
notes_plat_sysinfo_365 =    enabled-runtime  netplan-ovs-cleanup systemd-fsck-root systemd-remount-fs
notes_plat_sysinfo_366 =    disabled         acpid bluetooth-mesh brltty console-getty debug-shell ifupdown-wait-online nftables
notes_plat_sysinfo_367 =                     openvpn-client@ openvpn-server@ openvpn@ rsync rtkit-daemon serial-getty@
notes_plat_sysinfo_368 =                     speech-dispatcherd systemd-boot-check-no-failures systemd-network-generator
notes_plat_sysinfo_369 =                     systemd-networkd systemd-networkd-wait-online systemd-sysext systemd-time-wait-sync tlp
notes_plat_sysinfo_370 =                     upower wpa_supplicant-nl80211@ wpa_supplicant-wired@ wpa_supplicant@
notes_plat_sysinfo_371 =    generated        apport speech-dispatcher virtualbox
notes_plat_sysinfo_372 =    indirect         lightdm saned@ spice-vdagentd uuidd
notes_plat_sysinfo_373 =    masked           alsa-utils cryptdisks cryptdisks-early hwclock pulseaudio-enable-autospawn rc rcS saned
notes_plat_sysinfo_374 =                     sudo systemd-rfkill x11-common
notes_plat_sysinfo_375 = 
notes_plat_sysinfo_376 =  ------------------------------------------------------------
notes_plat_sysinfo_377 =  14. Linux kernel boot-time arguments, from /proc/cmdline
notes_plat_sysinfo_378 =    BOOT_IMAGE=/boot/vmlinuz-6.5.0-41-generic
notes_plat_sysinfo_379 =    root=UUID=3b2441d0-eb72-4bda-aefc-16cf57c407f8
notes_plat_sysinfo_380 =    ro
notes_plat_sysinfo_381 =    quiet
notes_plat_sysinfo_382 =    splash
notes_plat_sysinfo_383 =    vt.handoff=7
notes_plat_sysinfo_384 = 
notes_plat_sysinfo_385 =  ------------------------------------------------------------
notes_plat_sysinfo_386 =  15. sysctl
notes_plat_sysinfo_387 =    kernel.numa_balancing               0
notes_plat_sysinfo_388 =    kernel.randomize_va_space           2
notes_plat_sysinfo_389 =    vm.compaction_proactiveness        20
notes_plat_sysinfo_390 =    vm.dirty_background_bytes           0
notes_plat_sysinfo_391 =    vm.dirty_background_ratio          10
notes_plat_sysinfo_392 =    vm.dirty_bytes                      0
notes_plat_sysinfo_393 =    vm.dirty_expire_centisecs        1500
notes_plat_sysinfo_394 =    vm.dirty_ratio                     20
notes_plat_sysinfo_395 =    vm.dirty_writeback_centisecs     1500
notes_plat_sysinfo_396 =    vm.dirtytime_expire_seconds     43200
notes_plat_sysinfo_397 =    vm.extfrag_threshold              500
notes_plat_sysinfo_398 =    vm.min_unmapped_ratio               1
notes_plat_sysinfo_399 =    vm.nr_hugepages                     0
notes_plat_sysinfo_400 =    vm.nr_hugepages_mempolicy           0
notes_plat_sysinfo_401 =    vm.nr_overcommit_hugepages          0
notes_plat_sysinfo_402 =    vm.swappiness                      60
notes_plat_sysinfo_403 =    vm.watermark_boost_factor       15000
notes_plat_sysinfo_404 =    vm.watermark_scale_factor          10
notes_plat_sysinfo_405 =    vm.zone_reclaim_mode                0
notes_plat_sysinfo_406 = 
notes_plat_sysinfo_407 =  ------------------------------------------------------------
notes_plat_sysinfo_408 =  16. /sys/kernel/mm/transparent_hugepage
notes_plat_sysinfo_409 =    defrag          always defer defer+madvise [madvise] never
notes_plat_sysinfo_410 =    enabled         always [madvise] never
notes_plat_sysinfo_411 =    hpage_pmd_size  2097152
notes_plat_sysinfo_412 =    shmem_enabled   always within_size advise [never] deny force
notes_plat_sysinfo_413 = 
notes_plat_sysinfo_414 =  ------------------------------------------------------------
notes_plat_sysinfo_415 =  17. /sys/kernel/mm/transparent_hugepage/khugepaged
notes_plat_sysinfo_416 =    alloc_sleep_millisecs   60000
notes_plat_sysinfo_417 =    defrag                      1
notes_plat_sysinfo_418 =    max_ptes_none             511
notes_plat_sysinfo_419 =    max_ptes_shared           256
notes_plat_sysinfo_420 =    max_ptes_swap              64
notes_plat_sysinfo_421 =    pages_to_scan            4096
notes_plat_sysinfo_422 =    scan_sleep_millisecs    10000
notes_plat_sysinfo_423 = 
notes_plat_sysinfo_424 =  ------------------------------------------------------------
notes_plat_sysinfo_425 =  18. OS release
notes_plat_sysinfo_426 =    From /etc/*-release /etc/*-version
notes_plat_sysinfo_427 =    os-release Ubuntu 22.04.4 LTS
notes_plat_sysinfo_428 = 
notes_plat_sysinfo_429 =  ------------------------------------------------------------
notes_plat_sysinfo_430 =  19. Disk information
notes_plat_sysinfo_431 =  SPEC is set to: /home/buvttchi/spec
notes_plat_sysinfo_432 =    Filesystem     Type  Size  Used Avail Use% Mounted on
notes_plat_sysinfo_433 =    /dev/nvme0n1p7 ext4  412G  293G   98G  75% /
notes_plat_sysinfo_434 = 
notes_plat_sysinfo_435 =  ------------------------------------------------------------
notes_plat_sysinfo_436 =  20. /sys/devices/virtual/dmi/id
notes_plat_sysinfo_437 =      Vendor:         ASUSTeK COMPUTER INC.
notes_plat_sysinfo_438 =      Product:        ASUS TUF Gaming A15 FA507RE_FA507RE
notes_plat_sysinfo_439 =      Product Family: ASUS TUF Gaming A15
notes_plat_sysinfo_440 = 
notes_plat_sysinfo_441 =  ------------------------------------------------------------
notes_plat_sysinfo_442 =  21. dmidecode warning
notes_plat_sysinfo_443 =    Cannot run dmidecode; consider saying (as root)
notes_plat_sysinfo_444 =     chmod +s /usr/sbin/dmidecode
notes_plat_sysinfo_445 = 
notes_plat_sysinfo_446 = 
notes_plat_sysinfo_447 =  ------------------------------------------------------------
notes_plat_sysinfo_448 =  22. BIOS
notes_plat_sysinfo_449 =  (This section combines info from /sys/devices and dmidecode.)
notes_plat_sysinfo_450 =     BIOS Vendor:       American Megatrends International, LLC.
notes_plat_sysinfo_451 =     BIOS Version:      FA507RE.315
notes_plat_sysinfo_452 =     BIOS Date:         11/30/2022
notes_wrap_columns = 0
notes_wrap_indent =   
num              = 525
obiwan           = 
oldhash          = 
os_exe_ext       = 
output_format    = txt,html,cfg,pdf,csv
output_root      = 
outputdir        = output
parallel_test    = 0
parallel_test_submit = 0
parallel_test_workloads = 
path             = /home/buvttchi/spec/benchspec/CPU/525.x264_r
plain_train      = 1
platform         = 
power            = 0
power_management = 
preENV_LD_LIBRARY_PATH = %{gcc_dir}/lib/:/lib64:/usr/local/lib:/usr/local/lib64
preenv           = 0
prefix           = 
prepared_by      = buvttchi  (is never output, only tags rawfile)
ranks            = 1
rawhash_bits     = 256
rebuild          = 0
reftime          = reftime
reportable       = 0
resultdir        = result
review           = 0
run              = all
runcpu           = /home/buvttchi/spec/bin/harness/runcpu --configfile srini.cfg --noreportable --nopower --runmode rate --tune base:peak --size refrate intrate --nopreenv --note-preenv --logfile /home/buvttchi/spec/tmp/CPU2017.061/templogs/preenv.intrate.061.0.log --lognum 061.0 --from_runcpu 2
rundir           = run
runmode          = rate
safe_eval        = 1
save_build_files = 
section_specifier_fatal = 1
setprocgroup     = 1
setup_error      = 0
sigint           = 2
size             = refrate
size_class       = ref
skipabstol       = 
skipobiwan       = 
skipreltol       = 
skiptol          = 
smarttune        = base
specdiff         = specdiff
specrun          = specinvoke
srcalt           = 
srcdir           = src
srcsource        = /home/buvttchi/spec/benchspec/CPU/525.x264_r/src
stagger          = 10
strict_rundir_verify = 1
sw_avail         = 
sw_base_ptrsize  = 64-bit
sw_compiler001   = C/C++/Fortran: Version 10.1.0 of GCC, the
sw_compiler002   = GNU Compiler Collection
sw_file          = ext4
sw_os001         = Ubuntu 22.04.4 LTS
sw_os002         = 6.5.0-41-generic
sw_other         = 
sw_peak_ptrsize  = 64-bit
sw_state         = Run level 5 (add definition here)
sysinfo_hash_bits = 256
sysinfo_program  = specperl /home/buvttchi/spec/bin/sysinfo
sysinfo_program_hash = sysinfo:SHA:2eb381fc1a58eb8122e4a1b875c1e38b3489dac84088192aa0ec6d157b084d06
table            = 1
teeout           = 0
test_date        = Jul-2024
test_sponsor     = My Corporation
tester           = My Corporation
threads          = 1
top              = /home/buvttchi/spec
train_single_thread = 0
train_with       = train
tune             = base
uid              = 1000
unbuffer         = 1
uncertainty_exception = 5
update           = 0
update_url       = http://www.spec.org/auto/cpu2017/updates/
use_submit_for_compare = 0
use_submit_for_speed = 0
username         = buvttchi
verbose          = 5
verify_binaries  = 1
version          = 1.000503
voltage_range    = 
worklist         = list
OUTPUT_RMFILES   = imagevalidate_frame_100.out imagevalidate_frame_141.out imagevalidate_frame_50.out
