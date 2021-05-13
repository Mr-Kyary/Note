# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# @task              = Task.new
# @task.task         = 'task1'
# @task.state        = 'todo'
# @task.limit_date   = '2018-10-10'
# @task.save
require 'date'
task_arry = ["買い出し", "風呂沸かす", "トイレットペーパー買う", "お金下ろす"]
status_arry = ['todo', 'doing', 'done']
t_since = Date.parse('2021/05/12')
t_until = Date.parse('2021/06/30')

10.times do
    task = Task.new
    task.task = task_arry.sample
    task.state = status_arry.sample
    task.limit_date = Random.rand(t_since..t_until)
    task.save
end