%%Sivaneshwaran Loganathan (sl290)
%Duration=how long the sound is for in seconds
%Freq=Frequency of the sounds *12
%The function below expresses soundwaves as a cosine function. THe user can
%then use the soundsc function to get a sounds to be outputted

%The exponential is to add a volume decaying effect. This is to cause a
%more natural sound where the volume decreases as the note is played.

function [noteVector] = makeFormNotes(duration,freq)
samplingf=8000; %Sampling frequency is the number of samples per second.
t=0:(1/samplingf):(duration-1/samplingf);
FreqMultiplier=1; %Increasing this causes a higher pitch sound
noteVector = exp(-t).*(cos(2*pi*FreqMultiplier*((220*(2^(freq/12)).*t))));
end

