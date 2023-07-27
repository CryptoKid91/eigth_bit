
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name eight_bit -dir "/mnt/c/Users/marco.TIAMAT/Xilinx/eater/eight_bit/planAhead_run_3" -part xc6slx25ftg256-3
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/mnt/c/Users/marco.TIAMAT/Xilinx/eater/eight_bit/MANIAC.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/mnt/c/Users/marco.TIAMAT/Xilinx/eater/eight_bit} }
set_property target_constrs_file "constrains.ucf" [current_fileset -constrset]
add_files [list {constrains.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/mnt/c/Users/marco.TIAMAT/Xilinx/eater/eight_bit/MANIAC.ncd"
if {[catch {read_twx -name results_1 -file "/mnt/c/Users/marco.TIAMAT/Xilinx/eater/eight_bit/MANIAC.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/mnt/c/Users/marco.TIAMAT/Xilinx/eater/eight_bit/MANIAC.twx\": $eInfo"
}
