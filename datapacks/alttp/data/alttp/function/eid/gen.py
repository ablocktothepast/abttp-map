import os

folder_path = os.path.dirname(os.path.abspath(__file__))
extension = '.mcfunction'

for i in range(1, 136):
    filename = f"{i}{extension}"
    file_path = os.path.join(folder_path, filename)
    
    with open(file_path, 'w') as f:
        # Write content to the file if needed
        f.write(f"# This is file number {i}")
    
    print(f"Generated file: {filename}")

print("File generation complete.")