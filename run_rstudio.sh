#!/bin/bash
set -e

# usage: run_rstudio.sif <container>

if [ $# -eq 0 ]; then
	CONT='rocker/verse'
else
	CONT=$1
fi

SIF="$(basename $CONT).sif"

echo "running rstudio in container ${SIF}"

# https://www.rocker-project.org/use/singularity/
# https://www.rc.virginia.edu/userinfo/howtos/rivanna/launch-rserver/

module load singularity


if [ ! -e ${SIF} ]; then
	echo "pulling container ${CONT} from docker hub"
	ssh petrichor-login "module load singularity; singularity pull ${PWD}/${SIF} docker://${CONT}"
fi

TMPDIR=rstudio-tmp # your choice
mkdir -p $TMPDIR/tmp/rstudio-server
uuidgen > $TMPDIR/tmp/rstudio-server/secure-cookie-key
chmod 600 $TMPDIR/tmp/rstudio-server/secure-cookie-key
mkdir -p $TMPDIR/var/{lib,run}
touch ${TMPDIR}/var/run/test
mkdir -p ${TMPDIR}/home

printf 'provider=sqlite\ndirectory=/var/lib/rstudio-server\n' > database.conf

echo "running rstudio on address 127.0.0.4, port 8787"

singularity exec \
    -B $TMPDIR/var/run:/var/run/rstudio-server \
    -B $TMPDIR/var/lib:/var/lib/rstudio-server \
    -B database.conf:/etc/rstudio/database.conf \
    -B $TMPDIR/tmp:/tmp \
    -B ${TMPDIR}/home:${HOME} \
    ${SIF} \
    rserver --www-address=127.0.0.4 --server-user=sco305 --www-port=8787



