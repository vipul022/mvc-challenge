class UserModel
    attr_accessor :tasks , :name
    def initialize(name)
        @name = name
        @tasks = []
    end
end
