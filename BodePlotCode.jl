using Plots
using ControlSystems

using Dates

function myBodePlot(sys)
    # run in REPL
    mag,phase,w = bode(sys);
    plt=plot(w,[20*log10.(mag[:][:][:]),phase[:][:][:]],xscale=:log10,linecolor=[:red :blue],layout=(2,1),minorgrid=true,title=["Bode plot" ""],xlabel=["" "Frequency [rad/s]"], ylabel=["Magnitude (dB)" "Phase (deg)"])
    return plt
end
    # myBodePlot (generic function with 1 method)

#Transfer Functions
s = tf([1,0],[1])

function main()
    # Sample Usage
    sys=4*s*(s+4*100000)/(s+100)/(s+3*1000)
    # sys=tf([-R2,0],[R1*R2*C2, R1+R2*C2/C1, 1/C1])
    # TransferFunction{Continuous, ControlSystemsBase.SisoRational{Float64}}
    #                 -200.0s
    # ----------------------------------------
    # 0.0005s^2 + 1000.1s + 200000.00000000003
    # Continuous-time transfer function model
    plt=myBodePlot(sys)
    plt
    julia> timestr = Dates.format(Dates.now(),"yyyy_mm_dd_THH_MM_SS")
    savefig(plt, "BodePlot-" * timestr * ".png")
end
