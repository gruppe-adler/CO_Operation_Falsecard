pilot1 kbAddTopic ["t1", "sentences.bikb", "", ""]; 
pilot1 kbTell  [pilot2, "t1", "01_understood",["",{},"",[""]],"DIRECT"];

sleep 3;
pilot1 kbAddTopic ["t2", "sentences.bikb", "", ""]; 
pilot1 kbTell  [pilot2, "t2", "02_coburn",["",{},"",[""]],"DIRECT"];