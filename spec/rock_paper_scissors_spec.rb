require "rspec"
require "pry"
require "rock_paper_scissors"

describe("Rock, paper, scissors") do
  it("returns true if rock is the object and scissors is the argument") do
    expect(("rock").beats("scissors")).to(eq("true"))
  end

  it("returns false if scissors is the object and rock is the argument") do
    expect(("scissors").beats("rock")).to(eq("false"))
  end

  it("returns 'tie' if object and argument are equal") do
    expect(("scissors").beats("scissors")).to(eq("tie"))
  end

end
