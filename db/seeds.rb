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

sample_task_arry = ["買い出し", "風呂沸かす", "トイレットペーパー買う", "お金下ろす"]
t_since = Date.parse('2021/05/12')
t_until = Date.parse('2021/06/30')
task_term = Random.rand(t_since..t_until)

sample_task_arry.each do |ai|
    @task = Task.new
    @task.task = ai
    @task.status = 'todo'
    @task.limit_date = Random.rand(t_since..t_until)
    @task.save
end