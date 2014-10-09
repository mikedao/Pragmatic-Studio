require_relative 'collection'

project1 = Project.new("ABC", 250, 1000)
project2 = Project.new("LMN", 500, 3000)
project3 = Project.new("XYZ", 25, 75)

startup = Collection.new("startup")
startup.add_project(project1)
startup.add_project(project2)
startup.add_project(project3)
startup.request_funding
