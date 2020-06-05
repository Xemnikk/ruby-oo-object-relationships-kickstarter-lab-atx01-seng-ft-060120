class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        backers_and = ProjectBacker.all.select do |array|
            array.project == self
        end 
        backers_and.map do |stuff|
            stuff.backer
        end 
    end

end 