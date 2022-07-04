% Signal Processing 

p = detrend(rand(4, 1), 4)

fft_ = fft(1:3, 4)
ifft_ = ifft(fft_)

fft2_ = fft2([1 2; 3 4], 2, 3)
ifft2_ = ifft2(fft2_)