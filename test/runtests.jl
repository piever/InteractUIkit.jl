using InteractUIkit, Observables, Colors, DataStructures
import InteractBase: scope
@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

@testset "input widgets" begin
    a = toggle(label = "Agreed")
    @test observe(a)[] == false
    s = Observable(true)
    a = toggle(s, label = "Agreed")
    @test observe(a)[] == true
end
