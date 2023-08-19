--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

table.insert(Clockwork.voices.chatClasses, "request");
table.insert(Clockwork.voices.chatClasses, "radio");
table.insert(Clockwork.voices.chatClasses, "dispatch");

Clockwork.voices:RegisterGroup("Dispatch", false, function(player)
	local faction = player:GetFaction();

	return faction == FACTION_ADMIN or faction == FACTION_SCANNER or faction == FACTION_INCOG;
end);

Clockwork.voices:RegisterGroup("Combine", false, function(player)
	local faction = player:GetFaction();

	return faction == FACTION_MPF or faction == FACTION_OTA or faction == FACTION_SCANNER or faction == FACTION_INCOG;
end);

Clockwork.voices:RegisterGroup("Human", false, function(player)
	local faction = player:GetFaction();

	return faction == FACTION_ADMIN or faction == FACTION_CITIZEN or faction == FACTION_CWUBOSS or faction == FACTION_CWUMED or faction == FACTION_CWU or faction == FACTION_GOO or faction == FACTION_RAIDER or faction == FACTION_REBELBOSS or faction == FACTION_REBELMED or faction == FACTION_REBEL or faction == FACTION_REFUGEE or faction == FACTION_SYNDICATE or faction == FACTION_INCOG;
end);

Clockwork.voices:RegisterGroup("Vortigaunt", false, function(player)
	local faction = player:GetFaction();

	return faction == FACTION_VORTIGAUNT or faction == FACTION_ENSLAVEDVORTIGAUNT or faction == FACTION_INCOG;
end);

Clockwork.voices:Add("Dispatch", "anticitizen1", "Внимание. Неопознанное лицо. Немедленно подтвердить статус в отделе Гражданской Обороны.", "npc/overwatch/cityvoice/f_confirmcivilstatus_1_spkr.wav");
Clockwork.voices:Add("Dispatch", "anticitizen2", "Вниманию наземных сил. В сообществе найден нарушитель. Код: ОКРУЖИТЬ, КЛЕЙМИТЬ, УСМИРИТЬ.", "npc/overwatch/cityvoice/f_anticitizenreport_spkr.wav");
Clockwork.voices:Add("Dispatch", "anticitizen3", "Внимание. Уклонистское поведение. Неподчинение обвиняемого. Наземным силам ГО, тревога. Код: ИЗОЛИРОВАТЬ, ОГЛАСИТЬ, ИСПОЛНИТЬ.", "npc/overwatch/cityvoice/f_evasionbehavior_2_spkr.wav");

Clockwork.voices:Add("Dispatch", "level5", "Гражданин, теперь вы угроза обществу пятого уровня. Немедленно прекратить уклонение и выслушать приговор.", "npc/overwatch/cityvoice/f_ceaseevasionlevelfive_spkr.wav");
Clockwork.voices:Add("Dispatch", "level4", "Гражданин, вы обвиняетесь во множественных нарушениях. Гражданство отозвано. Статус: ЗЛОСТНЫЙ НАРУШИТЕЛЬ.", "npc/overwatch/cityvoice/f_citizenshiprevoked_6_spkr.wav");
Clockwork.voices:Add("Dispatch", "level3", "Гражданин, вы обвиняетесь в тяжком несоответствии. Асоциальный статус подтвержден.", "npc/overwatch/cityvoice/f_capitalmalcompliance_spkr.wav");
Clockwork.voices:Add("Dispatch", "level2", "Гражданин, вы обвиняетесь в несоответствии второго уровня и антиобщественной деятельности первого уровня. Силам ГО, обвинительный код: ДОЛГ, МЕЧ. Выполнять.", "npc/overwatch/cityvoice/f_anticivil1_5_spkr.wav");
Clockwork.voices:Add("Dispatch", "level1", "Гражданин, вы угроза обществу первого уровня. Подразделениям ГО, код пресечения: ДОЛГ, МЕЧ, ПОЛНОЧЬ.", "npc/overwatch/cityvoice/f_sociolevel1_4_spkr.wav");

Clockwork.voices:Add("Dispatch", "area1", "Вниманию гражданам. Производится проверка идентификации. Занять назначенные для инспекции места.", "npc/overwatch/cityvoice/f_trainstation_assemble_spkr.wav");
Clockwork.voices:Add("Dispatch", "area2", "Внимание. Всем гражданам жилого квартала. Занять места для инспекции.", "npc/overwatch/cityvoice/f_trainstation_assumepositions_spkr.wav");
Clockwork.voices:Add("Dispatch", "area3", "Вниманию отрядам Гражданской Обороны. Обнаружено уклонение от надзора. ОТРЕАГИРОВАТЬ, ИЗОЛИРОВАТЬ, ДОПРОСИТЬ.", "npc/overwatch/cityvoice/f_protectionresponse_1_spkr.wav");
Clockwork.voices:Add("Dispatch", "area4", "Вниманию жителей. Ваш квартал обвиняется в недоносительстве. Штраф пять пищевых единиц.", "npc/overwatch/cityvoice/f_rationunitsdeduct_3_spkr.wav");

Clockwork.voices:Add("Dispatch", "coop1", "Граждане, бездействие преступно. О противоправном поведении немедленно доложить силам ГО.", "npc/overwatch/cityvoice/f_innactionisconspiracy_spkr.wav");
Clockwork.voices:Add("Dispatch", "coop2", "Вниманию жителей. Замечено отклонение численности. Сотрудничество с отрядом ГО награждается полным пищевым рационом.", "npc/overwatch/cityvoice/f_trainstation_cooperation_spkr.wav");
Clockwork.voices:Add("Dispatch", "coop3", "Граждане, отказ в сотрудничестве будет наказан выселением в нежилое пространство.", "npc/overwatch/cityvoice/f_trainstation_offworldrelocation_spkr.wav");
Clockwork.voices:Add("Dispatch", "coop4", "Внимание. В квартале потенциальный источник вреда обществу. ДОНЕСТИ, СОДЕЙСТВОВАТЬ, СОБРАТЬ.", "npc/overwatch/cityvoice/f_trainstation_inform_spkr.wav");

Clockwork.voices:Add("Dispatch", "unrest1", "Отрядам Гражданкой Обороны. Признаки антиобщественной деятельности. Код: СОБРАТЬ, ОКРУЖИТЬ, ЗАДЕРЖАТЬ.", "npc/overwatch/cityvoice/f_anticivilevidence_3_spkr.wav");
Clockwork.voices:Add("Dispatch", "unrest2", "Тревога. Подразделениям Гражданской Обороны. Обнаружены локальные беспорядки. СОБРАТЬ, ИСПОЛНИТЬ, УСМИРИТЬ.", "npc/overwatch/cityvoice/f_localunrest_spkr.wav");
Clockwork.voices:Add("Dispatch", "unrest3", "Граждане, введен код действия при беспорядках. Код: ОБЕЗВРЕДИТЬ, ЗАЩИТИТЬ, УСМИРИТЬ. Код: ПОДАВИТЬ, МЕЧ, СТЕРИЛИЗОВАТЬ.", "npc/overwatch/cityvoice/f_unrestprocedure1_spkr.wav");
Clockwork.voices:Add("Dispatch", "unrest4", "Вниманию наземного отряда ГО. Задействовано осуждение на месте. Приговор выносить по усмотрению. Код: ОТСЕЧЬ, ОБНУЛИТЬ, ПОДТВЕРДИТЬ.", "npc/overwatch/cityvoice/f_protectionresponse_4_spkr.wav");
Clockwork.voices:Add("Dispatch", "unrest5", "Вниманию всех наземных сил. Судебное разбирательство отменено. Смертная казнь по усмотрению.", "npc/overwatch/cityvoice/f_protectionresponse_5_spkr.wav");

Clockwork.voices:Add("Dispatch", "out1", "Тревога. Обнаружена аномальная внешняя активность. Следовать процедуре сдерживания и докладывать.", "npc/overwatch/cityvoice/fprison_nonstandardexogen.wav");
Clockwork.voices:Add("Dispatch", "out2", "Внимание. Отключены системы наблюдения и обнаружения. Оставшимся сотрудникам охраны доложить о вторжении.", "npc/overwatch/cityvoice/fprison_detectionsystemsout.wav");
Clockwork.voices:Add("Dispatch", "out3", "Патруль подтверждает вторжение из вне. Вызваны вспомогательные воздушные силы. Ожидать поддержки.", "npc/overwatch/cityvoice/fprison_airwatchdispatched.wav");
Clockwork.voices:Add("Dispatch", "out4", "Особое внимание. Отключены ограничители периметра. Всем сотрудникам охраны немедленно принять участие в сдерживании.", "npc/overwatch/cityvoice/fprison_restrictorsdisengaged.wav");
Clockwork.voices:Add("Dispatch", "out5", "Директива номер два. Задействовать резерв. Сдерживать вторжение из вне.", "npc/overwatch/cityvoice/fprison_containexogens.wav");
Clockwork.voices:Add("Dispatch", "out6", "Внимание наземным силам. Провал миссии влечет выселение в нежилое пространство. Напоминаю код: ПОЖЕРТВОВАТЬ, ОСТАНОВИТЬ, УСТРАНИТЬ.", "npc/overwatch/cityvoice/fprison_missionfailurereminder.wav");

