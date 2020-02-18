.MODEL LARGE
.STACK 10000H
.DATA
MSG1 DB '         ****Welcome to Our Restaurants****$' 
MSG2 DB 10,13,10,13,'Enter your Choise $'

MSG3 DB 10,13,'1.Breakfast Menue$' 
MSG4 DB 10,13,'2.Lunce & Dinner Menue$'
MSG72 DB 10,13,'3.Snacks$'
MSG73 DB 10,13,'4.Sweat Meat$'
MSG74 DB 10,13,'5.Drinks$'  

MSG5 DB 10,13,10,13,'***Choise your food from the menu***$'

MSG6 DB 10,13,10,13,'1.Tanduri Roti$' ;breakfast
MSG7 DB 10,13,'2.Nan$'
MSG8 DB 10,13,'3.Parata$'
MSG9 DB 10,13,'4.Dal$'
MSG10 DB 10,13,'5.Mixed Vegetables$'
MSG11 DB 10,13,'6.Halwa $'
MSG12 DB 10,13,'7.Luchi$'
MSG13 DB 10,13,'8.Fried Egg $'
MSG14 DB 10,13,'9.Goats Feet$' 
MSG15 DB 10,13,'10.Goats Brain$'
MSG16 DB 10,13,'11.Chicken Bhuna Khichuri$'
MSG17 DB 10,13,'12.Mutton Bhuna Khichuri$' 
MSG18 DB 10,13,'13.Chicken Liver/Kolija$'
MSG19 DB 10,13,'14.Goats Liver/Kolija$'
MSG20 DB 10,13,'15.Chicken Vuna$'
MSG21 DB 10,13,'16.Goats Vuna$'
 

;lunch & dinner 

MSG22 DB 10,13,'1.Kachchi Birani$' 
MSG23 DB 10,13,'2.Kachchi Birani(Kabab+Egg)$' 
MSG24 DB 10,13,'3.Chicken Birani$'
MSG25 DB 10,13,'4.Chicken Birani(Kabab+Egg)$' 
MSG26 DB 10,13,'5.Plain Polaw$'
MSG27 DB 10,13,'6.Chicken Bhuna Khichuri $' 
MSG28 DB 10,13,'7.Chicken Bhuna Khichuri(with Kabab+Egg)$'
MSG29 DB 10,13,'8.Mutton Bhuna Khichuri$'
MSG30 DB 10,13,'9.Mutton Bhuna Khichuri(with Kabab+Egg)$'
MSG31 DB 10,13,'10.Mutton Tehari$'
MSG32 DB 10,13,'11.Plain Rice$'
MSG33 DB 10,13,'12.Pabda Fish$'
MSG34 DB 10,13,'13.Lobstar Big/Small$'
MSG35 DB 10,13,'14.Koi Fish$'
MSG36 DB 10,13,'15.Hilsha Fish$'
MSG37 DB 10,13,'16.Rui Fish$'
MSG38 DB 10,13,'17.Molay/Kaski Fish$'
MSG39 DB 10,13,'18.Rupchanda Fish$'
MSG40 DB 10,13,'19.Mutton Glassy$'
MSG41 DB 10,13,'20.Mutton Rejala/Mutton kurma$'
MSG42 DB 10,13,'21.Mution Dal Gosto$'
MSG43 DB 10,13,'22.Muton Chap$'
MSG44 DB 10,13,'23.Muton Leg Roast$'
MSG45 DB 10,13,'24.Chicken Kalia Curry$'
MSG46 DB 10,13,'25.Chicken Roast$'
MSG47 DB 10,13,'26.Chicken Mossallam$' 
MSG48 DB 10,13,'27.Egg Curry$'
MSG49 DB 10,13,'28.Vagetable$'
MSG50 DB 10,13,'29.Tomato Mash/Bhorta$'
MSG51 DB 10,13,'30.Dry Fish Mash/Bhorta$'
MSG52 DB 10,13,'31.Potato Mash/Bhorta$'
MSG53 DB 10,13,'32.Brinjal Mash/Bhorta $'
MSG54 DB 10,13,'33.Shirmp Mash/Bhorta$'
MSG55 DB 10,13,'34.Mossor Dal$'
MSG56 DB 10,13,'35.Chicken Chinis Vegetable$'
MSG57 DB 10,13,'36.Kachi Chicken Extra Meat$' 


;snacks

MSG58 DB 10,13,'1.Moghol Porata$'
MSG59 DB 10,13,'2.Shami/Jali Kabab$'
MSG60 DB 10,13,'3.Singara$'
MSG61 DB 10,13,'4.Chicken Samucha$'



;sweat meat
MSG62 DB 10,13,'1.Faluda$' 
MSG63 DB 10,13,'2.Puding$'
MSG64 DB 10,13,'3.Firnni$'
MSG65 DB 10,13,'4.Curd$'



