
reinitialize
cd C:\Users\olami\Documents\brd4-md-simulation\analysis

fetch 7AXR, wt, async=0
load mutant_model_W81A_F83A.pdb, mut

remove wt and not polymer.protein
remove mut and not polymer.protein

align (mut and polymer.protein and name CA), (wt and polymer.protein and name CA), object=aln

hide everything
show cartoon, wt
show cartoon, mut

color cyan, wt
color green, mut

select sites_wt, wt and resi 81+83
select sites_mut, mut and resi 81+83

show sticks, sites_wt or sites_mut
color yellow, sites_wt
color red, sites_mut

set seq_view, 1
orient wt or mut
zoom wt or mut

bg_color white
ray 1600, 1200
png fig1_mutation.png, dpi=300

save fig1_mutation.pse
