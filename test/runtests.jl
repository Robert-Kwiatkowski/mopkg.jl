using mopkg, Test

@testset "bisection" begin
	@testset "Non-negative values" begin
	@test bisection(x->x^2-2, 5, 10)
	end
    @test bisection(x->x^2-2, 0, 2) == 1.4142074584960938
    @test bisection(x->x+5, -10, 100) == -4.999998211860657
end