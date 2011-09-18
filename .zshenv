# Load all files in a directory.
dir="${HOME}/.zshenv.d"

for file in $(ls $dir)
do
  source $dir/$file
done
