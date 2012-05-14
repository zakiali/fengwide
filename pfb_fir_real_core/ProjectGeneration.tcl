#
# Created by System Generator     Sun May 13 17:14:47 2012
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {NGC Netlist}
    set Project {pfb_fir_real_core_cw}
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
    set Frequency {200}
    set NewXSTParser {0}
    set ProjectFiles {
        {{pfb_fir_real_core_cw.vhd} -view All}
        {{pfb_fir_real_core.vhd} -view All}
        {{pfb_fir_real_core_cw.ucf}}
        {{bmg_62_199e98588d9c0a81.mif}}
        {{bmg_62_d5b7eb23678de10c.mif}}
        {{bmg_62_f849e107d1112fef.mif}}
        {{bmg_62_c9b13a26e1c976ed.mif}}
        {{bmg_62_83fe0806cdc0420f.mif}}
        {{bmg_62_7efdd451ec9ecd90.mif}}
        {{bmg_62_b6e6c9b59ce4fadf.mif}}
        {{bmg_62_87538d1b92b16ce1.mif}}
        {{bmg_62_745dba485f20f896.mif}}
        {{bmg_62_d20d0ec823fdec4a.mif}}
        {{bmg_62_23ab077301fa4682.mif}}
        {{bmg_62_1aa0829514e8ac73.mif}}
        {{bmg_62_c427435888f01a9f.mif}}
        {{bmg_62_5f21d4ff216b1fd0.mif}}
        {{bmg_62_9dec88cb108e8ea0.mif}}
        {{bmg_62_69de893a5337e413.mif}}
        {{bmg_62_091470bf207d9593.mif}}
        {{/scratch/zaki/workspace/baobab/pfb_fir_real_core.mdl}}
    }
    set TopLevelModule {pfb_fir_real_core_cw}
    set SynthesisConstraintsFile {pfb_fir_real_core_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
