cd C:\Users\olami\Documents\brd4-md-simulation\analysis
log_open fig1_mutation.pml
fetch 7AXR, wt, async=0
load C:\Users\olami\Documents\brd4-md-simulation\data\mut.cif
remove wt and not polymer.protein
align mut and polymer.protein and name CA, wt and name CA, object=aln
color cyan, wt
color green, mut
select sites, (wt or mut) and resi 81+83
show sticks, sites
set seq_view, 1
log_close