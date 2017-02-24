library("xlsx")


#for(i in 1:1000){
#  if(grepl(Donateurs[i,"PRENOM"],Donateurs[i,"NOM"])){
#    Donateurs[i,"NOM"]=gsub(Donateurs[i,"PRENOM"],'',Donateurs[i,"NOM"])
#  }
#}

age=c()
for(i in 1:1000){
  if(Donateurs[i,"DATE_NAISS"]!=""){
    a=2017-as.integer(substr(Donateurs[i,"DATE_NAISS"],1,4))
    age=c(age,a)
    print(substr(Donateurs[i,"DATE_NAISS"],1,4))
    as.integer()
  }
  else{
    age=c(age,Donateurs[i,"AGE"])
  }
}

for (i in 1:1000) {
  Donateurs[i,"AGE"]=age[i]
}

sexe=c()
for (i in 1:1000) {
  if(Donateurs[i,"CIVILITE"]=="MME"||Donateurs[i,"CIVILITE"]=="MLE"){
    sexe=c(sexe,"F")
  }
  if(Donateurs[i,"CIVILITE"]=="MR"||Donateurs[i,"CIVILITE"]=="M"){
    sexe=c(sexe,"")
  }
  if(Donateurs[i,"CIVILITE"]=="MMME"){
    sexe=c(sexe,"Undifined")
  }
  if(Donateurs[i,"CIVILITE"]!="MR"&& Donateurs[i,"CIVILITE"]!="M"&& Donateurs[i,"CIVILITE"]!="MME"&& Donateurs[i,"CIVILITE"]!="MLE"&& Donateurs[i,"CIVILITE"]=="MMME"){
    sexe=c(sexe,"")
    print(Donateurs[i,"CIVILITE"])
  }
  
}




