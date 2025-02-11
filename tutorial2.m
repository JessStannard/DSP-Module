Filename = 'piano_middle_C.wav';
[Sig, Fs]=audioread ('piano_middle_C.wav'); 

length('piano_middle_C.wav');

Duration = length(Sig)/Fs;
disp(Duration);
Ts = 1/Fs;
Time = 0:Ts:Duration-Ts;
plot(Time, Sig);
ylabel('Amplitude');
xlabel('Time Sec');

audioinfo("piano_middle_C.wav")

filesize = Fs * 16 * 752.33;

T1 = 0.5;
T2 = 1;
T2s = T2*Fs;
T1s = T1*Fs;
partSig = Sig(T1s:T2s);

partTime = Time(T1s:T2s);
plot(partTime, partSig);
