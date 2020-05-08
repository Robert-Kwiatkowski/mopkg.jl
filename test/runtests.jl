using mopkg, Test

@testset "bisection" begin
	@test bisection(x->x^2-2, 1.413, 1.415) == 1.4142109375
    @test bisection(x->x^2-2, 0, 2) == 1.4142074584960938
    @test bisection(x->x+5, -10, 100) == -4.999998211860657
end