class Role < ActiveRecord::Base

    has_many :auditions

    def actors
        # self.auditions.map{|auditions| audition.actor}
        self.auditions.pluck(:actor)
    end

    def locations
        self.auditions.pluck(:location)
    end

    def lead
        #look at all auditions for role. Find is any have hired as true - rtrn that audition else rtrn a string
        audition = self.auditions.find{|audition| audition.hired} #is its true it will stop and rtrn the first audition it finds to be true
        if audition
            audition
        else 
            "no actor has been hired for this role"
        end
    end

    def understudy 
        #lookk at all auditions for this role, and see if 2 actors have been hired, if so rtrn 2nd actor. if there is not a 2nd actor rtrn string 
        auditions = self.auditions.filter{|audition| audition.hired}
        # if auditions.length >= 2
        if auditions[1]
            auditions[1]
        else
            "no actor has been hired for understudy for this role"
        end
    end

end