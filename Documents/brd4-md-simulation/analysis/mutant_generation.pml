fetch 7AXR, mut, async=0

# Keep protein atoms only
remove mut and not polymer.protein

# Remove alternate conformation B at residue 81
remove mut and chain A and resi 81 and alt B

# Verify target residues
iterate mut and chain A and resi 81 and name CA, print("Residue 81:", resn)
iterate mut and chain A and resi 83 and name CA, print("Residue 83:", resn)

# Mutagenesis wizard
wizard mutagenesis

python
from pymol import cmd

wiz = cmd.get_wizard()
wiz.set_mode("ALA")

# Select residue 81 (W81A)
cmd.select("target81", "mut and chain A and resi 81")
wiz.do_select("target81")
python end

# Apply W81A manually in the wizard:
# Select an alanine rotamer, click Apply, then Done.

# After completing W81A, run the following commands
# in the PyMOL command line to save the structure:
# save mutant_model_W81A_F83A.pdb, mut