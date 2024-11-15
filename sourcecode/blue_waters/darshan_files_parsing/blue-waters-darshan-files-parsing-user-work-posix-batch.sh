#!/usr/bin/zsh

#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks-per-node=1
#SBATCH --time=02:00:00
#SBATCH --account=thes1067
#SBATCH --job-name=user_posix_parse
#SBATCH --output=Blue_Waters_Data_Parsing_POSIX_User_Work_%J.log

SECONDS=0

echo "------------------------------------------------------------"
echo "SLURM JOB ID: $SLURM_JOBID"
echo "Running on nodes: $SLURM_NODELIST"
echo "------------------------------------------------------------"


# Export path to Darshan binary library
export LD_LIBRARY_PATH=~/Software/darshan-3.3.1/lib:$LD_LIBRARY_PATH

python_exe=/Software/miniconda3/bin/python

dataset_path=data/blue_waters_dataset

echo "Parsing dataset: $dataset_path"

# Start the script
srun -n1 /usr/bin/time -v $python_exe Blue_Waters_Data_Parsing_POSIX.py $dataset_path

# Print out the total run time
if (( $SECONDS > 3600 )) ; then
    let "hours=SECONDS/3600"
    let "minutes=(SECONDS%3600)/60"
    let "seconds=(SECONDS%3600)%60"
    echo "Completed in $hours hour(s), $minutes minute(s) and $seconds second(s)" 
elif (( $SECONDS > 60 )) ; then
    let "minutes=(SECONDS%3600)/60"
    let "seconds=(SECONDS%3600)%60"
    echo "Completed in $minutes minute(s) and $seconds second(s)"
else
    echo "Completed in $SECONDS seconds"
fi
