#
# Created by System Generator     Mon Jul  2 20:10:03 2012
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {NGC Netlist}
    set Project {roachf_1024_bao_cw}
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
    set Frequency {149.99925000375}
    set NewXSTParser {0}
    set ProjectFiles {
        {{roachf_1024_bao_cw.vhd} -view All}
        {{roachf_1024_bao.vhd} -view All}
        {{roachf_1024_bao_cw.ucf}}
        {{dmg_62_0a86efc0bb6fa1ec.mif}}
        {{bmg_62_73edef83fb7839d9.mif}}
        {{dmg_62_d4b1790d74a4992a.mif}}
        {{bmg_62_bd93aafb66935d25.mif}}
        {{bmg_62_61722a40b5652b33.mif}}
        {{bmg_62_8b6902f70206a636.mif}}
        {{dmg_62_29a7fd57730c35e5.mif}}
        {{bmg_62_4780518c6f20c162.mif}}
        {{asr_11_0_baa2205482699974.mif}}
        {{bmg_62_45150160fbf326f2.mif}}
        {{bmg_62_a60cf5549354b619.mif}}
        {{/scratch/zaki/workspace/baobab/roachf_1024_bao.mdl}}
    }
    set TopLevelModule {roachf_1024_bao_cw}
    set SynthesisConstraintsFile {roachf_1024_bao_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
