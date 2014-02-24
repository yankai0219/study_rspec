require './user'
# http://blog.teamtreehouse.com/an-introduction-to-rspec

# my points:
# 1. describe User do: it is a class
# 2. it "xxx"do : it is a class method
#    every it method is indenpent
# 3. there may be some repeatation variable in it method
#    so we can put it together using before or let method
#
# 4. before and after method:
#      before code will create an class variable 
#      before each test is run.
# 5. let keyword:
#      let keyword to make the variable automatically.
#      the variable would then get created the first time 
#      it is accessed

describe "User" do  # create an instance of Behaviour

#method 1
  # because user = User.new occurs in both example,
  # so we can assign it in before block
  # Note: should be @ means it is an instance of User

  #before do
  #  @user = User.new 
  #end

#method 2
  # let keyword to make the variable automatically.
  # the variable would then get created the first time 
  # it is accessed
  let (:user) {User.new}

  it "should be in any roles assigned to it" do
    user.assign_role("assigned role")
    user.should be_in_role("assigned role")
  end

  it "should NOT be in any roles not assigned to it" do
    user.should_not be_in_role("unassigned role")
  end
end
