# Rust-Cleaner
Delete all rust cache files from your disk (/target folder)

## Download and execute
```bash
curl -L https://raw.githubusercontent.com/0xtlt/Rust-Cleaner/main/rustclean.bash -o rustclean.bash
chmod +x rustclean.bash
./rustclean.bash <relative_path>
```

## Usage
```bash
./rustclean.bash <relative_path>
```

### Common use cases
Delete all rust caches inside a ~/Documents folder (macos):
```bash
./rustclean.bash ~/Documents
```