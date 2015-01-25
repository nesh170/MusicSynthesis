%%Sivaneshwaran Lognathan
%Music File

%Making Music Notes
%All are treble Clef and 0.5sec unless stated
G=makeFormNotes(0.5,10);
Go1=makeFormNotes(0.5,10-12);
D=makeFormNotes(0.5,5);
Eb=makeFormNotes(0.5,6);
Bb=makeFormNotes(0.5,1);
Bb4o1=makeFormNotes(4,1-12);
A=makeFormNotes(0.5,0);
Ao1=makeFormNotes(0.5,0-12);
Co14=makeFormNotes(4,3-12);
Co1=makeFormNotes(0.5,3-12);
D4=makeFormNotes(4,5);
D4o1=makeFormNotes(4,5-12-12);
F4=makeFormNotes(4,8);
Gbass4=makeFormNotes(4,10-12);
G1bass4=makeFormNotes(4,10-12-12);
Bbbass4=makeFormNotes(4,1-12);
Bb1bass4=makeFormNotes(4,1-12-12);
Fbass4=makeFormNotes(4,8-12);
F1bass4=makeFormNotes(4,8-12-12);
Cbass4=makeFormNotes(4,3-12);
C1bass4=makeFormNotes(4,3-12-12);
C2bass=makeFormNotes(0.5,3-12-12-12);
Cbass3=makeFormNotes(3,3-12);
C1bass3=makeFormNotes(3,3-12-12);
Bbbass=makeFormNotes(0.5,1-12);
Bb1bass=makeFormNotes(0.5,1-12-12);
Dbass=makeFormNotes(0.5,5-12);
Dbass4=makeFormNotes(4,5-12);
Gbass=makeFormNotes(0.5,10-12);
Fbass=makeFormNotes(0.5,8-12);
Fbass1=makeFormNotes(0.5,8-12-12);
Cbass=makeFormNotes(0.5,3-12);

%Rest
rest=zeros([1,4000]);

%Line 1
line1start=[G D G D Eb D G D];
line1end=Gbass4+G1bass4+line1start;
line1=[line1start line1start line1end];

%Line 2
line2pT=[G D G D Eb D G D];
line2p1=line2pT+Bbbass4+Bb1bass4;
line2p2=line2pT+Fbass4+F1bass4;
line2p3=line2pT+Cbass4+C1bass4;
line2=[line2p1 line2p2 line2p3];

%Line 3
line3pT1=[G D G D Eb D rest rest];
line3pB1=[Cbass3+C1bass3 Bbbass+Bb1bass Bbbass+Bb1bass];
line3pT2=[Bb Bb Bb Bb Bb Bb A A] + D4;
line3pB2=[Dbass+Gbass Dbass+Gbass Dbass+Gbass Dbass+Gbass Dbass+Gbass...
    Dbass+Gbass Dbass+Gbass Dbass+Gbass];
line3pT3=[Bb Bb Bb Bb Bb Bb Co1 Co1] +F4;
line3pB3=[Fbass+Bbbass Fbass+Bbbass Fbass+Bbbass Fbass+Bbbass...
    Fbass+Bbbass Fbass+Bbbass Fbass+Bbbass Fbass+Bbbass];

line3=[line3pT1+line3pB1 line3pT2+line3pB2 line3pT3+line3pB3];

%Line 4
line4pT1=[Ao1 Ao1 Ao1 Ao1 Ao1 Ao1 Ao1 Ao1]+Co14;
line4pB1=[Cbass+Fbass1 Cbass+Fbass1 Cbass+Fbass1 Cbass+Fbass1...
    Cbass+Fbass1 Cbass+Fbass1 Cbass+Fbass1 Cbass+Fbass1];
line4pT2=[Go1+Ao1 Go1+Ao1 Go1+Ao1 Go1+Ao1 Go1+Ao1 Go1+Ao1 Go1+Ao1 Go1+Ao1]...
    +Co14;
line4pB2=[Cbass+C2bass Cbass+C2bass Cbass+C2bass Cbass+C2bass...
    Cbass+C2bass Cbass+C2bass Cbass+C2bass Cbass+C2bass];
line4pT3=[G D G D Eb D G D]+D4o1+Bb4o1;
line4pB3=[Dbass4+Gbass4];

line4=[line4pT1+line4pB1 line4pT2+line4pB2 line4pT3+line4pB3];


%Final Song
finalSong=[line1 line2 line3 line4];
soundsc(finalSong,8000);
audiowrite('finalSong.wav',finalSong,8000)