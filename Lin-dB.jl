# Decibel to Linear Base conversion
lindB(dB)=10^(dB/20) # returns in Linear Ratio Scale

# Linear to Decibel Base conversion
dBlin(lin)=20*log10(abs(lin)) # returns in Decibel Scale
