class Backer
    attr_reader :name, :project

    def initialize(name)
        @name = name
        @project = project
        
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        project_backer = ProjectBacker.all.select do |project|
            project.backer == self
        end 
        project_backer.map do |backer|
            backer.project
            
        end 
    end 

end 