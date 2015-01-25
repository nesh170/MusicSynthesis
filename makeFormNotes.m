%%Sivaneshwaran Loganathan
%Duration=how long the sound is for
%Freq=Frequency of the sounds *12

function [noteVector] = makeFormNotes(duration,freq)
samplingf=8000;
t=[0:(1/samplingf):(duration-1/samplingf)];
noteVector = cos(2*pi*((220*(2^(freq/12)).*t)));
end

