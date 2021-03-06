# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.destroy_all #deleta todas as categorias
Category.create!(name: 'Notícias') #cria categoria noticia
Category.create!(name: 'Esportes')
Category.create!(name: 'Entretenimento')

Article.destroy_all #deleta todos os artigos

#Cria 100 artigos
100.times do |n|
  Article.create!(title: "Lorem #{n+1}", category: Category.all.sample)
end
