# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Industry.create({name: '母婴论坛'})
Site.create([
    {name: '太平洋亲子网论坛', industry_id: 1},
    {name: '宝宝树论坛', industry_id: 1},
    {name: '育儿网论坛', industry_id: 1},
    {name: '摇篮网论坛', industry_id: 1},
    {name: '妈妈网论坛', industry_id: 1}
])