# The command : ./rustclean.bash <relative_path>
# The relative path is the path to the directory that contains the files to be cleaned

dir=$1

echo "Cleaning directory $dir"

for file in $(find $dir -name "Cargo.toml"); do
  # Check if the file contains /node_modules/ and echo the path if not
  if ! [[ $file =~ "/node_modules/" ]]; then
    # Set a variable with the path to the parent folder with the target one
    parent_dir=$(dirname $file)

    cd $parent_dir

    # Clean it
    cargo clean

    echo "$parent_dir cleaned"
  fi
done

echo "Cleaned"