#!/usr/bin/zsh
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=24
#SBATCH --mem=96G
#SBATCH --time=04:00:00
#SBATCH --gres=gpu:volta:1
#SBATCH --partition=c18g
#SBATCH --job-name=FromScratchCV
#SBATCH --account=thes1067

#SBATCH --output=CV_%J.log


echo "------------------------------------------------------------"
echo "SLURM JOB ID: $SLURM_JOBID"
echo "Running on nodes: $SLURM_NODELIST"
echo "------------------------------------------------------------"

srun -n1 python Claix_Cross_Validate_Training_of_Model_From_Scratch.py
