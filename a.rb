require 'date'

task_arry = ["買い出し", "風呂沸かす", "トイレットペーパー買う", "お金下ろす"]
status_arry = ['todo', 'doing', 'done']
t_since = Date.parse('2021/05/12')
t_until = Date.parse('2021/06/30')

10.times do |n|
    puts task = task_arry.sample
    puts status = status_arry.sample
    puts limit_date = Random.rand(t_since..t_until)
end