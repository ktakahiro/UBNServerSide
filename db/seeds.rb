# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Dir.glob("#{Rails.root}/db/seeds/areas.yml").each do |yaml_filename|
  # yamlのファイル名から、対応するモデルクラスを特定し、クラスをロードする
  # 下記行が無いと、「ArgumentError: undefined class/module」が発生する。
  File.basename(yaml_filename,".yml").classify.constantize
  # すでに登録されているデータを全県削除
  Area.delete_all

  # yamlに記述されたレコードをDBに登録する。
  File.open(yaml_filename) do |load_target_yaml|
    records = YAML.load(load_target_yaml)

    records.each do |record|
      Area.create(record.attributes)
    end
  end
end



Dir.glob("#{Rails.root}/db/seeds/spots.yml").each do |yaml_filename|
  # yamlのファイル名から、対応するモデルクラスを特定し、クラスをロードする
  # 下記行が無いと、「ArgumentError: undefined class/module」が発生する。
  File.basename(yaml_filename,".yml").classify.constantize
  # すでに登録されているデータを全県削除
  Spot.delete_all

  # yamlに記述されたレコードをDBに登録する。
  File.open(yaml_filename) do |load_target_yaml|
    records = YAML.load(load_target_yaml)

    records.each do |record|
      Spot.create(record.attributes)
    end
  end
end


Dir.glob("#{Rails.root}/db/seeds/tags.yml").each do |yaml_filename|
  # yamlのファイル名から、対応するモデルクラスを特定し、クラスをロードする
  # 下記行が無いと、「ArgumentError: undefined class/module」が発生する。
  File.basename(yaml_filename,".yml").classify.constantize
  # すでに登録されているデータを全県削除
  Tag.delete_all

  # yamlに記述されたレコードをDBに登録する。
  File.open(yaml_filename) do |load_target_yaml|
    records = YAML.load(load_target_yaml)

    records.each do |record|
      Tag.create(record.attributes)
    end
  end
end

Dir.glob("#{Rails.root}/db/seeds/spot_areas.yml").each do |yaml_filename|
  # yamlのファイル名から、対応するモデルクラスを特定し、クラスをロードする
  # 下記行が無いと、「ArgumentError: undefined class/module」が発生する。
  File.basename(yaml_filename,".yml").classify.constantize
  # すでに登録されているデータを全県削除
  SpotArea.delete_all

  # yamlに記述されたレコードをDBに登録する。
  File.open(yaml_filename) do |load_target_yaml|
    records = YAML.load(load_target_yaml)

    records.each do |record|
      SpotArea.create(record.attributes)
    end
  end
end

Dir.glob("#{Rails.root}/db/seeds/spot_tags.yml").each do |yaml_filename|
  # yamlのファイル名から、対応するモデルクラスを特定し、クラスをロードする
  # 下記行が無いと、「ArgumentError: undefined class/module」が発生する。
  File.basename(yaml_filename,".yml").classify.constantize
  # すでに登録されているデータを全県削除
  SpotTag.delete_all

  # yamlに記述されたレコードをDBに登録する。
  File.open(yaml_filename) do |load_target_yaml|
    records = YAML.load(load_target_yaml)

    records.each do |record|
      SpotTag.create(record.attributes)
    end
  end
end