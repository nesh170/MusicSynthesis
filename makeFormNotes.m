%%Sivaneshwaran Loganathan
%Duration=how long the sound is for
%Freq=Frequency of the sounds *12

%The exponential is to add a volume decaying effect.
function [noteVector] = makeFormNotes(duration,freq)
samplingf=8000;
t=0:(1/samplingf):(duration-1/samplingf);
noteVector = exp(-t).*(cos(2*pi*((220*(2^(freq/12)).*t))));
end

