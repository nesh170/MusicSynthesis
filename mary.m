%%Sivaneshwaran Lognathan
%Music File

G1=makeFormNotes(0.5,10);
E2=makeFormNotes(2,7);
F1=makeFormNotes(0.5,8);
D2=makeFormNotes(2,5);
zero1=zeros([1,4000]);

music=[zero1 G1 G1 G1 E2 zero1 F1 F1 F1 D2];

soundsc(music,8000)