Clockwork.voices:Add("Combine", "0", "Zero.", "npc/metropolice/vo/zero.wav")
Clockwork.voices:Add("Combine", "1", "One.", "npc/metropolice/vo/one.wav")
Clockwork.voices:Add("Combine", "10", "Ten.", "npc/metropolice/vo/ten.wav")
Clockwork.voices:Add("Combine", "10-0 HUNTING", "10-0, 10-0, viscerator is hunting!", "npc/metropolice/vo/tenzerovisceratorishunting.wav")
Clockwork.voices:Add("Combine", "100", "One-hundred.", "npc/metropolice/vo/onehundred.wav")
Clockwork.voices:Add("Combine", "10-103 TAG", "Possible 10-103, my location, alert TAG units.", "npc/metropolice/vo/possible10-103alerttagunits.wav")
Clockwork.voices:Add("Combine", "10-107", "I have a 10-107 here, send AirWatch for tag.", "npc/metropolice/vo/gota10-107sendairwatch.wav")
Clockwork.voices:Add("Combine", "10-108", "We have a 10-108!", "npc/metropolice/vo/wehavea10-108.wav")
Clockwork.voices:Add("Combine", "10-14", "Holding on 10-14 duty, eh, code four.", "npc/metropolice/vo/holdingon10-14duty.wav")
Clockwork.voices:Add("Combine", "10-15", "Prepare for 10-15.", "npc/metropolice/vo/preparefor1015.wav")
Clockwork.voices:Add("Combine", "10-2", "10-2.", "npc/metropolice/vo/ten2.wav")
Clockwork.voices:Add("Combine", "10-25", "Any unit, report in with 10-25 as suspect.", "npc/metropolice/vo/unitreportinwith10-25suspect.wav")
Clockwork.voices:Add("Combine", "10-30", "I have a 10-30, my 10-20, responding, code two.", "npc/metropolice/vo/Ihave10-30my10-20responding.wav")
Clockwork.voices:Add("Combine", "10-4", "10-4.", "npc/metropolice/vo/ten4.wav")
Clockwork.voices:Add("Combine", "10-65", "Unit is 10-65.", "npc/metropolice/vo/unitis10-65.wav")
Clockwork.voices:Add("Combine", "10-78", "Dispatch, I need 10-78, officer in trouble!", "npc/metropolice/vo/dispatchIneed10-78.wav")
Clockwork.voices:Add("Combine", "10-8 standing by", "10-8, standing by.", "npc/metropolice/vo/ten8standingby.wav")
Clockwork.voices:Add("Combine", "10-8", "Unit is on-duty, 10-8.", "npc/metropolice/vo/unitisonduty10-8.wav")
Clockwork.voices:Add("Combine", "10-91D", "10-91d count is...", "npc/metropolice/vo/ten91dcountis.wav")
Clockwork.voices:Add("Combine", "10-97 GOA", "10-97, that suspect is GOA.", "npc/metropolice/vo/ten97suspectisgoa.wav")
Clockwork.voices:Add("Combine", "10-97", "10-97.", "npc/metropolice/vo/ten97.wav")
Clockwork.voices:Add("Combine", "10-99", "Officer down, I am 10-99, I repeat, I am 10-99!", "npc/metropolice/vo/officerdownIam10-99.wav")
Clockwork.voices:Add("Combine", "11-44", "Get that 11-44 inbound, we're cleaning up now.", "npc/metropolice/vo/get11-44inboundcleaningup.wav")
Clockwork.voices:Add("Combine", "11-6", "Suspect 11-6, my 10-20 is...", "npc/metropolice/vo/suspect11-6my1020is.wav")
Clockwork.voices:Add("Combine", "11-99", "11-99, officer needs assistance!", "npc/metropolice/vo/11-99officerneedsassistance.wav")
Clockwork.voices:Add("Combine", "2", "Two.", "npc/metropolice/vo/two.wav")
Clockwork.voices:Add("Combine", "20", "Twenty.", "npc/metropolice/vo/twenty.wav")
Clockwork.voices:Add("Combine", "200", "Two-hundred.", "npc/metropolice/vo/twohundred.wav")
Clockwork.voices:Add("Combine", "3", "Three.", "npc/metropolice/vo/three.wav")
Clockwork.voices:Add("Combine", "30", "Thirty.", "npc/metropolice/vo/thirty.wav")
Clockwork.voices:Add("Combine", "300", "Three-hundred.", "npc/metropolice/vo/threehundred.wav")
Clockwork.voices:Add("Combine", "34S AT", "All units, BOL, we have 34-S at...", "npc/metropolice/vo/allunitsbol34sat.wav")
Clockwork.voices:Add("Combine", "4", "Four.", "npc/metropolice/vo/four.wav")
Clockwork.voices:Add("Combine", "40", "Fourty.", "npc/metropolice/vo/fourty.wav")
Clockwork.voices:Add("Combine", "404", "404 zone.", "npc/metropolice/vo/404zone.wav")
Clockwork.voices:Add("Combine", "408", "I've got a 408 here at location.", "npc/metropolice/vo/Ivegot408hereatlocation.wav")
Clockwork.voices:Add("Combine", "415B", "Is 415b.", "npc/metropolice/vo/is415b.wav")
Clockwork.voices:Add("Combine", "5", "Five.", "npc/metropolice/vo/five.wav")
Clockwork.voices:Add("Combine", "50", "Fifty.", "npc/metropolice/vo/fifty.wav")
Clockwork.voices:Add("Combine", "505", "Dispatch, we need AirWatch, subject is 505!", "npc/metropolice/vo/airwatchsubjectis505.wav")
Clockwork.voices:Add("Combine", "6", "Six.", "npc/metropolice/vo/six.wav")
Clockwork.voices:Add("Combine", "60", "Sixty.", "npc/metropolice/vo/sixty.wav")
Clockwork.voices:Add("Combine", "603", "603, unlawful entry.", "npc/metropolice/vo/unlawfulentry603.wav")
Clockwork.voices:Add("Combine", "63", "63, criminal trespass.", "npc/metropolice/vo/criminaltrespass63.wav")
Clockwork.voices:Add("Combine", "7", "Seven.", "npc/metropolice/vo/seven.wav")
Clockwork.voices:Add("Combine", "70", "Seventy.", "npc/metropolice/vo/seventy.wav")
Clockwork.voices:Add("Combine", "8", "Eight.", "npc/metropolice/vo/eight.wav")
Clockwork.voices:Add("Combine", "80", "Eighty.", "npc/metropolice/vo/eighty.wav")
Clockwork.voices:Add("Combine", "9", "Nine.", "npc/metropolice/vo/nine.wav")
Clockwork.voices:Add("Combine", "90", "Ninety.", "npc/metropolice/vo/ninety.wav")
Clockwork.voices:Add("Combine", "THAT'S A GRENADE", "That's a grenade!", "npc/metropolice/vo/thatsagrenade.wav")
Clockwork.voices:Add("Combine", "ACQUIRING", "Acquiring on visual!", "npc/metropolice/vo/acquiringonvisual.wav")
Clockwork.voices:Add("Combine", "ADMINISTER", "Administer.", "npc/metropolice/vo/administer.wav")
Clockwork.voices:Add("Combine", "CONFIRMED ADW", "Confirmed as ADW on that suspect, 10-0.", "npc/metropolice/vo/confirmadw.wav")
Clockwork.voices:Add("Combine", "AFFIRMATIVE", "Affirmative.", "npc/metropolice/vo/affirmative.wav")
Clockwork.voices:Add("Combine", "ALL UNITS MOVE", "All units, move in!", "npc/metropolice/vo/allunitsmovein.wav")
Clockwork.voices:Add("Combine", "AMPUTATE", "Amputate.", "npc/metropolice/vo/amputate.wav")
Clockwork.voices:Add("Combine", "ANTICITIZEN", "Anti-citizen.", "npc/metropolice/vo/anticitizen.wav")
Clockwork.voices:Add("Combine", "ANTISEPTIC", "Antiseptic.", "npc/combine_soldier/vo/antiseptic.wav")
Clockwork.voices:Add("Combine", "APEX", "Apex.", "npc/combine_soldier/vo/apex.wav")
Clockwork.voices:Add("Combine", "APPLY", "Apply.", "npc/metropolice/vo/apply.wav")
Clockwork.voices:Add("Combine", "ARREST POSITIONS", "All units, move to arrest positions!", "npc/metropolice/vo/movetoarrestpositions.wav")
Clockwork.voices:Add("Combine", "AT CHECKPOINT", "At checkpoint.", "npc/metropolice/vo/atcheckpoint.wav")
Clockwork.voices:Add("Combine", "AT LOCATION REPORT", "Protection-teams at location, report in.", "npc/metropolice/vo/ptatlocationreport.wav")
Clockwork.voices:Add("Combine", "BACK ME UP", "Back me up, I'm out!", "npc/metropolice/vo/backmeupImout.wav")
Clockwork.voices:Add("Combine", "BACKUP", "Backup!", "npc/metropolice/vo/backup.wav")
Clockwork.voices:Add("Combine", "BLADE", "Blade.", "npc/combine_soldier/vo/blade.wav")
Clockwork.voices:Add("Combine", "BLEEDING", "Suspect is bleeding from multiple wounds!", "npc/metropolice/vo/suspectisbleeding.wav")
Clockwork.voices:Add("Combine", "BLIP", "Catch that blip on the stabilization readout?", "npc/metropolice/vo/catchthatbliponstabilization.wav")
Clockwork.voices:Add("Combine", "BLOCK HOLDING", "Block is holding, cohesive.", "npc/metropolice/vo/blockisholdingcohesive.wav")
Clockwork.voices:Add("Combine", "BLOCK", "Block!", "npc/metropolice/vo/block.wav")
Clockwork.voices:Add("Combine", "BOL 243", "CP, we need AirWatch to BOL for that 243.", "npc/metropolice/vo/cpbolforthat243.wav")
Clockwork.voices:Add("Combine", "BOOMER", "Boomer.", "npc/combine_soldier/vo/boomer.wav")
Clockwork.voices:Add("Combine", "BREAK COVER", "Break his cover!", "npc/metropolice/vo/breakhiscover.wav")
Clockwork.voices:Add("Combine", "CAN1", "Pick up that can.", "npc/metropolice/vo/pickupthecan1.wav")
Clockwork.voices:Add("Combine", "CAN2", "Pick up the can!", "npc/metropolice/vo/pickupthecan2.wav")
Clockwork.voices:Add("Combine", "CAN3", "I said, pick up the can!", "npc/metropolice/vo/pickupthecan3.wav")
Clockwork.voices:Add("Combine", "CAN4", "Now, put it in the trash-can.", "npc/metropolice/vo/putitinthetrash1.wav")
Clockwork.voices:Add("Combine", "CAN5", "I said, put it in the trash-can!", "npc/metropolice/vo/putitinthetrash2.wav")
Clockwork.voices:Add("Combine", "CAN6", "You knocked it over, pick it up!", "npc/metropolice/vo/youknockeditover.wav")
Clockwork.voices:Add("Combine", "CANAL", "Canal.", "npc/metropolice/vo/canal.wav")
Clockwork.voices:Add("Combine", "CANALBLOCK", "Canalblock!", "npc/metropolice/vo/canalblock.wav")
Clockwork.voices:Add("Combine", "CAUTERIZE", "Cauterize.", "npc/metropolice/vo/cauterize.wav")
Clockwork.voices:Add("Combine", "CHECK MISCOUNT", "Check for miscount.", "npc/metropolice/vo/checkformiscount.wav")
Clockwork.voices:Add("Combine", "CHECKPOINTS", "Proceed to designated checkpoints.", "npc/metropolice/vo/proceedtocheckpoints.wav")
Clockwork.voices:Add("Combine", "CITIZEN SUMMONED", "Reporting citizen summoned into voluntary conscription for channel open service detail T94-332.", "npc/metropolice/vo/citizensummoned.wav")
Clockwork.voices:Add("Combine", "CITIZEN", "Citizen.", "npc/metropolice/vo/citizen.wav")
Clockwork.voices:Add("Combine", "CLASSIFY DB", "Classify subject name as 'DB'; this block ready for clean-out.", "npc/metropolice/vo/classifyasdbthisblockready.wav")
Clockwork.voices:Add("Combine", "CLEANED", "Cleaned.", "npc/combine_soldier/vo/cleaned.wav")
Clockwork.voices:Add("Combine", "CLEAR CODE 100", "Clear and code one-hundred.", "npc/metropolice/vo/clearandcode100.wav")
Clockwork.voices:Add("Combine", "CLOSE ON SUSPECT", "All units, close on suspect!", "npc/metropolice/vo/allunitscloseonsuspect.wav")
Clockwork.voices:Add("Combine", "CLOSING", "Closing!", {"npc/combine_soldier/vo/closing.wav", "npc/combine_soldier/vo/closing2.wav"})
Clockwork.voices:Add("Combine", "CODE 100", "Code one-hundred.", "npc/metropolice/vo/code100.wav")
Clockwork.voices:Add("Combine", "CODE 2", "All units, code two!", "npc/metropolice/vo/allunitscode2.wav")
Clockwork.voices:Add("Combine", "CODE 3", "Officer down, request all units, code three to my 10-20!", "npc/metropolice/vo/officerdowncode3tomy10-20.wav")
Clockwork.voices:Add("Combine", "CODE 7", "Code seven.", "npc/metropolice/vo/code7.wav")
Clockwork.voices:Add("Combine", "CONDEMNED", "Condemned zone!", "npc/metropolice/vo/condemnedzone.wav")
Clockwork.voices:Add("Combine", "CONTACT 243", "Contact with 243 suspect, my 10-20 is...", "npc/metropolice/vo/contactwith243suspect.wav")
Clockwork.voices:Add("Combine", "CONTACT PRIORITY", "I have contact with a priority two!", "npc/metropolice/vo/contactwithpriority2.wav")
Clockwork.voices:Add("Combine", "CONTACT", "Contact!", "npc/combine_soldier/vo/contact.wav")
Clockwork.voices:Add("Combine", "CONTAINED", "Contained.", "npc/combine_soldier/vo/contained.wav")
Clockwork.voices:Add("Combine", "CONTROL 100", "Control is one-hundred percent this location, no sign of that 647-E.", "npc/metropolice/vo/control100percent.wav")
Clockwork.voices:Add("Combine", "CONTROLSECTION", "Control-section!", "npc/metropolice/vo/controlsection.wav")
Clockwork.voices:Add("Combine", "CONVERGING", "Converging.", "npc/metropolice/vo/converging.wav")
Clockwork.voices:Add("Combine", "COPY THAT", "Copy that.", "npc/combine_soldier/vo/copythat.wav")
Clockwork.voices:Add("Combine", "COPY", "Copy.", "npc/metropolice/vo/copy.wav")
Clockwork.voices:Add("Combine", "COVER", "Cover!", "npc/combine_soldier/vo/coverhurt.wav")
Clockwork.voices:Add("Combine", "CP COMPROMISED", "CP is compromised, re-establish!", "npc/metropolice/vo/cpiscompromised.wav")
Clockwork.voices:Add("Combine", "CP ESTABLISH", "CP, we need to establish our perimeter at...", "npc/metropolice/vo/cpweneedtoestablishaperimeterat.wav")
Clockwork.voices:Add("Combine", "CP OVERRUN", "CP is overrun, we have no containment!", "npc/metropolice/vo/cpisoverrunwehavenocontainment.wav")
Clockwork.voices:Add("Combine", "DAGGER", "Dagger.", "npc/combine_soldier/vo/dagger.wav")
Clockwork.voices:Add("Combine", "DASH", "Dash.", "npc/combine_soldier/vo/dash.wav")
Clockwork.voices:Add("Combine", "DB COUNT", "DB count is...", "npc/metropolice/vo/dbcountis.wav")
Clockwork.voices:Add("Combine", "DEFENDER", "Defender!", "npc/metropolice/vo/defender.wav")
Clockwork.voices:Add("Combine", "DESERVICED AREA", "Deserviced area.", "npc/metropolice/vo/deservicedarea.wav")
Clockwork.voices:Add("Combine", "DESIGNATE SUSPECT", "Designate suspect as...", "npc/metropolice/vo/designatesuspectas.wav")
Clockwork.voices:Add("Combine", "DESTROY COVER", "Destroy that cover!", "npc/metropolice/vo/destroythatcover.wav")
Clockwork.voices:Add("Combine", "DISLOCATE INTERPOSE", "Fire to dislocate that interpose!", "npc/metropolice/vo/firetodislocateinterpose.wav")
Clockwork.voices:Add("Combine", "DISMOUNTING HARDPOINT", "Dismounting hardpoint.", "npc/metropolice/vo/dismountinghardpoint.wav")
Clockwork.voices:Add("Combine", "DISP APB", "Disp updating APB likeness.", "npc/metropolice/vo/dispupdatingapb.wav")
Clockwork.voices:Add("Combine", "DISTRIBUTION BLOCK", "Distribution block.", "npc/metropolice/vo/distributionblock.wav")
Clockwork.voices:Add("Combine", "DOCUMENT", "Document.", "npc/metropolice/vo/document.wav")
Clockwork.voices:Add("Combine", "DONT MOVE", "Don't move!", "npc/metropolice/vo/dontmove.wav")
Clockwork.voices:Add("Combine", "ECHO", "Echo.", "npc/combine_soldier/vo/echo.wav")
Clockwork.voices:Add("Combine", "ENGAGING", "Engaging!", "npc/combine_soldier/vo/engaging.wav")
Clockwork.voices:Add("Combine", "ESTABLISH NEW CP", "Fall down, establish a new CP!", "npc/metropolice/vo/establishnewcp.wav")
Clockwork.voices:Add("Combine", "EXPOSE TARGET", "Firing to expose target!", "npc/metropolice/vo/firingtoexposetarget.wav")
Clockwork.voices:Add("Combine", "EXTERNAL", "External jurisdiction.", "npc/metropolice/vo/externaljurisdiction.wav")
Clockwork.voices:Add("Combine", "FINAL VERDICT", "Final verdict administered.", "npc/metropolice/vo/finalverdictadministered.wav")
Clockwork.voices:Add("Combine", "FINAL WARNING", "Final warning!", "npc/metropolice/vo/finalwarning.wav")
Clockwork.voices:Add("Combine", "FIRST WARNING", "First warning, move away!", "npc/metropolice/vo/firstwarningmove.wav")
Clockwork.voices:Add("Combine", "FIST", "Fist.", "npc/combine_soldier/vo/fist.wav")
Clockwork.voices:Add("Combine", "FLASH", "Flash.", "npc/combine_soldier/vo/flash.wav")
Clockwork.voices:Add("Combine", "FLATLINE", "Flatline.", "npc/combine_soldier/vo/flatline.wav")
Clockwork.voices:Add("Combine", "FLUSH", "Flush.", "npc/combine_soldier/vo/flush.wav")
Clockwork.voices:Add("Combine", "FREE NECROTICS", "I have free necrotics!", "npc/metropolice/vo/freenecrotics.wav")
Clockwork.voices:Add("Combine", "GET DOWN", "Get down!", "npc/metropolice/vo/getdown.wav")
Clockwork.voices:Add("Combine", "GET OUT", "Get out of here!", "npc/metropolice/vo/getoutofhere.wav")
Clockwork.voices:Add("Combine", "GETTING 647E", "Still getting that 647-E from local surveillance.", "npc/metropolice/vo/stillgetting647e.wav")
Clockwork.voices:Add("Combine", "GHOST", "Ghost.", "npc/combine_soldier/vo/ghost.wav")
Clockwork.voices:Add("Combine", "GO AGAIN", "PT, go again.", "npc/metropolice/vo/ptgoagain.wav")
Clockwork.voices:Add("Combine", "GO SHARP", "Go sharp!", "npc/combine_soldier/vo/gosharp.wav")
Clockwork.voices:Add("Combine", "GOING IN", "Cover me, I'm going in!", "npc/metropolice/vo/covermegoingin.wav")
Clockwork.voices:Add("Combine", "GOT A DB", "Uh, we got a DB here, cancel that 11-42.", "npc/metropolice/vo/wegotadbherecancel10-102.wav")
Clockwork.voices:Add("Combine", "GOT HIM AGAIN", "Got him again, suspect is 10-20 at...", "npc/metropolice/vo/gothimagainsuspect10-20at.wav")
Clockwork.voices:Add("Combine", "GOT ONE ACCOMPLICE", "I got one accomplice here!", "npc/metropolice/vo/gotoneaccomplicehere.wav")
Clockwork.voices:Add("Combine", "GOT SUSPECT ONE", "I got suspect one here!", "npc/metropolice/vo/gotsuspect1here.wav")
Clockwork.voices:Add("Combine", "GRENADE", "Grenade!", "npc/metropolice/vo/grenade.wav")
Clockwork.voices:Add("Combine", "GRID", "Grid.", "npc/combine_soldier/vo/grid.wav")
Clockwork.voices:Add("Combine", "HAHA", "Haha.", "npc/metropolice/vo/chuckle.wav")
Clockwork.voices:Add("Combine", "HAMMER", "Hammer.", "npc/combine_soldier/vo/hammer.wav")
Clockwork.voices:Add("Combine", "HARDPOINT PROSECUTE", "Is at hardpoint, ready to prosecute!", "npc/metropolice/vo/isathardpointreadytoprosecute.wav")
Clockwork.voices:Add("Combine", "HARDPOINT SCANNING", "Hardpoint scanning.", "npc/metropolice/vo/hardpointscanning.wav")
Clockwork.voices:Add("Combine", "HELIX", "Helix.", "npc/combine_soldier/vo/helix.wav")
Clockwork.voices:Add("Combine", "HELP", "Help!", "npc/metropolice/vo/help.wav")
Clockwork.voices:Add("Combine", "HERO", "Hero!", "npc/metropolice/vo/hero.wav")
Clockwork.voices:Add("Combine", "HES 148", "He's gone 148!", "npc/metropolice/vo/hesgone148.wav")
Clockwork.voices:Add("Combine", "HIGH PRIORITY", "High-priority region.", "npc/metropolice/vo/highpriorityregion.wav")
Clockwork.voices:Add("Combine", "HOLD IT", "Hold it right there!", "npc/metropolice/vo/holditrightthere.wav")
Clockwork.voices:Add("Combine", "HOLD POSITION", "Protection-team, hold this position.", "npc/metropolice/vo/holdthisposition.wav")
Clockwork.voices:Add("Combine", "HOLD", "Hold it!", "npc/metropolice/vo/holdit.wav")
Clockwork.voices:Add("Combine", "HUNTER", "Hunter.", "npc/combine_soldier/vo/hunter.wav")
Clockwork.voices:Add("Combine", "HURRICANE", "Hurricane.", "npc/combine_soldier/vo/hurricane.wav")
Clockwork.voices:Add("Combine", "I SAID MOVE", "I said move along.", "npc/metropolice/vo/Isaidmovealong.wav")
Clockwork.voices:Add("Combine", "ICE", "Ice.", "npc/combine_soldier/vo/ice.wav")
Clockwork.voices:Add("Combine", "IN POSITION", "In position.", "npc/metropolice/vo/inposition.wav")
Clockwork.voices:Add("Combine", "INBOUND", "Inbound.", "npc/combine_soldier/vo/inbound.wav")
Clockwork.voices:Add("Combine", "INFECTED", "Infected.", "npc/combine_soldier/vo/infected.wav")
Clockwork.voices:Add("Combine", "INFECTION", "Infection!", "npc/metropolice/vo/infection.wav")
Clockwork.voices:Add("Combine", "INFESTED", "Infested zone.", "npc/metropolice/vo/infestedzone.wav")
Clockwork.voices:Add("Combine", "INJECT", "Inject!", "npc/metropolice/vo/inject.wav")
Clockwork.voices:Add("Combine", "INOCULATE", "Inoculate.", "npc/metropolice/vo/innoculate.wav")
Clockwork.voices:Add("Combine", "INTERCEDE", "Intercede!", "npc/metropolice/vo/intercede.wav")
Clockwork.voices:Add("Combine", "INTERLOCK", "Interlock!", "npc/metropolice/vo/interlock.wav")
Clockwork.voices:Add("Combine", "INVESTIGATE", "Investigate.", "npc/metropolice/vo/investigate.wav")
Clockwork.voices:Add("Combine", "INVESTIGATING", "Investigating 10-103.", "npc/metropolice/vo/investigating10-103.wav")
Clockwork.voices:Add("Combine", "ION", "Ion.", "npc/combine_soldier/vo/ion.wav")
Clockwork.voices:Add("Combine", "IS 10-108", "Is 10-108!", "npc/metropolice/vo/is10-108.wav")
Clockwork.voices:Add("Combine", "IS 10-8", "Unit is 10-8, standing by.", "npc/metropolice/vo/unitis10-8standingby.wav")
Clockwork.voices:Add("Combine", "IS CLOSING", "Is closing on suspect!", "npc/metropolice/vo/isclosingonsuspect.wav")
Clockwork.voices:Add("Combine", "IS DOWN", "Is down!", "npc/metropolice/vo/isdown.wav")
Clockwork.voices:Add("Combine", "IS INBOUND", "Unit is inbound.", "npc/combine_soldier/vo/unitisinbound.wav")
Clockwork.voices:Add("Combine", "IS MOVING IN", "Unit is moving in.", "npc/combine_soldier/vo/unitismovingin.wav")
Clockwork.voices:Add("Combine", "IS MOVING", "Is moving in!", "npc/metropolice/vo/ismovingin.wav")
Clockwork.voices:Add("Combine", "IS PASSIVE", "Is passive.", "npc/metropolice/vo/ispassive.wav")
Clockwork.voices:Add("Combine", "IS READY TO GO", "Is ready to go!", "npc/metropolice/vo/isreadytogo.wav")
Clockwork.voices:Add("Combine", "ISOLATE", "Isolate!", "npc/metropolice/vo/isolate.wav")
Clockwork.voices:Add("Combine", "JET", "Jet.", "npc/combine_soldier/vo/jet.wav")
Clockwork.voices:Add("Combine", "JUDGE", "Judge.", "npc/combine_soldier/vo/judge.wav")
Clockwork.voices:Add("Combine", "JUDGMENT", "Suspect, prepare to receive civil judgment!", "npc/metropolice/vo/prepareforjudgement.wav")
Clockwork.voices:Add("Combine", "JURISDICTION", "Stabilization-jurisdiction.", "npc/metropolice/vo/stabilizationjurisdiction.wav")
Clockwork.voices:Add("Combine", "JURY", "Jury!", "npc/metropolice/vo/jury.wav")
Clockwork.voices:Add("Combine", "KEEP MOVING", "Keep moving!", "npc/metropolice/vo/keepmoving.wav")
Clockwork.voices:Add("Combine", "KILO", "Kilo.", "npc/combine_soldier/vo/kilo.wav")
Clockwork.voices:Add("Combine", "KING", "King!", "npc/metropolice/vo/king.wav")
Clockwork.voices:Add("Combine", "LAST SEEN AT", "Hiding, last seen at range...", "npc/metropolice/vo/hidinglastseenatrange.wav")
Clockwork.voices:Add("Combine", "LEADER", "Leader.", "npc/combine_soldier/vo/leader.wav")
Clockwork.voices:Add("Combine", "LEVEL 3", "I have a level three civil-privacy violator here!", "npc/metropolice/vo/level3civilprivacyviolator.wav")
Clockwork.voices:Add("Combine", "LINE", "Line!", "npc/metropolice/vo/line.wav")
Clockwork.voices:Add("Combine", "LOCATION", "Location?", "npc/metropolice/vo/location.wav")
Clockwork.voices:Add("Combine", "LOCK POSITION", "All units, lock your position!", "npc/metropolice/vo/lockyourposition.wav")
Clockwork.voices:Add("Combine", "LOCK", "Lock!", "npc/metropolice/vo/lock.wav")
Clockwork.voices:Add("Combine", "LOOK OUT", "Look out!", "npc/metropolice/vo/lookout.wav")
Clockwork.voices:Add("Combine", "LOOSE PARASITICS", "Loose parasitics!", "npc/metropolice/vo/looseparasitics.wav")
Clockwork.voices:Add("Combine", "LOST CONTACT", "Lost contact!", "npc/combine_soldier/vo/lostcontact.wav")
Clockwork.voices:Add("Combine", "LOW ON", "Running low on verdicts, taking cover!", "npc/metropolice/vo/runninglowonverdicts.wav")
Clockwork.voices:Add("Combine", "MACE", "Mace.", "npc/combine_soldier/vo/mace.wav")
Clockwork.voices:Add("Combine", "MAINTAIN CP", "All units, maintain this CP!", "npc/metropolice/vo/allunitsmaintainthiscp.wav")
Clockwork.voices:Add("Combine", "MALCOMPLIANCE", "Issuing malcompliance citation.", "npc/metropolice/vo/issuingmalcompliantcitation.wav")
Clockwork.voices:Add("Combine", "MALCOMPLIANT 10-107", "Malcompliant 10-107 at my 10-20, preparing to prosecute.", "npc/metropolice/vo/malcompliant10107my1020.wav")
Clockwork.voices:Add("Combine", "MALIGNANT", "Malignant!", "npc/metropolice/vo/malignant.wav")
Clockwork.voices:Add("Combine", "MATCH ON APB", "I have a match on APB likeness.", "npc/metropolice/vo/matchonapblikeness.wav")
Clockwork.voices:Add("Combine", "MINOR HITS", "Minor hits, continuing prosecution!", "npc/metropolice/vo/minorhitscontinuing.wav")
Clockwork.voices:Add("Combine", "MOVE ALONG", "Move along!", "npc/metropolice/vo/movealong.wav")
Clockwork.voices:Add("Combine", "MOVE BACK", "Move back, right now!", "npc/metropolice/vo/movebackrightnow.wav")
Clockwork.voices:Add("Combine", "MOVE IN", "Move in!", "npc/combine_soldier/vo/movein.wav")
Clockwork.voices:Add("Combine", "MOVE IT", "Move it!", "npc/metropolice/vo/moveit.wav")
Clockwork.voices:Add("Combine", "MOVE", "Move!", "npc/metropolice/vo/move.wav")
Clockwork.voices:Add("Combine", "MOVING TO COVER", "Moving to cover!", "npc/metropolice/vo/movingtocover.wav")
Clockwork.voices:Add("Combine", "MOVING TO HARDPOINT", "Moving to hardpoint!", "npc/metropolice/vo/movingtohardpoint.wav")
Clockwork.voices:Add("Combine", "NECROTICS", "Necrotics!", "npc/metropolice/vo/necrotics.wav")
Clockwork.voices:Add("Combine", "NEED ANY HELP", "Need any help with this one?", "npc/metropolice/vo/needanyhelpwiththisone.wav")
Clockwork.voices:Add("Combine", "NEEDS ASSISTANCE", "Officer needs assistance, I am 11-99!", "npc/metropolice/vo/officerneedsassistance.wav")
Clockwork.voices:Add("Combine", "NEEDS HELP", "Officer needs help!", "npc/metropolice/vo/officerneedshelp.wav")
Clockwork.voices:Add("Combine", "NO 647", "Clear, no 647, no 10-107.", "npc/metropolice/vo/clearno647no10-107.wav")
Clockwork.voices:Add("Combine", "NO CONTACT", "No contact!", "npc/metropolice/vo/nocontact.wav")
Clockwork.voices:Add("Combine", "NO I'M GOOD", "No, I'm good.", "vo/trainyard/ba_noimgood.wav")
Clockwork.voices:Add("Combine", "NO VISUAL ON", "No visual on UPI at this time.", "npc/metropolice/vo/novisualonupi.wav")
Clockwork.voices:Add("Combine", "NOMAD", "Nomad.", "npc/combine_soldier/vo/nomad.wav")
Clockwork.voices:Add("Combine", "NONCITIZEN", "Noncitizen.", "npc/metropolice/vo/noncitizen.wav")
Clockwork.voices:Add("Combine", "NONPATROL", "Non-patrol region.", "npc/metropolice/vo/nonpatrolregion.wav")
Clockwork.voices:Add("Combine", "NONTAGGED VIROMES", "Non-tagged viromes here!", "npc/metropolice/vo/non-taggedviromeshere.wav")
Clockwork.voices:Add("Combine", "NOVA", "Nova.", "npc/combine_soldier/vo/nova.wav")
Clockwork.voices:Add("Combine", "NOW GET OUT", "Now, get out of here!", "npc/metropolice/vo/nowgetoutofhere.wav")
Clockwork.voices:Add("Combine", "NOW", "Now.", "vo/trainyard/ba_thatbeer01.wav")
Clockwork.voices:Add("Combine", "OUTBREAK", "Outbreak!", "npc/combine_soldier/vo/outbreak.wav")
Clockwork.voices:Add("Combine", "OUTBREAK", "Outbreak!", "npc/metropolice/vo/outbreak.wav")
Clockwork.voices:Add("Combine", "OVERWATCH", "Overwatch.", "npc/combine_soldier/vo/overwatch.wav")
Clockwork.voices:Add("Combine", "PACIFYING", "Pacifying!", "npc/metropolice/vo/pacifying.wav")
Clockwork.voices:Add("Combine", "PAIN1", "Ugh!", "npc/metropolice/pain1.wav")
Clockwork.voices:Add("Combine", "PAIN2", "Uagh!", "npc/metropolice/pain2.wav")
Clockwork.voices:Add("Combine", "PAIN3", "Augh!", "npc/metropolice/pain3.wav")
Clockwork.voices:Add("Combine", "PAIN4", "Agh!", "npc/metropolice/pain4.wav")
Clockwork.voices:Add("Combine", "PATROL", "Patrol!", "npc/metropolice/vo/patrol.wav")
Clockwork.voices:Add("Combine", "PAYBACK", "Payback.", "npc/combine_soldier/vo/payback.wav")
Clockwork.voices:Add("Combine", "PHANTOM", "Phantom.", "npc/combine_soldier/vo/phantom.wav")
Clockwork.voices:Add("Combine", "PICKUP 647E", "Anyone else pick up a, uh... 647-E reading?", "npc/metropolice/vo/anyonepickup647e.wav")
Clockwork.voices:Add("Combine", "POSITION AT HARDPOINT", "In position at hardpoint.", "npc/metropolice/vo/inpositionathardpoint.wav")
Clockwork.voices:Add("Combine", "POSITION TO CONTAIN", "Position to contain.", "npc/metropolice/vo/positiontocontain.wav")
Clockwork.voices:Add("Combine", "POSSIBLE 404", "Possible 404 here!", "npc/metropolice/vo/possible404here.wav")
Clockwork.voices:Add("Combine", "POSSIBLE 647E", "Possible 647-E here, request AirWatch tag.", "npc/metropolice/vo/possible647erequestairwatch.wav")
Clockwork.voices:Add("Combine", "POSSIBLE ACCOMPLICE", "Report sightings of possible accomplice.", "npc/metropolice/vo/reportsightingsaccomplices.wav")
Clockwork.voices:Add("Combine", "POSSIBLE LEVEL 3", "Possible level three civil-privacy violator here!", "npc/metropolice/vo/possiblelevel3civilprivacyviolator.wav")
Clockwork.voices:Add("Combine", "PREPARING TO JUDGE", "Preparing to judge a 10-107, be advised.", "npc/metropolice/vo/preparingtojudge10-107.wav")
Clockwork.voices:Add("Combine", "PRESERVE", "Preserve!", "npc/metropolice/vo/preserve.wav")
Clockwork.voices:Add("Combine", "PRESSURE", "Pressure!", "npc/metropolice/vo/pressure.wav")
Clockwork.voices:Add("Combine", "PRIORITY 1", "Confirm, priority-one sighted.", "npc/metropolice/vo/confirmpriority1sighted.wav")
Clockwork.voices:Add("Combine", "PRIORITY 2", "I have a priority-two anti-citizen here!", "npc/metropolice/vo/priority2anticitizenhere.wav")
Clockwork.voices:Add("Combine", "PRODUCTION BLOCK", "Production-block.", "npc/metropolice/vo/productionblock.wav")
Clockwork.voices:Add("Combine", "PROSECUTE MALCOMPLIANT", "Ready to prosecute malcompliant citizen, final warning issued!", "npc/metropolice/vo/readytoprosecutefinalwarning.wav")
Clockwork.voices:Add("Combine", "PROSECUTE", "Prosecute!", "npc/metropolice/vo/prosecute.wav")
Clockwork.voices:Add("Combine", "PROSECUTING", "Prosecuting.", "npc/combine_soldier/vo/prosecuting.wav")
Clockwork.voices:Add("Combine", "PROTECTION COMPLETE", "Protection complete.", "npc/metropolice/vo/protectioncomplete.wav")
Clockwork.voices:Add("Combine", "QUICK", "Quick!", "npc/metropolice/vo/quick.wav")
Clockwork.voices:Add("Combine", "QUICKSAND", "Quicksand.", "npc/combine_soldier/vo/quicksand.wav")
Clockwork.voices:Add("Combine", "RANGE", "Range.", "npc/combine_soldier/vo/range.wav")
Clockwork.voices:Add("Combine", "RANGER", "Ranger.", "npc/combine_soldier/vo/ranger.wav")
Clockwork.voices:Add("Combine", "RAZOR", "Razor.", "npc/combine_soldier/vo/razor.wav")
Clockwork.voices:Add("Combine", "READY AMPUTATE", "Ready to amputate!", "npc/metropolice/vo/readytoamputate.wav")
Clockwork.voices:Add("Combine", "READY CHARGES", "Ready charges!", "npc/combine_soldier/vo/readycharges.wav")
Clockwork.voices:Add("Combine", "READY JUDGE", "Ready to judge.", "npc/metropolice/vo/readytojudge.wav")
Clockwork.voices:Add("Combine", "READY PROSECUTE", "Ready to prosecute!", "npc/metropolice/vo/readytoprosecute.wav")
Clockwork.voices:Add("Combine", "READY WEAPONS", "Ready weapons!", "npc/combine_soldier/vo/readyweapons.wav")
Clockwork.voices:Add("Combine", "REAPER", "Reaper.", "npc/combine_soldier/vo/reaper.wav")
Clockwork.voices:Add("Combine", "REINFORCEMENT TEAMS", "Reinforcement-teams, code three!", "npc/metropolice/vo/reinforcementteamscode3.wav")
Clockwork.voices:Add("Combine", "REPORT CLEAR", "Reporting clear.", "npc/combine_soldier/vo/reportingclear.wav")
Clockwork.voices:Add("Combine", "REPORT IN", "CP requests all units, uhh... Location report-in.", "npc/metropolice/vo/cprequestsallunitsreportin.wav")
Clockwork.voices:Add("Combine", "REPORT LOCATION", "All units, report location suspect!", "npc/metropolice/vo/allunitsreportlocationsuspect.wav")
Clockwork.voices:Add("Combine", "REPORT STATUS", "Local CP-teams, report status.", "npc/metropolice/vo/localcptreportstatus.wav")
Clockwork.voices:Add("Combine", "REPURPOSED", "Repurposed area.", "npc/metropolice/vo/repurposedarea.wav")
Clockwork.voices:Add("Combine", "RESIDENTIAL BLOCK", "Residential block.", "npc/metropolice/vo/residentialblock.wav")
Clockwork.voices:Add("Combine", "RESPOND CODE 3", "All units at location, responding code three!", "npc/metropolice/vo/allunitsrespondcode3.wav")
Clockwork.voices:Add("Combine", "RESPONDING", "Responding.", "npc/metropolice/vo/responding2.wav")
Clockwork.voices:Add("Combine", "RESTRICT", "Restrict!", "npc/metropolice/vo/restrict.wav")
Clockwork.voices:Add("Combine", "RESTRICTED", "Restricted block.", "npc/metropolice/vo/restrictedblock.wav")
Clockwork.voices:Add("Combine", "RESTRICTION ZONE", "Terminal restriction-zone!", "npc/metropolice/vo/terminalrestrictionzone.wav")
Clockwork.voices:Add("Combine", "RIPCORD", "Ripcord!", "npc/combine_soldier/vo/ripcord.wav")
Clockwork.voices:Add("Combine", "RODGER THAT", "Rodger that!", "npc/metropolice/vo/rodgerthat.wav")
Clockwork.voices:Add("Combine", "ROLLER", "Roller!", "npc/metropolice/vo/roller.wav")
Clockwork.voices:Add("Combine", "RUNNING", "He's running!", "npc/metropolice/vo/hesrunning.wav")
Clockwork.voices:Add("Combine", "SACRIFICE CODE", "All units, sacrifice code one and maintain this CP!", "npc/metropolice/vo/sacrificecode1maintaincp.wav")
Clockwork.voices:Add("Combine", "SAVAGE", "Savage.", "npc/combine_soldier/vo/savage.wav")
Clockwork.voices:Add("Combine", "SCAR", "Scar.", "npc/combine_soldier/vo/scar.wav")
Clockwork.voices:Add("Combine", "SEARCH", "Search!", "npc/metropolice/vo/search.wav")
Clockwork.voices:Add("Combine", "SEARCHING FOR SUSPECT", "Searching for suspect.", "npc/metropolice/vo/searchingforsuspect.wav")
Clockwork.voices:Add("Combine", "SECOND WARNING", "This is your second warning!", "npc/metropolice/vo/thisisyoursecondwarning.wav")
Clockwork.voices:Add("Combine", "SECTOR NOT STERILE", "Confirmed- sector not sterile.", "npc/combine_soldier/vo/confirmsectornotsterile.wav")
Clockwork.voices:Add("Combine", "SECTOR NOT SECURE", "Sector is not secure.", "npc/combine_soldier/vo/sectorisnotsecure.wav")
Clockwork.voices:Add("Combine", "SECURE ADVANCE", "Assault-point secured, advance!", "npc/metropolice/vo/assaultpointsecureadvance.wav")
Clockwork.voices:Add("Combine", "SECURE", "Secure.", "npc/combine_soldier/vo/secure.wav")
Clockwork.voices:Add("Combine", "SENTENCE", "Sentence delivered.", "npc/metropolice/vo/sentencedelivered.wav")
Clockwork.voices:Add("Combine", "SERVE", "Serve.", "npc/metropolice/vo/serve.wav")
Clockwork.voices:Add("Combine", "SHADOW", "Shadow.", "npc/combine_soldier/vo/shadow.wav")
Clockwork.voices:Add("Combine", "SHARPZONE", "Sharpzone.", "npc/combine_soldier/vo/sharpzone.wav")
Clockwork.voices:Add("Combine", "SHIT", "Shit!", "npc/metropolice/vo/shit.wav")
Clockwork.voices:Add("Combine", "SHOTS FIRED", "Shots fired, hostile malignants here!", "npc/metropolice/vo/shotsfiredhostilemalignants.wav")
Clockwork.voices:Add("Combine", "SLAM", "Slam.", "npc/combine_soldier/vo/slam.wav")
Clockwork.voices:Add("Combine", "SLASH", "Slash.", "npc/combine_soldier/vo/slash.wav")
Clockwork.voices:Add("Combine", "SOCIOCIDE", "Sociocide.", "npc/metropolice/vo/sociocide.wav")
Clockwork.voices:Add("Combine", "SOCIOSTABLE", "We are socio-stable at this location.", "npc/metropolice/vo/wearesociostablethislocation.wav")
Clockwork.voices:Add("Combine", "SPEAR", "Spear.", "npc/combine_soldier/vo/spear.wav")
Clockwork.voices:Add("Combine", "STAB", "Stab.", "npc/combine_soldier/vo/stab.wav")
Clockwork.voices:Add("Combine", "STANDING BY", "Standing by.", "npc/combine_soldier/vo/standingby].wav")
Clockwork.voices:Add("Combine", "STAR", "Star.", "npc/combine_soldier/vo/star.wav")
Clockwork.voices:Add("Combine", "STATIONBLOCK", "Stationblock.", "npc/metropolice/vo/stationblock.wav")
Clockwork.voices:Add("Combine", "STAY ALERT", "Stay alert.", "npc/combine_soldier/vo/stayalert.wav")
Clockwork.voices:Add("Combine", "STERILIZE", "Sterilize!", "npc/metropolice/vo/sterilize.wav")
Clockwork.voices:Add("Combine", "STINGER", "Stinger.", "npc/combine_soldier/vo/stinger.wav")
Clockwork.voices:Add("Combine", "STORM", "Storm.", "npc/combine_soldier/vo/storm.wav")
Clockwork.voices:Add("Combine", "STRIKE", "Striker.", "npc/combine_soldier/vo/striker.wav")
Clockwork.voices:Add("Combine", "SUBJECT 505", "Subject is 505!", "npc/metropolice/vo/subjectis505.wav")
Clockwork.voices:Add("Combine", "SUBJECT HIGH SPEED", "All units, be advised, subject is now high-speed!", "npc/metropolice/vo/subjectisnowhighspeed.wav")
Clockwork.voices:Add("Combine", "SUBJECT", "Subject!", "npc/metropolice/vo/subject.wav")
Clockwork.voices:Add("Combine", "SUNDOWN", "Sundown.", "npc/combine_soldier/vo/sundown.wav")
Clockwork.voices:Add("Combine", "SUSPECT INCURSION", "Disp reports suspect-incursion at location.", "npc/metropolice/vo/dispreportssuspectincursion.wav")
Clockwork.voices:Add("Combine", "SUSPECT MOVED TO", "Suspect has moved now to...", "npc/metropolice/vo/supsecthasmovednowto.wav")
Clockwork.voices:Add("Combine", "SUSPECT RESTRICTED CANALS", "Suspect is using restricted canals at...", "npc/metropolice/vo/suspectusingrestrictedcanals.wav")
Clockwork.voices:Add("Combine", "SUSPEND", "Suspend!", "npc/metropolice/vo/suspend.wav")
Clockwork.voices:Add("Combine", "SWEEPER", "Sweeper.", "npc/combine_soldier/vo/sweeper.wav")
Clockwork.voices:Add("Combine", "SWEEPING IN", "Sweeping in!", "npc/combine_soldier/vo/sweepingin.wav")
Clockwork.voices:Add("Combine", "SWEEPING SUSPECT", "Sweeping for suspect!", "npc/metropolice/vo/sweepingforsuspect.wav")
Clockwork.voices:Add("Combine", "SWIFT", "Swift.", "npc/combine_soldier/vo/swift.wav")
Clockwork.voices:Add("Combine", "SWORD", "Sword.", "npc/combine_soldier/vo/sword.wav")
Clockwork.voices:Add("Combine", "TAG 10-91D", "Tag 10-91d!", "npc/metropolice/vo/tag10-91d.wav")
Clockwork.voices:Add("Combine", "TAG BUG", "Tag one bug!", "npc/metropolice/vo/tagonebug.wav")
Clockwork.voices:Add("Combine", "TAG NECROTIC", "Tag one necrotic!", "npc/metropolice/vo/tagonenecrotic.wav")
Clockwork.voices:Add("Combine", "TAG PARASITIC", "Tag one parasitic!", "npc/metropolice/vo/tagoneparasitic.wav")
Clockwork.voices:Add("Combine", "TAKE A LOOK", "Going to take a look!", "npc/metropolice/vo/goingtotakealook.wav")
Clockwork.voices:Add("Combine", "TAKE COVER", "Take cover!", "npc/metropolice/vo/takecover.wav")
Clockwork.voices:Add("Combine", "TAP", "Tap!", "npc/metropolice/vo/tap.wav")
Clockwork.voices:Add("Combine", "TARGET", "Target.", "npc/combine_soldier/vo/target.wav")
Clockwork.voices:Add("Combine", "TEAM ADVANCE", "Team in position, advance!", "npc/metropolice/vo/teaminpositionadvance.wav")
Clockwork.voices:Add("Combine", "TEAM HOLDING", "Stabilization team holding in position.", "npc/combine_soldier/vo/stabilizationteamholding.wav")
Clockwork.voices:Add("Combine", "THERE HE GOES", "There he goes! He's at...", "npc/metropolice/vo/therehegoeshesat.wav")
Clockwork.voices:Add("Combine", "THERE HE IS", "There he is!", "npc/metropolice/vo/thereheis.wav")
Clockwork.voices:Add("Combine", "TRACKER", "Tracker.", "npc/combine_soldier/vo/tracker.wav")
Clockwork.voices:Add("Combine", "TRANSITBLOCK", "Transit-block.", "npc/metropolice/vo/transitblock.wav")
Clockwork.voices:Add("Combine", "TROUBLE", "Lookin' for trouble?", "npc/metropolice/vo/lookingfortrouble.wav")
Clockwork.voices:Add("Combine", "UNDER FIRE", "Officer under fire, taking cover!", "npc/metropolice/vo/officerunderfiretakingcover.wav")
Clockwork.voices:Add("Combine", "UNIFORM", "Uniform.", "npc/combine_soldier/vo/uniform.wav")
Clockwork.voices:Add("Combine", "UNION", "Union!", "npc/metropolice/vo/union.wav")
Clockwork.voices:Add("Combine", "UNKNOWN", "Suspect location unknown.", "npc/metropolice/vo/suspectlocationunknown.wav")
Clockwork.voices:Add("Combine", "UP THERE", "He's up there!", "npc/metropolice/vo/hesupthere.wav")
Clockwork.voices:Add("Combine", "UPI", "UPI.", "npc/metropolice/vo/upi.wav")
Clockwork.voices:Add("Combine", "UTL SUSPECT", "UTL that suspect.", "npc/metropolice/vo/utlthatsuspect.wav")
Clockwork.voices:Add("Combine", "UTL", "UTL suspect.", "npc/metropolice/vo/utlsuspect.wav")
Clockwork.voices:Add("Combine", "VACATE", "Vacate, citizen!", "npc/metropolice/vo/vacatecitizen.wav")
Clockwork.voices:Add("Combine", "VAMP", "Vamp.", "npc/combine_soldier/vo/vamp.wav")
Clockwork.voices:Add("Combine", "VERDICT", "You want a malcompliance verdict?", "npc/metropolice/vo/youwantamalcomplianceverdict.wav")
Clockwork.voices:Add("Combine", "VICE", "Vice!", "npc/metropolice/vo/vice.wav")
Clockwork.voices:Add("Combine", "VICTOR", "Victor!", "npc/metropolice/vo/victor.wav")
Clockwork.voices:Add("Combine", "VISCON", "Viscon.", "npc/combine_soldier/vo/viscon.wav")
Clockwork.voices:Add("Combine", "VISUAL EXOGEN", "Visual on exogen.", "npc/combine_soldier/vo/visualonexogens.wav")
Clockwork.voices:Add("Combine", "WARNING GIVEN", "Second warning given!", "npc/metropolice/vo/secondwarning.wav")
Clockwork.voices:Add("Combine", "WASTERIVER", "Wasteriver.", "npc/metropolice/vo/wasteriver.wav")
Clockwork.voices:Add("Combine", "WATCH IT", "Watch it!", "npc/metropolice/vo/watchit.wav")
Clockwork.voices:Add("Combine", "WINDER", "Winder.", "npc/combine_soldier/vo/winder.wav")
Clockwork.voices:Add("Combine", "WORKFORCE", "Workforce intake.", "npc/metropolice/vo/workforceintake.wav")
Clockwork.voices:Add("Combine", "WRAP IT UP", "That's it, wrap it up.", "npc/combine_soldier/vo/thatsitwrapitup.wav")
Clockwork.voices:Add("Combine", "XRAY", "XRay!", "npc/metropolice/vo/xray.wav")
Clockwork.voices:Add("Combine", "YELLOW", "Yellow!", "npc/metropolice/vo/yellow.wav")
Clockwork.voices:Add("Combine", "YOU CAN GO", "Alright, you can go.", "npc/metropolice/vo/allrightyoucango.wav")
Clockwork.voices:Add("Combine", "ZONE", "Zone!", "npc/metropolice/vo/zone.wav")

