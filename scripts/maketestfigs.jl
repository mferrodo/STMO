#=
Created on Monday 13 Jan 2020
Last update: -

@author: Michiel Stock
michielfmstock@gmail.com

Just some plots of the testing functions
=#

using STMO, Plots, LaTeXStrings

using STMO.TestFuns: branin, rosenbrock, rastrigine, flower, booth

cmap = :speed

# NOTE: some contours are log-scaled to visualize the minimum better

# branin
contour(-5:0.02:20, -3:0.02:23, (x1, x2) -> log(branin([x1, x2])), xlabel="\$ x_1 \$",
                                    ylabel="\$ x_2 \$", color=cmap)
savefig("figures/brainin.png")

# rosenbrock
contour(-2:0.01:2, -2:0.01:2, (x1, x2) -> log(rosenbrock([x1, x2])), xlabel="\$ x_1 \$",
                                    ylabel="\$ x_2 \$", color=cmap)
savefig("figures/rosenbrock.png")

# rastrigine
contourf(-5.2:0.1:5.2, -5.2:0.1:5.2, (x1, x2) -> rastrigine([x1, x2]),
                    xlabel="\$ x_1 \$", ylabel="\$ x_2 \$", color=cmap)
savefig("figures/rastrigine.png")

# flower
contourf(-3:0.1:3, -3:0.1:3, (x1, x2) -> flower([x1, x2]),
                        xlabel="\$ x_1 \$", ylabel="\$ x_2 \$", color=cmap)
savefig("figures/flower.png")

# booth
contour(-10:0.1:10, -10:0.1:10, (x1, x2) -> booth([x1, x2]) |> log,
                        xlabel="\$ x_1 \$", ylabel="\$ x_2 \$", color=cmap)
savefig("figures/booth.png")
