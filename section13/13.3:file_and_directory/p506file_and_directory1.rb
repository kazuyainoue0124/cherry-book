# FileクラスとDirクラスは組み込みライブラリなのでrequireなしで使える
# カレントディレクトリに"secret.txt"が存在するか？
File.exist?('./secret.txt')

# カレントディレクトリに"secret_folder"が存在するか？
Dir.exist?('./secret_folder')