Clockwork.voices:Add("Vortigaunt", "Accept Charge", "Accept the charge.", "vo/npc/vortigaunt/acceptcharge.wav");
Clockwork.voices:Add("Vortigaunt", "Accompany", "Gladly we accompany.", "vo/npc/vortigaunt/accompany.wav");
Clockwork.voices:Add("Vortigaunt", "Affirmed", "Affirmed.", "vo/npc/vortigaunt/affirmed.wav");
Clockwork.voices:Add("Vortigaunt", "All For Now", "That is all for now.", "vo/npc/vortigaunt/allfornow.wav");
Clockwork.voices:Add("Vortigaunt", "Allow Me", "Allow me.", "vo/npc/vortigaunt/allowme.wav");
Clockwork.voices:Add("Vortigaunt", "As You Wish", "As you wish.", "vo/npc/vortigaunt/asyouwish.wav");
Clockwork.voices:Add("Vortigaunt", "Believe The Opposite", "We believe the opposite.", "vo/npc/vortigaunt/vanswer03.wav");
Clockwork.voices:Add("Vortigaunt", "By Our Honor", "By our honor.", "vo/npc/vortigaunt/ourhonor.wav");
Clockwork.voices:Add("Vortigaunt", "Calm", "Caaaalm yourself.", "vo/npc/vortigaunt/calm.wav");
Clockwork.voices:Add("Vortigaunt", "Caution", "Caution!", "vo/npc/vortigaunt/caution.wav");
Clockwork.voices:Add("Vortigaunt", "Certainly", "Certainly.", "vo/npc/vortigaunt/certainly.wav");
Clockwork.voices:Add("Vortigaunt", "Concern", "Your concern is touching.", "vo/npc/vortigaunt/vanswer07.wav");
Clockwork.voices:Add("Vortigaunt", "Delay", "Is there reason for delay?", "vo/npc/vortigaunt/reasondelay.wav");
Clockwork.voices:Add("Vortigaunt", "Done", "Done.", "vo/npc/vortigaunt/done.wav");
Clockwork.voices:Add("Vortigaunt", "Dreamed", "We have dreamed of this moment.", "vo/npc/vortigaunt/dreamed.wav");
Clockwork.voices:Add("Vortigaunt", "Empower Us", "Empower us!", "vo/npc/vortigaunt/empowerus.wav");
Clockwork.voices:Add("Vortigaunt", "Expected", "We expected this much.", "vo/npc/vortigaunt/vanswer05.wav");
Clockwork.voices:Add("Vortigaunt", "Failed You", "We fear we have failed you.", "vo/npc/vortigaunt/fearfailed.wav");
Clockwork.voices:Add("Vortigaunt", "For Freedom", "For freedom!", "vo/npc/vortigaunt/forfreedom.wav");
Clockwork.voices:Add("Vortigaunt", "Forward", "Forward!", "vo/npc/vortigaunt/forward.wav");
Clockwork.voices:Add("Vortigaunt", "Gladly", "Gladly.", "vo/npc/vortigaunt/gladly.wav");
Clockwork.voices:Add("Vortigaunt", "Halt", "Halt.", "vo/npc/vortigaunt/halt.wav");
Clockwork.voices:Add("Vortigaunt", "Here", "Here.", "vo/npc/vortigaunt/here.wav");
Clockwork.voices:Add("Vortigaunt", "Hold", "Hold.", "vo/npc/vortigaunt/hold.wav");
Clockwork.voices:Add("Vortigaunt", "Hold Still", "Hold still.", "vo/npc/vortigaunt/holdstill.wav");
Clockwork.voices:Add("Vortigaunt", "Hope", "Hope is in sight.", "vo/npc/vortigaunt/vques03.wav");
Clockwork.voices:Add("Vortigaunt", "Hopeless", "Our cause seems hopeless.", "vo/npc/vortigaunt/hopeless.wav");
Clockwork.voices:Add("Vortigaunt", "Honor", "It is an honor.", "vo/npc/vortigaunt/honor.wav");
Clockwork.voices:Add("Vortigaunt", "Honored", "We are honored.", "vo/npc/vortigaunt/wehonored.wav");
Clockwork.voices:Add("Vortigaunt", "Honor Is Ours", "The honor is ours.", "vo/npc/vortigaunt/honourours.wav");
Clockwork.voices:Add("Vortigaunt", "Illusions", "You are not the first to harbor such illusions.", "vo/npc/vortigaunt/vanswer02.wav");
Clockwork.voices:Add("Vortigaunt", "Know You", "We know you.", "vo/npc/vortigaunt/weknowyou.wav");
Clockwork.voices:Add("Vortigaunt", "Lead On", "Lead on.", "vo/npc/vortigaunt/leadon.wav");
Clockwork.voices:Add("Vortigaunt", "Lead Us", "Lead us.", "vo/npc/vortigaunt/leadus.wav");
Clockwork.voices:Add("Vortigaunt", "Live To Serve", "We live to serve.", "vo/npc/vortigaunt/livetoserve.wav");
Clockwork.voices:Add("Vortigaunt", "Lost All Dear", "We have lost all dear to us.", "vo/npc/vortigaunt/alldear.wav");
Clockwork.voices:Add("Vortigaunt", "Mutual", "Our purpose is mutual.", "vo/npc/vortigaunt/mutual.wav");
Clockwork.voices:Add("Vortigaunt", "Mutual Feeling", "The feeling is mutual.", "vo/npc/vortigaunt/vanswer16.wav");
Clockwork.voices:Add("Vortigaunt", "Mystery", "We serve the same mystery.", "vo/npc/vortigaunt/mystery.wav");
Clockwork.voices:Add("Vortigaunt", "Onward", "Onward!", "vo/npc/vortigaunt/onward.wav");
Clockwork.voices:Add("Vortigaunt", "Opaque", "Your mind is opaque.", "vo/npc/vortigaunt/opaque.wav");
Clockwork.voices:Add("Vortigaunt", "Our Place", "Our place is here.", "vo/npc/vortigaunt/.wav");
Clockwork.voices:Add("Vortigaunt", "Pleasure", "With pleasure...", "vo/npc/vortigaunt/pleasure.wav");
Clockwork.voices:Add("Vortigaunt", "Prevail", "We shall prevail.", "vo/npc/vortigaunt/prevail.wav");
Clockwork.voices:Add("Vortigaunt", "Regrettable", "This is regrettable.", "vo/npc/vortigaunt/regrettable.wav");
Clockwork.voices:Add("Vortigaunt", "Stand Clear", "Stand clear!", "vo/npc/vortigaunt/standclear.wav");
Clockwork.voices:Add("Vortigaunt", "Still Here", "We are still here.", "vo/npc/vortigaunt/stillhere.wav");
Clockwork.voices:Add("Vortigaunt", "Survived 1", "We have survived darker times.", "vo/npc/vortigaunt/vques06.wav");
Clockwork.voices:Add("Vortigaunt", "Survived 2", "We have survived worse across the ages.", "vo/npc/vortigaunt/seenworse.wav");
Clockwork.voices:Add("Vortigaunt", "That Is All", "That is all.", "vo/npc/vortigaunt/thatisall.wav");
Clockwork.voices:Add("Vortigaunt", "This Body", "This body is yours to command.", "vo/npc/vortigaunt/bodyyours.wav");
Clockwork.voices:Add("Vortigaunt", "To The Void", "To the void with you!", "vo/npc/vortigaunt/tothevoid.wav");
Clockwork.voices:Add("Vortigaunt", "Trouble No More", "That one shall trouble us no more.", "vo/npc/vortigaunt/troubleus.wav");
Clockwork.voices:Add("Vortigaunt", "Turning Point", "This marks a turning point.", "vo/npc/vortigaunt/vques04.wav");
Clockwork.voices:Add("Vortigaunt", "Unconvinced", "We remain unconvinced.", "vo/npc/vortigaunt/vanswer01.wav");
Clockwork.voices:Add("Vortigaunt", "V1", "Ah'Glaa.", "vo/npc/vortigaunt/vortigese02.wav");
Clockwork.voices:Add("Vortigaunt", "V2", "Tahh.", "vo/npc/vortigaunt/vortigese03.wav");
Clockwork.voices:Add("Vortigaunt", "V3", "Dew'it.", "vo/npc/vortigaunt/vortigese04.wav");
Clockwork.voices:Add("Vortigaunt", "V4", "Langh.", "vo/npc/vortigaunt/vortigese05.wav");
Clockwork.voices:Add("Vortigaunt", "V5", "Gangh.", "vo/npc/vortigaunt/vortigese07.wav");
Clockwork.voices:Add("Vortigaunt", "V6", "Gulanga!", "vo/npc/vortigaunt/vortigese08.wav");
Clockwork.voices:Add("Vortigaunt", "V7", "Gallah'lung.", "vo/npc/vortigaunt/vortigese09.wav");
Clockwork.voices:Add("Vortigaunt", "V8", "Gerr, galling gerr a'la gam.", "vo/npc/vortigaunt/vortigese11.wav");
Clockwork.voices:Add("Vortigaunt", "V9", "Gerr, lung'gung. Jella'gerr.", "vo/npc/vortigaunt/vortigese12.wav");
Clockwork.voices:Add("Vortigaunt", "We Assure", "Likewise, we assure.", "vo/npc/vortigaunt/vanswer15.wav");
Clockwork.voices:Add("Vortigaunt", "We Can Spare", "That is all we can spare.", "vo/npc/vortigaunt/allwecanspare.wav");
Clockwork.voices:Add("Vortigaunt", "We Stay", "Here we stay.", "vo/npc/vortigaunt/herewestay.wav");
Clockwork.voices:Add("Vortigaunt", "We Will Help", "We will help you.", "vo/npc/vortigaunt/wewillhelp.wav");
Clockwork.voices:Add("Vortigaunt", "Where To", "Where to now? And to what end?", "vo/npc/vortigaunt/whereto.wav");
Clockwork.voices:Add("Vortigaunt", "Wish Right", "We wish you are right.", "vo/npc/vortigaunt/vanswer12.wav");
Clockwork.voices:Add("Vortigaunt", "Worthless", "Our life is worthless, unless spent on freedom.", "vo/npc/vortigaunt/worthless.wav");
Clockwork.voices:Add("Vortigaunt", "Yes", "Yessss.", "vo/npc/vortigaunt/yes.wav");
Clockwork.voices:Add("Vortigaunt", "Yes forward", "Yes, forward.", "vo/npc/vortigaunt/yesforward.wav");