;Drinks
MSG66 DB 10,13,'1.Shoft Drinks$'
MSG67 DB 10,13,'2.Laschi$'
MSG68 DB 10,13,'3.Borhani$'
MSG69 DB 10,13,'4.Labang$'
MSG70 DB 10,13,'5.Coffee$'
MSG71 DB 10,13,'6.Tea$'



;INVALID
MSG99 DB 10,13,'***&&INVALID ENTRY&&***$'
MSG100 DB 10,13,'***&&Try Again&&***$'















.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H

     
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE BREATFAST
    
    CMP BH,2
    JE LD
    
    CMP BH,3
    JE SNACKS
     
     
    CMP BH,4
    JE SWEATMEAT
    
    CMP BH,5
    JE DRINKS
    
    
    JMP INVALID
    
   INVALID:
   
    LEA DX,MSG99 
    MOV AH,9
    INT 21H 
    
    
    LEA DX,MSG100 
    MOV AH,9
    INT 21H 
    
    
    
    JMP EXIT     
    
    
   BREATFAST:
    LEA DX,MSG5 ;BREATFAST STARTS
    MOV AH,9
    INT 21H 
    
    
    LEA DX,MSG6  ;item 1
    MOV AH,9
    INT 21H
    
    LEA DX,MSG7
    MOV AH,9          ;2nd
    INT 21H 
    
    LEA DX,MSG8
    MOV AH,9           ;3rd
    INT 21H
    
    
    LEA DX,MSG9         ;4th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG10     ;5th
    MOV AH,9
    INT 21H
            
    
    LEA DX,MSG11
    MOV AH,9           ;6th
    INT 21H
            
            
    LEA DX,MSG12        ;7th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG13         ;8th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG14         ;9th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG15
    MOV AH,9              ;10th
    INT 21H
    
    
    LEA DX,MSG16          ;11th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG17
    MOV AH,9                ;12th
    INT 21H  
    
    
    LEA DX,MSG18              ;13th
    MOV AH,9
    INT 21H 
    
    
    LEA DX,MSG19               ;14th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG20                ;15th
    MOV AH,9
    INT 21H   
            
            
    LEA DX,MSG21               ;16th
    MOV AH,9
    INT 21H        
            
    
    JMP EXIT
    
    
    
    
     
     
    LD:
                    ;LUNCH AND DINNER
    LEA DX,MSG5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG22               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG23               ;2th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG24               ;3rd
    MOV AH,9
    INT 21H  
    
    LEA DX,MSG25               ;4th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG26               ;5th
    MOV AH,9
    INT 21H                        
    
    
    LEA DX,MSG27               ;6th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG28               ;7th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG29               ;8th
    MOV AH,9
    INT 21H  
    
    LEA DX,MSG30               ;9th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG31               ;10th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG32               ;11th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG33               ;12th
    MOV AH,9
    INT 21H      
       
    
    LEA DX,MSG34               ;13th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG35               ;13th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG36               ;15th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG37               ;16th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG38               ;17th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG39               ;18th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG40               ;19th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG41               ;20th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG42               ;21th
    MOV AH,9
    INT 21H  
    
    
    LEA DX,MSG43               ;22th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG44               ;23th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG45               ;24th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG46               ;25th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG47               ;26th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG48               ;27th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG49               ;28th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG50               ;29th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG51               ;30th
    MOV AH,9
    INT 21H                         
    
    LEA DX,MSG52               ;31th
    MOV AH,9
    INT 21H
                
                
    LEA DX,MSG53               ;32th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG54               ;33th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG55               ;34th
    MOV AH,9
    INT 21H                         
    
    LEA DX,MSG56               ;35th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG57               ;36th
    MOV AH,9
    INT 21H
    
    JMP EXIT
    
  SNACKS:
    LEA DX,MSG5
    MOV AH,9         ;SNACKS STARTS
    INT 21H
    
    
    LEA DX,MSG58               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG59               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,MSG60               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG61               ;4th
    MOV AH,9
    INT 21H
    
    JMP EXIT
    
    
    
  SWEATMEAT:
  
    LEA DX,MSG5
    MOV AH,9        ;SWEAT MEAT    STARTS
    INT 21H
    
    LEA DX,MSG62               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG63               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,MSG64               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG65               ;4th
    MOV AH,9
    INT 21H
    
    JMP EXIT
    
    
   DRINKS:  
    LEA DX,MSG5
    MOV AH,9            ;DRINKS STARTS
    INT 21H
   
   
    LEA DX,MSG66               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG67               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,MSG68               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG69               ;4th
    MOV AH,9
    INT 21H 
    
    LEA DX,MSG70               ;5th
    MOV AH,9
    INT 21H
    
    LEA DX,MSG71               ;6th
    MOV AH,9
    INT 21H          
    
    
     EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

