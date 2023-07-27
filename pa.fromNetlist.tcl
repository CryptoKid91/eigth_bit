
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name eight_bit -dir "/mnt/c/Users/marco.TIAMAT/Xilinx/eater/eight_bit/planAhead_run_4" -part xc6slx25ftg256-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/mnt/c/Users/marco.TIAMAT/Xilinx/eater/eight_bit/MANIAC.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/mnt/c/Users/marco.TIAMAT/Xilinx/eater/eight_bit} }
set_property target_constrs_file "constrains.ucf" [current_fileset -constrset]
add_files [list {constrains.ucf}] -fileset [get_property constrset [current_run]]
link_design
