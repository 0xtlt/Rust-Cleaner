# The command : ./rustclean.bash <relative_path>
# The relative path is the path to the directory that contains the files to be cleaned

dir=$1

echo "Cleaning directory $dir"

for file in $(find $dir -name "Cargo.toml"); do
  # Check if the file contains /node_modules/ and echo the path if not
  if ! [[ $file =~ "/node_modules/" ]]; then
    # Set a variable with the path to the parent folder with the target one
    parent_dir=$(dirname $file)/target

    # Check if the parent folder exists
    if [ -d $parent_dir ]; then
      # Delete the folder and the files inside it
      rm -r $parent_dir

      echo "$parent_dir deleted"
    fi
  fi
done

echo "Cleaned"