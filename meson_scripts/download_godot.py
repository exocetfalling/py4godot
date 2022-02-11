import wget
import zipfile
from shutil import copy
import glob

url = f'https://github.com/godotengine/godot/releases/download/3.4.2-stable/Godot_v3.4.2-stable_win64.exe.zip'
download_dir = "godot_zipfile.zip"
dir_zipfile_extract_to = "godot"
def run():
    wget.download(url, download_dir) # download .zip file
    with zipfile.ZipFile(download_dir, 'r') as zip_ref:
        zip_ref.extractall(dir_zipfile_extract_to)



if __name__ == "__main__":
    run()