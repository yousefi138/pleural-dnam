#!/bin/bash 

cd /projects/MRC-IEU/research/projects/ieu3/p4/004/working/data/pleural-dnam/raw

smbclient //rdsfcifs.acrc.bris.ac.uk/ALSPAC_and_IEU_lab_200G_2
mask ""
recurse ON
prompt OFF
cd MB051
mget * 


#	drwxr-x---. 9 py16069 sscm 4096 Apr 21 13:39 2022-07-13
#	(alspac) [py16069@sscm-franklin2 aries]$ cd 2022-07-13/
#	(alspac) [py16069@sscm-franklin2 2022-07-13]$ ll
#	total 28
#	drwxr-x---. 2 py16069 sscm 4096 Apr 21 13:24 betas
#	drwxr-x---. 2 py16069 sscm 4096 Apr 21 13:39 control_matrix
#	drwxr-x---. 4 py16069 sscm 4096 Apr 21 13:28 derived
#	drwxr-x---. 2 py16069 sscm 4096 Apr 21 13:35 detection_p_values
#	drwxr-x---. 2 py16069 sscm 4096 Apr 21 13:38 norm_objects
#	drwxr-x---. 2 py16069 sscm 4096 Apr 21 13:39 qc_objects
#	drwxr-x---. 2 py16069 sscm 4096 Apr 21 13:16 samplesheet
