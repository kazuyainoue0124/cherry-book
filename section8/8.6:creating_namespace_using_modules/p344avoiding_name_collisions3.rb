# 名前空間は名前の衝突を防ぐだけではなく、クラスのグループ分け/カテゴリ分けをする目的でも使われる
# RailsのGitHubリポジトリでは名前空間毎に多数のディレクトリを作って整理している

# 以下のコードであれば「ActiveRecordのAssociationsのAliasTrackerクラス」というように名前空間が作られている
require "active_support/core_text/string/conversions"

module ActiveRecord
  module Associations
    # Keeps track of table aliases for ActiveRecord::Associations::JoinDependency
    class AliasTracker # :nodoc:
      # 省略