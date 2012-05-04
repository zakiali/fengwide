#
# Created by System Generator     Thu May  3 16:15:43 2012
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {NGC Netlist}
    set Project {fft_wideband_real_core_cw}
    set Family {Virtex5}
    set Device {xc5vsx95t}
    set Package {ff1136}
    set Speed {-1}
    set HDLLanguage {vhdl}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores {False}
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {100}
    set NewXSTParser {0}
    set ProjectFiles {
        {{fft_wideband_real_core_cw.vhd} -view All}
        {{fft_wideband_real_core.vhd} -view All}
        {{fft_wideband_real_core_cw.ucf}}
        {{bmg_62_f1ca57bbf79f0673.mif}}
        {{bmg_62_6ea787275fdc24d6.mif}}
        {{bmg_62_721e2d25fd18b8a2.mif}}
        {{dmg_62_9d0957109dc92693.mif}}
        {{bmg_62_89660d475f29ded2.mif}}
        {{bmg_62_37f844592d213796.mif}}
        {{bmg_62_66064026d4816b4e.mif}}
        {{dmg_62_5863af36f6036886.mif}}
        {{bmg_62_51321cc7c8e9865c.mif}}
        {{bmg_62_936eb415a1e57c2f.mif}}
        {{bmg_62_a1b79e174d5a824f.mif}}
        {{dmg_62_252dff5223562ed1.mif}}
        {{bmg_62_66e53735c699b53b.mif}}
        {{bmg_62_de80a27a29f3ada6.mif}}
        {{dmg_62_566eb4bdfcc3bc15.mif}}
        {{bmg_62_fd6c0fe64ab6dcd2.mif}}
        {{bmg_62_92fa6367e92d9ee0.mif}}
        {{bmg_62_f5d63000a45b4cf8.mif}}
        {{dmg_62_1a18407473b36622.mif}}
        {{bmg_62_16e54f007b53b02e.mif}}
        {{bmg_62_daa5a8eb8c5c2eed.mif}}
        {{bmg_62_665c019c1c5f5676.mif}}
        {{bmg_62_5274d0b3f294243c.mif}}
        {{bmg_62_c55d75b26312ffb9.mif}}
        {{bmg_62_83efd1fdf9477a72.mif}}
        {{bmg_62_e195761ec2ed12e6.mif}}
        {{bmg_62_7061fc74b87e2931.mif}}
        {{bmg_62_073020084dc5d91f.mif}}
        {{bmg_62_2d41b260b5e70403.mif}}
        {{bmg_62_82b2485d32f76714.mif}}
        {{dmg_62_f0d8e22702089fe9.mif}}
        {{/scratch/zaki/workspace/baobab/fft_wideband_real_core.mdl}}
    }
    set TopLevelModule {fft_wideband_real_core_cw}
    set SynthesisConstraintsFile {fft_wideband_real_core_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