Clockwork.voices:Add("Human", "You all over", "That's you all over.", "vo/npc/male01/answer01.wav", "vo/npc/female01/answer01.wav");
Clockwork.voices:Add("Human", "Hold it against you", "I won't hold it against you.", "vo/npc/male01/answer02.wav", "vo/npc/female01/answer02.wav");
Clockwork.voices:Add("Human", "Figures", "Figures.", "vo/npc/male01/answer03.wav", "vo/npc/female01/answer03.wav");
Clockwork.voices:Add("Human", "Dwell on it", "Try not to dwell on it.", "vo/npc/male01/answer04.wav", "vo/npc/female01/answer04.wav");
Clockwork.voices:Add("Human", "Talk later", "Can we talk about this later?", "vo/npc/male01/answer05.wav", "vo/npc/female01/answer05.wav");
Clockwork.voices:Add("Human", "Same here", "Same here.", "vo/npc/male01/answer07.wav", "vo/npc/female01/answer07.wav");
Clockwork.voices:Add("Human", "Know what you mean", "Know what you mean.", "vo/npc/male01/answer08.wav", "vo/npc/female01/answer08.wav");
Clockwork.voices:Add("Human", "Talking to yourself", "Talking to yourself again.", "vo/npc/male01/answer09.wav", "vo/npc/female01/answer09.wav");
Clockwork.voices:Add("Human", "Say that too loud", "I wouldn't say that too loud.", "vo/npc/male01/answer10.wav", "vo/npc/female01/answer10.wav");
Clockwork.voices:Add("Human", "Tomb stone", "I'll put it on your tomb stone.", "vo/npc/male01/answer11.wav", "vo/npc/female01/answer11.wav");
Clockwork.voices:Add("Human", "Thinking about", "Doesn't bare thinking about.", "vo/npc/male01/answer12.wav", "vo/npc/female01/answer12.wav");
Clockwork.voices:Add("Human", "With you", "I'm with you.", "vo/npc/male01/answer13.wav", "vo/npc/female01/answer13.wav");
Clockwork.voices:Add("Human", "You and me both", "You and me both.", "vo/npc/male01/answer14.wav", "vo/npc/female01/answer14.wav");
Clockwork.voices:Add("Human", "looking at it", "That's one way of looking at it.", "vo/npc/male01/answer15.wav", "vo/npc/female01/answer15.wav");
Clockwork.voices:Add("Human", "Original Thought", "Have you ever had an original thought?", "vo/npc/male01/answer16.wav", "vo/npc/female01/answer16.wav");
Clockwork.voices:Add("Human", "Shut up", "I'm not even going to tell you to shut up.", "vo/npc/male01/answer17.wav", "vo/npc/female01/answer17.wav");
Clockwork.voices:Add("Human", "Task at hand", "Let's concentrate on the task at hand.", "vo/npc/male01/answer18.wav", "vo/npc/female01/answer18.wav");
Clockwork.voices:Add("Human", "Mind on work", "Keep your mind on your work.", "vo/npc/male01/answer19.wav", "vo/npc/female01/answer19.wav");
Clockwork.voices:Add("Human", "Mind in gutter", "Your mind is in the gutter.", "vo/npc/male01/answer20.wav", "vo/npc/female01/answer20.wav");
Clockwork.voices:Add("Human", "Sure of that", "Don't be so sure of that.", "vo/npc/male01/answer21.wav", "vo/npc/female01/answer21.wav");
Clockwork.voices:Add("Human", "Never know", "You never know.", "vo/npc/male01/answer22.wav", "vo/npc/female01/answer22.wav");
Clockwork.voices:Add("Human", "Never can tell", "Never can tell.", "vo/npc/male01/answer23.wav", "vo/npc/female01/answer23.wav");
Clockwork.voices:Add("Human", "Why telling me", "Why are you telling me?", "vo/npc/male01/answer24.wav", "vo/npc/female01/answer24.wav");
Clockwork.voices:Add("Human", "How about that", "How about that.", "vo/npc/male01/answer25.wav", "vo/npc/female01/answer25.wav");
Clockwork.voices:Add("Human", "More information", "That's more information than I require.", "vo/npc/male01/answer26.wav", "vo/npc/female01/answer26.wav");
Clockwork.voices:Add("Human", "Wannna bet", "Wanna bet?", "vo/npc/male01/answer27.wav", "vo/npc/female01/answer27.wav");
Clockwork.voices:Add("Human", "A dime", "I wish I had a dime for everytime somebody said that.", "vo/npc/male01/answer28.wav", "vo/npc/female01/answer28.wav");
Clockwork.voices:Add("Human", "Do about it", "What am I supposed to do about it?", "vo/npc/male01/answer29.wav", "vo/npc/female01/answer29.wav");
Clockwork.voices:Add("Human", "Talking to me", "You talking to me?", "vo/npc/male01/answer30.wav", "vo/npc/female01/answer30.wav");
Clockwork.voices:Add("Human", "Nip that talk", "You should nip that kind of talk in the bud.", "vo/npc/male01/answer31.wav", "vo/npc/female01/answer31.wav");
Clockwork.voices:Add("Human", "Right on", "Right on.", "vo/npc/male01/answer32.wav", "vo/npc/female01/answer32.wav");
Clockwork.voices:Add("Human", "No argument", "No argument there.", "vo/npc/male01/answer33.wav", "vo/npc/female01/answer33.wav");
Clockwork.voices:Add("Human", "Hawaii", "Don't forget hawaii.", "vo/npc/male01/answer34.wav", "vo/npc/female01/answer34.wav");
Clockwork.voices:Add("Human", "Let it get to you", "Try not to let it get to you.", "vo/npc/male01/answer35.wav", "vo/npc/female01/answer36.wav");
Clockwork.voices:Add("Human", "First time", "Wouldn't be the first time.", "vo/npc/male01/answer36.wav", "vo/npc/female01/answer37.wav");
Clockwork.voices:Add("Human", "Sure about that", "You sure about that?", "vo/npc/male01/answer37.wav", "vo/npc/female01/answer38.wav");
Clockwork.voices:Add("Human", "Leave it alone", "Leave it alone.", "vo/npc/male01/answer38.wav", "vo/npc/female01/answer39.wav");
Clockwork.voices:Add("Human", "Enough out of you", "That's enough out of you.", "vo/npc/male01/answer39.wav", "vo/npc/female01/answer40.wav");
Clockwork.voices:Add("Human", "Talking to me", "You talking to me?", "vo/npc/male01/answer30.wav", "vo/npc/female01/answer30.wav");
Clockwork.voices:Add("Human", "Remember anything", "I can't remember the last time I had, well... Anything.", "vo/npc/male01/question31.wav", "vo/npc/female01/answer35.wav");
Clockwork.voices:Add("Human", "Wars gonna end", "I don't think this wars ever gonna end.", "vo/npc/male01/question01.wav", "vo/npc/female01/question01.wav");
Clockwork.voices:Add("Human", "Sell insurance", "To think, all I used to wanna do is sell insurance.", "vo/npc/male01/question02.wav", "vo/npc/female01/question02.wav");
Clockwork.voices:Add("Human", "Dream anymore", "I don't dream anymore.", "vo/npc/male01/question03.wav", "vo/npc/female01/question03.wav");
Clockwork.voices:Add("Human", "All over kidding", "When this is all over I'm... Ah who am I kidding.", "vo/npc/male01/question04.wav", "vo/npc/female01/question04.wav");
Clockwork.voices:Add("Human", "Deja vu", "Woah, Deja vu.", "vo/npc/male01/question05.wav", "vo/npc/female01/question05.wav");
Clockwork.voices:Add("Human", "Dream about cheese", "Sometimes, I dream about cheese.", "vo/npc/male01/question06.wav", "vo/npc/female01/question06.wav");
Clockwork.voices:Add("Human", "Smell freedom", "You smell that? It's freedom.", "vo/npc/male01/question07.wav", "vo/npc/female01/question07.wav");
Clockwork.voices:Add("Human", "Hands on doctor breen", "If I ever get my hands on Doctor Breen.", "vo/npc/male01/question08.wav", "vo/npc/female01/question08.wav");
Clockwork.voices:Add("Human", "Eat a horse", "I could eat a horse, hooves and all.", "vo/npc/male01/question09.wav", "vo/npc/female01/question09.wav");
Clockwork.voices:Add("Human", "Day finally come", "I can't believe this day has finally come.", "vo/npc/male01/question10.wav", "vo/npc/female01/question10.wav");
Clockwork.voices:Add("Human", "Not part of plan", "I'm pretty sure this isn't part of the plan.", "vo/npc/male01/question11.wav", "vo/npc/female01/question11.wav");
Clockwork.voices:Add("Human", "Getting worse", "Looks to me things are getting worse, not better.", "vo/npc/male01/question12.wav", "vo/npc/female01/question12.wav");
Clockwork.voices:Add("Human", "Live my life over", "If I could live my life over again.", "vo/npc/male01/question13.wav", "vo/npc/female01/question13.wav");
Clockwork.voices:Add("Human", "Reminds me of", "I'm not even going to tell you what that reminds me of.", "vo/npc/male01/question14.wav", "vo/npc/female01/question14.wav");
Clockwork.voices:Add("Human", "Stalker out of me", "They're never going to make a stalker out of me.", "vo/npc/male01/question15.wav", "vo/npc/female01/question15.wav");
Clockwork.voices:Add("Human", "Change in air", "Finally, change is in the air.", "vo/npc/male01/question16.wav", "vo/npc/female01/question16.wav");
Clockwork.voices:Add("Human", "You feel it", "You feel it? I feel it.", "vo/npc/male01/question17.wav", "vo/npc/female01/question17.wav");
Clockwork.voices:Add("Human", "Dont feel anything", "I don't feel anything anymore.", "vo/npc/male01/question18.wav", "vo/npc/female01/question18.wav");
Clockwork.voices:Add("Human", "Last shower", "I can't remember the last time I had a shower.", "vo/npc/male01/question19.wav", "vo/npc/female01/question19.wav");
Clockwork.voices:Add("Human", "Bad memory", "Someday, this will all be a bad memory.", "vo/npc/male01/question20.wav", "vo/npc/female01/question20.wav");
Clockwork.voices:Add("Human", "Betting man", "I'm not a betting man, but the odds are not good.", "vo/npc/male01/question21.wav", "vo/npc/female01/question21.wav");
Clockwork.voices:Add("Human", "Care what i think", "Doesn't anyone care what I think?", "vo/npc/male01/question22.wav", "vo/npc/female01/question22.wav");
Clockwork.voices:Add("Human", "Whistle tune", "I can't get this tune out of my head. *Whistling*", "vo/npc/male01/question23.wav", "vo/npc/female01/question23.wav");
Clockwork.voices:Add("Human", "One of those days", "I just knew it was going to be one of those days.", "vo/npc/male01/question25.wav", "vo/npc/female01/question25.wav");
Clockwork.voices:Add("Human", "Bullshit", "This is bullshit!", "vo/npc/male01/question26.wav", "vo/npc/female01/question26.wav");
Clockwork.voices:Add("Human", "Ate something bad", "I think I ate something bad.", "vo/npc/male01/question27.wav", "vo/npc/female01/question27.wav");
Clockwork.voices:Add("Human", "Im hungry", "God I'm hungry.", "vo/npc/male01/question28.wav", "vo/npc/female01/question28.wav");
Clockwork.voices:Add("Human", "Gonna mate", "When this is all over, I'm gonna mate.", "vo/npc/male01/question29.wav", "vo/npc/female01/question29.wav");
Clockwork.voices:Add("Human", "No kids", "I'm glad there's no kids around to see this.", "vo/npc/male01/question30.wav", "vo/npc/female01/question30.wav");
Clockwork.voices:Add("Human", "Behind you", "Behind you!", "vo/npc/male01/behindyou01.wav", "vo/npc/female01/behindyou01.wav");
Clockwork.voices:Add("Human", "Im busy", "Can't you see I'm busy?", "vo/npc/male01/busy02.wav", "vo/npc/female01/busy02.wav");
Clockwork.voices:Add("Human", "Look out below", "Look out below!", "vo/npc/male01/cit_dropper04.wav", "vo/npc/female01/cit_dropper04.wav");
Clockwork.voices:Add("Human", "Civil protection", "Civil protection!", "vo/npc/male01/civilprotection01.wav", "vo/npc/female01/civilprotection01.wav");
Clockwork.voices:Add("Human", "Combine", "Combine!", "vo/npc/male01/combine01.wav", "vo/npc/female01/combine01.wav");
Clockwork.voices:Add("Human", "Cps", "Cps!", "vo/npc/male01/cps01.wav", "vo/npc/female01/cps01.wav");
Clockwork.voices:Add("Human", "Cover reload", "Cover me while I reload.", "vo/npc/male01/coverwhilereload01.wav", "vo/npc/female01/coverwhilereload01.wav");
Clockwork.voices:Add("Human", "Doing something", "Shouldn't we be doing something?", "vo/npc/male01/doingsomething.wav", "vo/npc/female01/doingsomething.wav");
Clockwork.voices:Add("Human", "Excuse me", "Excuse me.", "vo/npc/male01/excuseme01.wav", "vo/npc/female01/excuseme01.wav");
Clockwork.voices:Add("Human", "Fantastic", "Fantastic!", "vo/npc/male01/fantastic01.wav", "vo/npc/female01/fantastic01.wav");
Clockwork.voices:Add("Human", "Finally", "Finally.", "vo/npc/male01/finally.wav", "vo/npc/female01/finally.wav");
Clockwork.voices:Add("Human", "Get down", "Get down!", "vo/npc/male01/getdown02.wav", "vo/npc/female01/getdown02.wav");
Clockwork.voices:Add("Human", "Get going soon", "Are we gonna get going soon?", "vo/npc/male01/getgoingsoon.wav", "vo/npc/female01/getgoingsoon.wav");
Clockwork.voices:Add("Human", "Get the hell out", "Get the hell out of here!", "vo/npc/male01/gethellout.wav", "vo/npc/female01/gethellout.wav");
Clockwork.voices:Add("Human", "Good god", "Good god.", "vo/npc/male01/goodgod.wav", "vo/npc/female01/goodgod.wav");
Clockwork.voices:Add("Human", "Now what", "Now what.", "vo/npc/male01/gordead_ans01.wav", "vo/npc/female01/gordead_ans01.wav");
Clockwork.voices:Add("Human", "Going so well", "And things were going so well.", "vo/npc/male01/gordead_ans02.wav", "vo/npc/female01/gordead_ans02.wav");
Clockwork.voices:Add("Human", "Dont tell me", "Don't tell me.", "vo/npc/male01/gordead_ans03.wav", "vo/npc/female01/gordead_ans03.wav");
Clockwork.voices:Add("Human", "Oh god", "Oh god.", "vo/npc/male01/gordead_ans04.wav", "vo/npc/female01/gordead_ans04.wav");
Clockwork.voices:Add("Human", "Oh no", "Oh no.", "vo/npc/male01/gordead_ans05.wav", "vo/npc/female01/gordead_ans05.wav");
Clockwork.voices:Add("Human", "Please no", "Please no!", "vo/npc/male01/gordead_ans06.wav", "vo/npc/female01/gordead_ans06.wav");
Clockwork.voices:Add("Human", "Thats gotta hurt", "If you dare say... that's gotta hurt, I'll kill you.", "vo/npc/male01/gordead_ans07.wav", "vo/npc/female01/gordead_ans07.wav");
Clockwork.voices:Add("Human", "Bury him here", "Should we bury him here?", "vo/npc/male01/gordead_ans08.wav", "vo/npc/female01/gordead_ans08.wav");
Clockwork.voices:Add("Human", "Even he could not help", "I had a feeling even he couldn't help us.", "vo/npc/male01/gordead_ans09.wav", "vo/npc/female01/gordead_ans09.wav");
Clockwork.voices:Add("Human", "Spread the word", "Spread the word.", "vo/npc/male01/gordead_ans10.wav", "vo/npc/female01/gordead_ans10.wav");
Clockwork.voices:Add("Human", "What is the use", "What's the use?", "vo/npc/male01/gordead_ans11.wav", "vo/npc/female01/gordead_ans11.wav");
Clockwork.voices:Add("Human", "What is the point", "What's the point?", "vo/npc/male01/gordead_ans12.wav", "vo/npc/female01/gordead_ans12.wav");
Clockwork.voices:Add("Human", "Why go on", "Why go on?", "vo/npc/male01/gordead_ans13.wav", "vo/npc/female01/gordead_ans13.wav");
Clockwork.voices:Add("Human", "Were done for", "We're done for.", "vo/npc/male01/gordead_ans14.wav", "vo/npc/female01/gordead_ans14.wav");
Clockwork.voices:Add("Human", "Well now what", "Well, now what?", "vo/npc/male01/gordead_ans15.wav", "vo/npc/female01/gordead_ans15.wav");
Clockwork.voices:Add("Human", "Dibs on the suit", "Dibs on the suit!", "vo/npc/male01/gordead_ans16.wav", "vo/npc/female01/gordead_ans16.wav");
Clockwork.voices:Add("Human", "Done this before", "He's done this before, he'll be okay.", "vo/npc/male01/gordead_ans18.wav", "vo/npc/female01/gordead_ans18.wav");
Clockwork.voices:Add("Human", "Gonna be sick", "I'm gonna be sick.", "vo/npc/male01/gordead_ans19.wav", "vo/npc/female01/gordead_ans19.wav");
Clockwork.voices:Add("Human", "Take his crowbar", "Somebody, take his crowbar.", "vo/npc/male01/gordead_ans20.wav", "vo/npc/female01/gordead_ans20.wav");
Clockwork.voices:Add("Human", "Hes dead", "He's dead.", "vo/npc/male01/gordead_ques01.wav", "vo/npc/female01/gordead_ques01.wav");
Clockwork.voices:Add("Human", "Way to go", "What a way to go.", "vo/npc/male01/gordead_ques02.wav", "vo/npc/female01/gordead_ques02.wav");
Clockwork.voices:Add("Human", "Cant be", "This can't be.", "vo/npc/male01/gordead_ques06.wav", "vo/npc/female01/gordead_ques06.wav");
Clockwork.voices:Add("Human", "Look hes dead", "Look he's dead.", "vo/npc/male01/gordead_ques07.wav", "vo/npc/female01/gordead_ques07.wav");
Clockwork.voices:Add("Human", "This is bad", "This, is bad.", "vo/npc/male01/gordead_ques10.wav", "vo/npc/female01/gordead_ques10.wav");
Clockwork.voices:Add("Human", "End like this", "It's not supposed to end like this.", "vo/npc/male01/gordead_ques14.wav", "vo/npc/female01/gordead_ques14.wav");
Clockwork.voices:Add("Human", "What now", "What now?", "vo/npc/male01/gordead_ques16.wav", "vo/npc/female01/gordead_ques16.wav");
Clockwork.voices:Add("Human", "Got one", "Got one!", "vo/npc/male01/gotone01.wav", "vo/npc/female01/gotone01.wav");
Clockwork.voices:Add("Human", "Gotta reload", "Gotta reload.", "vo/npc/male01/gottareload01.wav", "vo/npc/female01/gottareload01.wav");
Clockwork.voices:Add("Human", "Hacks", "Hacks!", "vo/npc/male01/hacks01.wav", "vo/npc/female01/hacks01.wav");
Clockwork.voices:Add("Human", "Headcrabs", "Headcrabs!", "vo/npc/male01/headcrabs01.wav", "vo/npc/female01/headcrabs01.wav");
Clockwork.voices:Add("Human", "Heads up", "Heads up!", "vo/npc/male01/headsup01.wav", "vo/npc/female01/headsup01.wav");
Clockwork.voices:Add("Human", "Help", "Help!", "vo/npc/male01/help01.wav", "vo/npc/female01/help01.wav");
Clockwork.voices:Add("Human", "Here come hacks", "Here come the hacks!", "vo/npc/male01/herecomehacks01.wav", "vo/npc/female01/herecomehacks01.wav");
Clockwork.voices:Add("Human", "Here they come", "Here they come!", "vo/npc/male01/heretheycome01.wav", "vo/npc/female01/heretheycome01.wav");
Clockwork.voices:Add("Human", "Here to help", "We thought you were here to help.", "vo/npc/male01/heretohelp01.wav", "vo/npc/female01/heretohelp01.wav");
Clockwork.voices:Add("Human", "Hi", "Hi.", "vo/npc/male01/hi01.wav", "vo/npc/female01/hi01.wav");
Clockwork.voices:Add("Human", "Hit in gut", "Aargh, hit in the gut.", "vo/npc/male01/hitingut01.wav", "vo/npc/female01/hitingut01.wav");
Clockwork.voices:Add("Human", "Hold this spot", "I'm gonna stay here and hold down this spot.", "vo/npc/male01/holddownspot01.wav", "vo/npc/female01/holddownspot01.wav");
Clockwork.voices:Add("Human", "Ill stay here", "I'll stay here", "vo/npc/male01/illstayhere01.wav", "vo/npc/female01/illstayhere01.wav");
Clockwork.voices:Add("Human", "Im hurt", "Aargh, I'm hurt.", "vo/npc/male01/imhurt01.wav", "vo/npc/female01/imhurt01.wav");
Clockwork.voices:Add("Human", "Sticking here", "I'm sticking here.", "vo/npc/male01/imstickinghere01.wav", "vo/npc/female01/imstickinghere01.wav");
Clockwork.voices:Add("Human", "Incoming", "Incoming!", "vo/npc/male01/incoming02.wav", "vo/npc/female01/incoming02.wav");
Clockwork.voices:Add("Human", "Lead the way", "You lead the way!", "vo/npc/male01/leadtheway01.wav", "vo/npc/female01/leadtheway01.wav");
Clockwork.voices:Add("Human", "Lets go", "Lets go.", "vo/npc/male01/letsgo02.wav", "vo/npc/female01/letsgo02.wav");
Clockwork.voices:Add("Human", "My arm", "Aargh, my arm.", "vo/npc/male01/myarm01.wav", "vo/npc/female01/myarm01.wav");
Clockwork.voices:Add("Human", "My leg", "Aargh, my leg.", "vo/npc/male01/myleg01.wav", "vo/npc/female01/myleg01.wav");
Clockwork.voices:Add("Human", "Nice", "Nice!", "vo/npc/male01/nice.wav", "vo/npc/female01/nice02.wav");
Clockwork.voices:Add("Human", "Noooo", "Nooooo!", "vo/npc/male01/no02.wav", "vo/npc/female01/no02.wav");
Clockwork.voices:Add("Human", "Man I thought", "You're not the man I thought you were.", "vo/npc/male01/notthemanithought02.wav", "vo/npc/female01/notthemanithought02.wav");
Clockwork.voices:Add("Human", "Oh no", "Oh no.", "vo/npc/male01/ohno.wav", "vo/npc/female01/ohno.wav");
Clockwork.voices:Add("Human", "Okay", "Okay!", "vo/npc/male01/ok01.wav", "vo/npc/female01/ok01.wav");
Clockwork.voices:Add("Human", "Im ready", "Okay, I'm ready.", "vo/npc/male01/okimready01.wav", "vo/npc/female01/okimready01.wav");
Clockwork.voices:Add("Human", "Get out of way", "Let me get out of your way.", "vo/npc/male01/outofyourway02.wav", "vo/npc/female01/outofyourway02.wav");
Clockwork.voices:Add("Human", "Over here", "Over here!", "vo/npc/male01/overhere01.wav", "vo/npc/female01/overhere01.wav");
Clockwork.voices:Add("Human", "Over there", "Over there!", "vo/npc/male01/overthere01.wav", "vo/npc/female01/overthere01.wav");
Clockwork.voices:Add("Human", "Pardon me", "Pardon me.", "vo/npc/male01/pardonme02.wav", "vo/npc/female01/pardonme02.wav");
Clockwork.voices:Add("Human", "Ready when you are", "Ready when you are!", "vo/npc/male01/readywhenyouare01.wav", "vo/npc/female01/readywhenyouare01.wav");
Clockwork.voices:Add("Human", "Run for your life", "Run for your life!", "vo/npc/male01/runforyourlife02.wav", "vo/npc/female01/runforyourlife02.wav");
Clockwork.voices:Add("Human", "Sorry", "Sorry.", "vo/npc/male01/sorry03.wav", "vo/npc/female01/sorry03.wav");
Clockwork.voices:Add("Human", "Follow me", "Follow me!", "vo/npc/male01/squad_away03.wav", "vo/npc/female01/squad_away03.wav");
Clockwork.voices:Add("Human", "Tale cover", "Take cover.", "vo/npc/male01/takecover02.wav", "vo/npc/female01/takecover02.wav");
Clockwork.voices:Add("Human", "Do nicely", "This will do nicely.", "vo/npc/male01/thislldonicely01.wav", "vo/npc/female01/thislldonicely01.wav");
Clockwork.voices:Add("Human", "Uh oh", "Uh oh!", "vo/npc/male01/uhoh.wav", "vo/npc/female01/uhoh.wav");
Clockwork.voices:Add("Human", "Up there", "Up there!", "vo/npc/male01/upthere01.wav", "vo/npc/female01/upthere01.wav");
Clockwork.voices:Add("Human", "Waiting for somebody", "You waiting for somebody?", "vo/npc/male01/waitingsomebody.wav", "vo/npc/female01/waitingsomebody.wav");
Clockwork.voices:Add("Human", "Watch out", "Watch out!", "vo/npc/male01/watchout.wav", "vo/npc/female01/watchout.wav");
Clockwork.voices:Add("Human", "Watch what doing", "Watch what you're doing!", "vo/npc/male01/watchwhat.wav", "vo/npc/female01/watchwhat.wav");
Clockwork.voices:Add("Human", "We trusted you", "We trusted you!", "vo/npc/male01/wetrustedyou01.wav", "vo/npc/female01/wetrustedyou01.wav");
Clockwork.voices:Add("Human", "Woops", "Woops.", "vo/npc/male01/whoops01.wav", "vo/npc/female01/whoops01.wav");
Clockwork.voices:Add("Human", "Yeah", "Yeah.", "vo/npc/male01/yeah02.wav", "vo/npc/female01/yeah02.wav");
Clockwork.voices:Add("Human", "You reload", "You'd better reload.", "vo/npc/male01/youdbetterreload01.wav", "vo/npc/female01/youdbetterreload01.wav");
Clockwork.voices:Add("Human", "You got it", "You got it.", "vo/npc/male01/yougotit02.wav", "vo/npc/female01/yougotit02.wav");
Clockwork.voices:Add("Human", "Zombies", "Zombies!", "vo/npc/male01/zombies01.wav", "vo/npc/female01/zombies01.wav");
Clockwork.voices:Add("Human", "Woops", "Woops.", "vo/npc/male01/whoops01.wav", "vo/npc/female01/whoops01.wav");
Clockwork.voices:Add("Human", "Mumbo jumbo", "Enough of your mumbo jumbo.", "vo/npc/male01/vanswer01.wav", "vo/npc/female01/vanswer01.wav");
Clockwork.voices:Add("Human", "Damn vorts", "Damn vorts.", "vo/npc/male01/vanswer02.wav", "vo/npc/female01/vanswer02.wav");
Clockwork.voices:Add("Human", "How to take that", "I'm not sure how to take that.", "vo/npc/male01/vanswer03.wav", "vo/npc/female01/vanswer03.wav");
Clockwork.voices:Add("Human", "Take that personally", "Should I take that personally?", "vo/npc/male01/vanswer04.wav", "vo/npc/female01/vanswer04.wav");
Clockwork.voices:Add("Human", "Speak english", "Speak english.", "vo/npc/male01/vanswer05.wav", "vo/npc/female01/vanswer05.wav");
Clockwork.voices:Add("Human", "Got that from me", "You got that from me!", "vo/npc/male01/vanswer06.wav", "vo/npc/female01/vanswer06.wav");
Clockwork.voices:Add("Human", "Put up with you", "That's why we put up with you.", "vo/npc/male01/vanswer07.wav", "vo/npc/female01/vanswer07.wav");
Clockwork.voices:Add("Human", "Put it better myself", "Couldn't have put it better myself.", "vo/npc/male01/vanswer08.wav", "vo/npc/female01/vanswer08.wav");
Clockwork.voices:Add("Human", "Almost made sense", "That, almost made sense.", "vo/npc/male01/vanswer09.wav", "vo/npc/female01/vanswer09.wav");
Clockwork.voices:Add("Human", "Something wrong with me", "Something must be wrong with me, I almost understood that.", "vo/npc/male01/vanswer10.wav", "vo/npc/female01/vanswer10.wav");
Clockwork.voices:Add("Human", "Getting used to vorts", "I guess I'm getting used to you vorts.", "vo/npc/male01/vanswer11.wav", "vo/npc/female01/vanswer11.wav");
Clockwork.voices:Add("Human", "Vort philosophy", "None of your vort philosophy.", "vo/npc/male01/vanswer12.wav", "vo/npc/female01/vanswer12.wav");
Clockwork.voices:Add("Human", "Stop killing me", "Stop you're killing me.", "vo/npc/male01/vanswer13.wav", "vo/npc/female01/vanswer13.wav");
Clockwork.voices:Add("Human", "Do to deserve this", "What did I do to deserve this.", "vo/npc/male01/vanswer14.wav", "vo/npc/female01/vanswer14.wav");
Clockwork.voices:Add("Human", "Stop looking at me", "Stop looking at me like that.", "vo/npc/male01/vquestion01.wav", "vo/npc/female01/vquestion01.wav");
Clockwork.voices:Add("Human", "Never get used to", "Some things I just never get used to.", "vo/npc/male01/vquestion02.wav", "vo/npc/female01/vquestion02.wav");
Clockwork.voices:Add("Human", "Survived this long", "I don't know how you things have survived as long as you have.", "vo/npc/male01/vquestion03.wav", "vo/npc/female01/vquestion03.wav");
Clockwork.voices:Add("Human", "Ended up with you", "Sometimes I wonder how I ended up with you.", "vo/npc/male01/vquestion04.wav", "vo/npc/female01/vquestion04.wav");
Clockwork.voices:Add("Human", "Alright vorty", "You're alright vorty.", "vo/npc/male01/vquestion05.wav", "vo/npc/female01/vquestion05.wav");
Clockwork.voices:Add("Human", "Vorts half bad", "You vorts aren't half bad.", "vo/npc/male01/vquestion06.wav", "vo/npc/female01/vquestion06.wav");
Clockwork.voices:Add("Human", "Pals with vort", "If anyone ever told me I'd be pals with a vortigaunt.", "vo/npc/male01/vquestion07.wav", "vo/npc/female01/vquestion07.wav");
