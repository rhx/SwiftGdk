import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import GLib
import GLibObject
import GIO
import Pango
import Cairo
import PangoCairo
import GdkPixbuf

/// The middle button.
public let BUTTON_MIDDLE = GDK_BUTTON_MIDDLE // 2

/// The primary button. This is typically the left mouse button, or the
/// right button in a left-handed setup.
public let BUTTON_PRIMARY = GDK_BUTTON_PRIMARY // 1

/// The secondary button. This is typically the right mouse button, or the
/// left button in a left-handed setup.
public let BUTTON_SECONDARY = GDK_BUTTON_SECONDARY // 3

/// Represents the current time, and can be used anywhere a time is expected.
public let CURRENT_TIME = GDK_CURRENT_TIME // 0

/// Use this macro as the return value for continuing the propagation of
/// an event handler.
public let EVENT_PROPAGATE = GDK_EVENT_PROPAGATE // 4

/// Use this macro as the return value for stopping the propagation of
/// an event handler.
public let EVENT_STOP = 5 // GDK_EVENT_STOP

public let KEY_0 = GDK_KEY_0 // 48

public let KEY_1 = GDK_KEY_1 // 49

public let KEY_2 = GDK_KEY_2 // 50

public let KEY_3 = GDK_KEY_3 // 51

public let KEY_3270_AltCursor = GDK_KEY_3270_AltCursor // 64784

public let KEY_3270_Attn = GDK_KEY_3270_Attn // 64782

public let KEY_3270_BackTab = GDK_KEY_3270_BackTab // 64773

public let KEY_3270_ChangeScreen = GDK_KEY_3270_ChangeScreen // 64793

public let KEY_3270_Copy = GDK_KEY_3270_Copy // 64789

public let KEY_3270_CursorBlink = GDK_KEY_3270_CursorBlink // 64783

public let KEY_3270_CursorSelect = GDK_KEY_3270_CursorSelect // 64796

public let KEY_3270_DeleteWord = GDK_KEY_3270_DeleteWord // 64794

public let KEY_3270_Duplicate = GDK_KEY_3270_Duplicate // 64769

public let KEY_3270_Enter = GDK_KEY_3270_Enter // 64798

public let KEY_3270_EraseEOF = GDK_KEY_3270_EraseEOF // 64774

public let KEY_3270_EraseInput = GDK_KEY_3270_EraseInput // 64775

public let KEY_3270_ExSelect = GDK_KEY_3270_ExSelect // 64795

public let KEY_3270_FieldMark = GDK_KEY_3270_FieldMark // 64770

public let KEY_3270_Ident = GDK_KEY_3270_Ident // 64787

public let KEY_3270_Jump = GDK_KEY_3270_Jump // 64786

public let KEY_3270_KeyClick = GDK_KEY_3270_KeyClick // 64785

public let KEY_3270_Left2 = GDK_KEY_3270_Left2 // 64772

public let KEY_3270_PA1 = GDK_KEY_3270_PA1 // 64778

public let KEY_3270_PA2 = GDK_KEY_3270_PA2 // 64779

public let KEY_3270_PA3 = GDK_KEY_3270_PA3 // 64780

public let KEY_3270_Play = GDK_KEY_3270_Play // 64790

public let KEY_3270_PrintScreen = GDK_KEY_3270_PrintScreen // 64797

public let KEY_3270_Quit = GDK_KEY_3270_Quit // 64777

public let KEY_3270_Record = GDK_KEY_3270_Record // 64792

public let KEY_3270_Reset = GDK_KEY_3270_Reset // 64776

public let KEY_3270_Right2 = GDK_KEY_3270_Right2 // 64771

public let KEY_3270_Rule = GDK_KEY_3270_Rule // 64788

public let KEY_3270_Setup = GDK_KEY_3270_Setup // 64791

public let KEY_3270_Test = GDK_KEY_3270_Test // 64781

public let KEY_4 = GDK_KEY_4 // 52

public let KEY_5 = GDK_KEY_5 // 53

public let KEY_6 = GDK_KEY_6 // 54

public let KEY_7 = GDK_KEY_7 // 55

public let KEY_8 = GDK_KEY_8 // 56

public let KEY_9 = GDK_KEY_9 // 57

public let KEY_A = GDK_KEY_A // 65

public let KEY_AE = GDK_KEY_AE // 198

public let KEY_Aacute = GDK_KEY_Aacute // 193

public let KEY_Abelowdot = GDK_KEY_Abelowdot // 16785056

public let KEY_Abreve = GDK_KEY_Abreve // 451

public let KEY_Abreveacute = GDK_KEY_Abreveacute // 16785070

public let KEY_Abrevebelowdot = GDK_KEY_Abrevebelowdot // 16785078

public let KEY_Abrevegrave = GDK_KEY_Abrevegrave // 16785072

public let KEY_Abrevehook = GDK_KEY_Abrevehook // 16785074

public let KEY_Abrevetilde = GDK_KEY_Abrevetilde // 16785076

public let KEY_AccessX_Enable = GDK_KEY_AccessX_Enable // 65136

public let KEY_AccessX_Feedback_Enable = GDK_KEY_AccessX_Feedback_Enable // 65137

public let KEY_Acircumflex = GDK_KEY_Acircumflex // 194

public let KEY_Acircumflexacute = GDK_KEY_Acircumflexacute // 16785060

public let KEY_Acircumflexbelowdot = GDK_KEY_Acircumflexbelowdot // 16785068

public let KEY_Acircumflexgrave = GDK_KEY_Acircumflexgrave // 16785062

public let KEY_Acircumflexhook = GDK_KEY_Acircumflexhook // 16785064

public let KEY_Acircumflextilde = GDK_KEY_Acircumflextilde // 16785066

public let KEY_AddFavorite = GDK_KEY_AddFavorite // 269025081

public let KEY_Adiaeresis = GDK_KEY_Adiaeresis // 196

public let KEY_Agrave = GDK_KEY_Agrave // 192

public let KEY_Ahook = GDK_KEY_Ahook // 16785058

public let KEY_Alt_L = GDK_KEY_Alt_L // 65513

public let KEY_Alt_R = GDK_KEY_Alt_R // 65514

public let KEY_Amacron = GDK_KEY_Amacron // 960

public let KEY_Aogonek = GDK_KEY_Aogonek // 417

public let KEY_ApplicationLeft = GDK_KEY_ApplicationLeft // 269025104

public let KEY_ApplicationRight = GDK_KEY_ApplicationRight // 269025105

public let KEY_Arabic_0 = GDK_KEY_Arabic_0 // 16778848

public let KEY_Arabic_1 = GDK_KEY_Arabic_1 // 16778849

public let KEY_Arabic_2 = GDK_KEY_Arabic_2 // 16778850

public let KEY_Arabic_3 = GDK_KEY_Arabic_3 // 16778851

public let KEY_Arabic_4 = GDK_KEY_Arabic_4 // 16778852

public let KEY_Arabic_5 = GDK_KEY_Arabic_5 // 16778853

public let KEY_Arabic_6 = GDK_KEY_Arabic_6 // 16778854

public let KEY_Arabic_7 = GDK_KEY_Arabic_7 // 16778855

public let KEY_Arabic_8 = GDK_KEY_Arabic_8 // 16778856

public let KEY_Arabic_9 = GDK_KEY_Arabic_9 // 16778857

public let KEY_Arabic_ain = GDK_KEY_Arabic_ain // 1497

public let KEY_Arabic_alef = GDK_KEY_Arabic_alef // 1479

public let KEY_Arabic_alefmaksura = GDK_KEY_Arabic_alefmaksura // 1513

public let KEY_Arabic_beh = GDK_KEY_Arabic_beh // 1480

public let KEY_Arabic_comma = GDK_KEY_Arabic_comma // 1452

public let KEY_Arabic_dad = GDK_KEY_Arabic_dad // 1494

public let KEY_Arabic_dal = GDK_KEY_Arabic_dal // 1487

public let KEY_Arabic_damma = GDK_KEY_Arabic_damma // 1519

public let KEY_Arabic_dammatan = GDK_KEY_Arabic_dammatan // 1516

public let KEY_Arabic_ddal = GDK_KEY_Arabic_ddal // 16778888

public let KEY_Arabic_farsi_yeh = GDK_KEY_Arabic_farsi_yeh // 16778956

public let KEY_Arabic_fatha = GDK_KEY_Arabic_fatha // 1518

public let KEY_Arabic_fathatan = GDK_KEY_Arabic_fathatan // 1515

public let KEY_Arabic_feh = GDK_KEY_Arabic_feh // 1505

public let KEY_Arabic_fullstop = GDK_KEY_Arabic_fullstop // 16778964

public let KEY_Arabic_gaf = GDK_KEY_Arabic_gaf // 16778927

public let KEY_Arabic_ghain = GDK_KEY_Arabic_ghain // 1498

public let KEY_Arabic_ha = GDK_KEY_Arabic_ha // 1511

public let KEY_Arabic_hah = GDK_KEY_Arabic_hah // 1485

public let KEY_Arabic_hamza = GDK_KEY_Arabic_hamza // 1473

public let KEY_Arabic_hamza_above = GDK_KEY_Arabic_hamza_above // 16778836

public let KEY_Arabic_hamza_below = GDK_KEY_Arabic_hamza_below // 16778837

public let KEY_Arabic_hamzaonalef = GDK_KEY_Arabic_hamzaonalef // 1475

public let KEY_Arabic_hamzaonwaw = GDK_KEY_Arabic_hamzaonwaw // 1476

public let KEY_Arabic_hamzaonyeh = GDK_KEY_Arabic_hamzaonyeh // 1478

public let KEY_Arabic_hamzaunderalef = GDK_KEY_Arabic_hamzaunderalef // 1477

public let KEY_Arabic_heh = GDK_KEY_Arabic_heh // 1511

public let KEY_Arabic_heh_doachashmee = GDK_KEY_Arabic_heh_doachashmee // 16778942

public let KEY_Arabic_heh_goal = GDK_KEY_Arabic_heh_goal // 16778945

public let KEY_Arabic_jeem = GDK_KEY_Arabic_jeem // 1484

public let KEY_Arabic_jeh = GDK_KEY_Arabic_jeh // 16778904

public let KEY_Arabic_kaf = GDK_KEY_Arabic_kaf // 1507

public let KEY_Arabic_kasra = GDK_KEY_Arabic_kasra // 1520

public let KEY_Arabic_kasratan = GDK_KEY_Arabic_kasratan // 1517

public let KEY_Arabic_keheh = GDK_KEY_Arabic_keheh // 16778921

public let KEY_Arabic_khah = GDK_KEY_Arabic_khah // 1486

public let KEY_Arabic_lam = GDK_KEY_Arabic_lam // 1508

public let KEY_Arabic_madda_above = GDK_KEY_Arabic_madda_above // 16778835

public let KEY_Arabic_maddaonalef = GDK_KEY_Arabic_maddaonalef // 1474

public let KEY_Arabic_meem = GDK_KEY_Arabic_meem // 1509

public let KEY_Arabic_noon = GDK_KEY_Arabic_noon // 1510

public let KEY_Arabic_noon_ghunna = GDK_KEY_Arabic_noon_ghunna // 16778938

public let KEY_Arabic_peh = GDK_KEY_Arabic_peh // 16778878

public let KEY_Arabic_percent = GDK_KEY_Arabic_percent // 16778858

public let KEY_Arabic_qaf = GDK_KEY_Arabic_qaf // 1506

public let KEY_Arabic_question_mark = GDK_KEY_Arabic_question_mark // 1471

public let KEY_Arabic_ra = GDK_KEY_Arabic_ra // 1489

public let KEY_Arabic_rreh = GDK_KEY_Arabic_rreh // 16778897

public let KEY_Arabic_sad = GDK_KEY_Arabic_sad // 1493

public let KEY_Arabic_seen = GDK_KEY_Arabic_seen // 1491

public let KEY_Arabic_semicolon = GDK_KEY_Arabic_semicolon // 1467

public let KEY_Arabic_shadda = GDK_KEY_Arabic_shadda // 1521

public let KEY_Arabic_sheen = GDK_KEY_Arabic_sheen // 1492

public let KEY_Arabic_sukun = GDK_KEY_Arabic_sukun // 1522

public let KEY_Arabic_superscript_alef = GDK_KEY_Arabic_superscript_alef // 16778864

public let KEY_Arabic_switch = GDK_KEY_Arabic_switch // 65406

public let KEY_Arabic_tah = GDK_KEY_Arabic_tah // 1495

public let KEY_Arabic_tatweel = GDK_KEY_Arabic_tatweel // 1504

public let KEY_Arabic_tcheh = GDK_KEY_Arabic_tcheh // 16778886

public let KEY_Arabic_teh = GDK_KEY_Arabic_teh // 1482

public let KEY_Arabic_tehmarbuta = GDK_KEY_Arabic_tehmarbuta // 1481

public let KEY_Arabic_thal = GDK_KEY_Arabic_thal // 1488

public let KEY_Arabic_theh = GDK_KEY_Arabic_theh // 1483

public let KEY_Arabic_tteh = GDK_KEY_Arabic_tteh // 16778873

public let KEY_Arabic_veh = GDK_KEY_Arabic_veh // 16778916

public let KEY_Arabic_waw = GDK_KEY_Arabic_waw // 1512

public let KEY_Arabic_yeh = GDK_KEY_Arabic_yeh // 1514

public let KEY_Arabic_yeh_baree = GDK_KEY_Arabic_yeh_baree // 16778962

public let KEY_Arabic_zah = GDK_KEY_Arabic_zah // 1496

public let KEY_Arabic_zain = GDK_KEY_Arabic_zain // 1490

public let KEY_Aring = GDK_KEY_Aring // 197

public let KEY_Armenian_AT = GDK_KEY_Armenian_AT // 16778552

public let KEY_Armenian_AYB = GDK_KEY_Armenian_AYB // 16778545

public let KEY_Armenian_BEN = GDK_KEY_Armenian_BEN // 16778546

public let KEY_Armenian_CHA = GDK_KEY_Armenian_CHA // 16778569

public let KEY_Armenian_DA = GDK_KEY_Armenian_DA // 16778548

public let KEY_Armenian_DZA = GDK_KEY_Armenian_DZA // 16778561

public let KEY_Armenian_E = GDK_KEY_Armenian_E // 16778551

public let KEY_Armenian_FE = GDK_KEY_Armenian_FE // 16778582

public let KEY_Armenian_GHAT = GDK_KEY_Armenian_GHAT // 16778562

public let KEY_Armenian_GIM = GDK_KEY_Armenian_GIM // 16778547

public let KEY_Armenian_HI = GDK_KEY_Armenian_HI // 16778565

public let KEY_Armenian_HO = GDK_KEY_Armenian_HO // 16778560

public let KEY_Armenian_INI = GDK_KEY_Armenian_INI // 16778555

public let KEY_Armenian_JE = GDK_KEY_Armenian_JE // 16778571

public let KEY_Armenian_KE = GDK_KEY_Armenian_KE // 16778580

public let KEY_Armenian_KEN = GDK_KEY_Armenian_KEN // 16778559

public let KEY_Armenian_KHE = GDK_KEY_Armenian_KHE // 16778557

public let KEY_Armenian_LYUN = GDK_KEY_Armenian_LYUN // 16778556

public let KEY_Armenian_MEN = GDK_KEY_Armenian_MEN // 16778564

public let KEY_Armenian_NU = GDK_KEY_Armenian_NU // 16778566

public let KEY_Armenian_O = GDK_KEY_Armenian_O // 16778581

public let KEY_Armenian_PE = GDK_KEY_Armenian_PE // 16778570

public let KEY_Armenian_PYUR = GDK_KEY_Armenian_PYUR // 16778579

public let KEY_Armenian_RA = GDK_KEY_Armenian_RA // 16778572

public let KEY_Armenian_RE = GDK_KEY_Armenian_RE // 16778576

public let KEY_Armenian_SE = GDK_KEY_Armenian_SE // 16778573

public let KEY_Armenian_SHA = GDK_KEY_Armenian_SHA // 16778567

public let KEY_Armenian_TCHE = GDK_KEY_Armenian_TCHE // 16778563

public let KEY_Armenian_TO = GDK_KEY_Armenian_TO // 16778553

public let KEY_Armenian_TSA = GDK_KEY_Armenian_TSA // 16778558

public let KEY_Armenian_TSO = GDK_KEY_Armenian_TSO // 16778577

public let KEY_Armenian_TYUN = GDK_KEY_Armenian_TYUN // 16778575

public let KEY_Armenian_VEV = GDK_KEY_Armenian_VEV // 16778574

public let KEY_Armenian_VO = GDK_KEY_Armenian_VO // 16778568

public let KEY_Armenian_VYUN = GDK_KEY_Armenian_VYUN // 16778578

public let KEY_Armenian_YECH = GDK_KEY_Armenian_YECH // 16778549

public let KEY_Armenian_ZA = GDK_KEY_Armenian_ZA // 16778550

public let KEY_Armenian_ZHE = GDK_KEY_Armenian_ZHE // 16778554

public let KEY_Armenian_accent = GDK_KEY_Armenian_accent // 16778587

public let KEY_Armenian_amanak = GDK_KEY_Armenian_amanak // 16778588

public let KEY_Armenian_apostrophe = GDK_KEY_Armenian_apostrophe // 16778586

public let KEY_Armenian_at = GDK_KEY_Armenian_at // 16778600

public let KEY_Armenian_ayb = GDK_KEY_Armenian_ayb // 16778593

public let KEY_Armenian_ben = GDK_KEY_Armenian_ben // 16778594

public let KEY_Armenian_but = GDK_KEY_Armenian_but // 16778589

public let KEY_Armenian_cha = GDK_KEY_Armenian_cha // 16778617

public let KEY_Armenian_da = GDK_KEY_Armenian_da // 16778596

public let KEY_Armenian_dza = GDK_KEY_Armenian_dza // 16778609

public let KEY_Armenian_e = GDK_KEY_Armenian_e // 16778599

public let KEY_Armenian_exclam = GDK_KEY_Armenian_exclam // 16778588

public let KEY_Armenian_fe = GDK_KEY_Armenian_fe // 16778630

public let KEY_Armenian_full_stop = GDK_KEY_Armenian_full_stop // 16778633

public let KEY_Armenian_ghat = GDK_KEY_Armenian_ghat // 16778610

public let KEY_Armenian_gim = GDK_KEY_Armenian_gim // 16778595

public let KEY_Armenian_hi = GDK_KEY_Armenian_hi // 16778613

public let KEY_Armenian_ho = GDK_KEY_Armenian_ho // 16778608

public let KEY_Armenian_hyphen = GDK_KEY_Armenian_hyphen // 16778634

public let KEY_Armenian_ini = GDK_KEY_Armenian_ini // 16778603

public let KEY_Armenian_je = GDK_KEY_Armenian_je // 16778619

public let KEY_Armenian_ke = GDK_KEY_Armenian_ke // 16778628

public let KEY_Armenian_ken = GDK_KEY_Armenian_ken // 16778607

public let KEY_Armenian_khe = GDK_KEY_Armenian_khe // 16778605

public let KEY_Armenian_ligature_ew = GDK_KEY_Armenian_ligature_ew // 16778631

public let KEY_Armenian_lyun = GDK_KEY_Armenian_lyun // 16778604

public let KEY_Armenian_men = GDK_KEY_Armenian_men // 16778612

public let KEY_Armenian_nu = GDK_KEY_Armenian_nu // 16778614

public let KEY_Armenian_o = GDK_KEY_Armenian_o // 16778629

public let KEY_Armenian_paruyk = GDK_KEY_Armenian_paruyk // 16778590

public let KEY_Armenian_pe = GDK_KEY_Armenian_pe // 16778618

public let KEY_Armenian_pyur = GDK_KEY_Armenian_pyur // 16778627

public let KEY_Armenian_question = GDK_KEY_Armenian_question // 16778590

public let KEY_Armenian_ra = GDK_KEY_Armenian_ra // 16778620

public let KEY_Armenian_re = GDK_KEY_Armenian_re // 16778624

public let KEY_Armenian_se = GDK_KEY_Armenian_se // 16778621

public let KEY_Armenian_separation_mark = GDK_KEY_Armenian_separation_mark // 16778589

public let KEY_Armenian_sha = GDK_KEY_Armenian_sha // 16778615

public let KEY_Armenian_shesht = GDK_KEY_Armenian_shesht // 16778587

public let KEY_Armenian_tche = GDK_KEY_Armenian_tche // 16778611

public let KEY_Armenian_to = GDK_KEY_Armenian_to // 16778601

public let KEY_Armenian_tsa = GDK_KEY_Armenian_tsa // 16778606

public let KEY_Armenian_tso = GDK_KEY_Armenian_tso // 16778625

public let KEY_Armenian_tyun = GDK_KEY_Armenian_tyun // 16778623

public let KEY_Armenian_verjaket = GDK_KEY_Armenian_verjaket // 16778633

public let KEY_Armenian_vev = GDK_KEY_Armenian_vev // 16778622

public let KEY_Armenian_vo = GDK_KEY_Armenian_vo // 16778616

public let KEY_Armenian_vyun = GDK_KEY_Armenian_vyun // 16778626

public let KEY_Armenian_yech = GDK_KEY_Armenian_yech // 16778597

public let KEY_Armenian_yentamna = GDK_KEY_Armenian_yentamna // 16778634

public let KEY_Armenian_za = GDK_KEY_Armenian_za // 16778598

public let KEY_Armenian_zhe = GDK_KEY_Armenian_zhe // 16778602

public let KEY_Atilde = GDK_KEY_Atilde // 195

public let KEY_AudibleBell_Enable = GDK_KEY_AudibleBell_Enable // 65146

public let KEY_AudioCycleTrack = GDK_KEY_AudioCycleTrack // 269025179

public let KEY_AudioForward = GDK_KEY_AudioForward // 269025175

public let KEY_AudioLowerVolume = GDK_KEY_AudioLowerVolume // 269025041

public let KEY_AudioMedia = GDK_KEY_AudioMedia // 269025074

public let KEY_AudioMicMute = GDK_KEY_AudioMicMute // 269025202

public let KEY_AudioMute = GDK_KEY_AudioMute // 269025042

public let KEY_AudioNext = GDK_KEY_AudioNext // 269025047

public let KEY_AudioPause = GDK_KEY_AudioPause // 269025073

public let KEY_AudioPlay = GDK_KEY_AudioPlay // 269025044

public let KEY_AudioPreset = GDK_KEY_AudioPreset // 269025206

public let KEY_AudioPrev = GDK_KEY_AudioPrev // 269025046

public let KEY_AudioRaiseVolume = GDK_KEY_AudioRaiseVolume // 269025043

public let KEY_AudioRandomPlay = GDK_KEY_AudioRandomPlay // 269025177

public let KEY_AudioRecord = GDK_KEY_AudioRecord // 269025052

public let KEY_AudioRepeat = GDK_KEY_AudioRepeat // 269025176

public let KEY_AudioRewind = GDK_KEY_AudioRewind // 269025086

public let KEY_AudioStop = GDK_KEY_AudioStop // 269025045

public let KEY_Away = GDK_KEY_Away // 269025165

public let KEY_B = GDK_KEY_B // 66

public let KEY_Babovedot = GDK_KEY_Babovedot // 16784898

public let KEY_Back = GDK_KEY_Back // 269025062

public let KEY_BackForward = GDK_KEY_BackForward // 269025087

public let KEY_BackSpace = GDK_KEY_BackSpace // 65288

public let KEY_Battery = GDK_KEY_Battery // 269025171

public let KEY_Begin = GDK_KEY_Begin // 65368

public let KEY_Blue = GDK_KEY_Blue // 269025190

public let KEY_Bluetooth = GDK_KEY_Bluetooth // 269025172

public let KEY_Book = GDK_KEY_Book // 269025106

public let KEY_BounceKeys_Enable = GDK_KEY_BounceKeys_Enable // 65140

public let KEY_Break = GDK_KEY_Break // 65387

public let KEY_BrightnessAdjust = GDK_KEY_BrightnessAdjust // 269025083

public let KEY_Byelorussian_SHORTU = GDK_KEY_Byelorussian_SHORTU // 1726

public let KEY_Byelorussian_shortu = GDK_KEY_Byelorussian_shortu // 1710

public let KEY_C = GDK_KEY_C // 67

public let KEY_CD = GDK_KEY_CD // 269025107

public let KEY_CH = GDK_KEY_CH // 65186

public let KEY_C_H = GDK_KEY_C_H // 65189

public let KEY_C_h = GDK_KEY_C_h // 65188

public let KEY_Cabovedot = GDK_KEY_Cabovedot // 709

public let KEY_Cacute = GDK_KEY_Cacute // 454

public let KEY_Calculator = GDK_KEY_Calculator // 269025053

public let KEY_Calendar = GDK_KEY_Calendar // 269025056

public let KEY_Cancel = GDK_KEY_Cancel // 65385

public let KEY_Caps_Lock = GDK_KEY_Caps_Lock // 65509

public let KEY_Ccaron = GDK_KEY_Ccaron // 456

public let KEY_Ccedilla = GDK_KEY_Ccedilla // 199

public let KEY_Ccircumflex = GDK_KEY_Ccircumflex // 710

public let KEY_Ch = GDK_KEY_Ch // 65185

public let KEY_Clear = GDK_KEY_Clear // 65291

public let KEY_ClearGrab = GDK_KEY_ClearGrab // 269024801

public let KEY_Close = GDK_KEY_Close // 269025110

public let KEY_Codeinput = GDK_KEY_Codeinput // 65335

public let KEY_ColonSign = GDK_KEY_ColonSign // 16785569

public let KEY_Community = GDK_KEY_Community // 269025085

public let KEY_ContrastAdjust = GDK_KEY_ContrastAdjust // 269025058

public let KEY_Control_L = GDK_KEY_Control_L // 65507

public let KEY_Control_R = GDK_KEY_Control_R // 65508

public let KEY_Copy = GDK_KEY_Copy // 269025111

public let KEY_CruzeiroSign = GDK_KEY_CruzeiroSign // 16785570

public let KEY_Cut = GDK_KEY_Cut // 269025112

public let KEY_CycleAngle = GDK_KEY_CycleAngle // 269025180

public let KEY_Cyrillic_A = GDK_KEY_Cyrillic_A // 1761

public let KEY_Cyrillic_BE = GDK_KEY_Cyrillic_BE // 1762

public let KEY_Cyrillic_CHE = GDK_KEY_Cyrillic_CHE // 1790

public let KEY_Cyrillic_CHE_descender = GDK_KEY_Cyrillic_CHE_descender // 16778422

public let KEY_Cyrillic_CHE_vertstroke = GDK_KEY_Cyrillic_CHE_vertstroke // 16778424

public let KEY_Cyrillic_DE = GDK_KEY_Cyrillic_DE // 1764

public let KEY_Cyrillic_DZHE = GDK_KEY_Cyrillic_DZHE // 1727

public let KEY_Cyrillic_E = GDK_KEY_Cyrillic_E // 1788

public let KEY_Cyrillic_EF = GDK_KEY_Cyrillic_EF // 1766

public let KEY_Cyrillic_EL = GDK_KEY_Cyrillic_EL // 1772

public let KEY_Cyrillic_EM = GDK_KEY_Cyrillic_EM // 1773

public let KEY_Cyrillic_EN = GDK_KEY_Cyrillic_EN // 1774

public let KEY_Cyrillic_EN_descender = GDK_KEY_Cyrillic_EN_descender // 16778402

public let KEY_Cyrillic_ER = GDK_KEY_Cyrillic_ER // 1778

public let KEY_Cyrillic_ES = GDK_KEY_Cyrillic_ES // 1779

public let KEY_Cyrillic_GHE = GDK_KEY_Cyrillic_GHE // 1767

public let KEY_Cyrillic_GHE_bar = GDK_KEY_Cyrillic_GHE_bar // 16778386

public let KEY_Cyrillic_HA = GDK_KEY_Cyrillic_HA // 1768

public let KEY_Cyrillic_HARDSIGN = GDK_KEY_Cyrillic_HARDSIGN // 1791

public let KEY_Cyrillic_HA_descender = GDK_KEY_Cyrillic_HA_descender // 16778418

public let KEY_Cyrillic_I = GDK_KEY_Cyrillic_I // 1769

public let KEY_Cyrillic_IE = GDK_KEY_Cyrillic_IE // 1765

public let KEY_Cyrillic_IO = GDK_KEY_Cyrillic_IO // 1715

public let KEY_Cyrillic_I_macron = GDK_KEY_Cyrillic_I_macron // 16778466

public let KEY_Cyrillic_JE = GDK_KEY_Cyrillic_JE // 1720

public let KEY_Cyrillic_KA = GDK_KEY_Cyrillic_KA // 1771

public let KEY_Cyrillic_KA_descender = GDK_KEY_Cyrillic_KA_descender // 16778394

public let KEY_Cyrillic_KA_vertstroke = GDK_KEY_Cyrillic_KA_vertstroke // 16778396

public let KEY_Cyrillic_LJE = GDK_KEY_Cyrillic_LJE // 1721

public let KEY_Cyrillic_NJE = GDK_KEY_Cyrillic_NJE // 1722

public let KEY_Cyrillic_O = GDK_KEY_Cyrillic_O // 1775

public let KEY_Cyrillic_O_bar = GDK_KEY_Cyrillic_O_bar // 16778472

public let KEY_Cyrillic_PE = GDK_KEY_Cyrillic_PE // 1776

public let KEY_Cyrillic_SCHWA = GDK_KEY_Cyrillic_SCHWA // 16778456

public let KEY_Cyrillic_SHA = GDK_KEY_Cyrillic_SHA // 1787

public let KEY_Cyrillic_SHCHA = GDK_KEY_Cyrillic_SHCHA // 1789

public let KEY_Cyrillic_SHHA = GDK_KEY_Cyrillic_SHHA // 16778426

public let KEY_Cyrillic_SHORTI = GDK_KEY_Cyrillic_SHORTI // 1770

public let KEY_Cyrillic_SOFTSIGN = GDK_KEY_Cyrillic_SOFTSIGN // 1784

public let KEY_Cyrillic_TE = GDK_KEY_Cyrillic_TE // 1780

public let KEY_Cyrillic_TSE = GDK_KEY_Cyrillic_TSE // 1763

public let KEY_Cyrillic_U = GDK_KEY_Cyrillic_U // 1781

public let KEY_Cyrillic_U_macron = GDK_KEY_Cyrillic_U_macron // 16778478

public let KEY_Cyrillic_U_straight = GDK_KEY_Cyrillic_U_straight // 16778414

public let KEY_Cyrillic_U_straight_bar = GDK_KEY_Cyrillic_U_straight_bar // 16778416

public let KEY_Cyrillic_VE = GDK_KEY_Cyrillic_VE // 1783

public let KEY_Cyrillic_YA = GDK_KEY_Cyrillic_YA // 1777

public let KEY_Cyrillic_YERU = GDK_KEY_Cyrillic_YERU // 1785

public let KEY_Cyrillic_YU = GDK_KEY_Cyrillic_YU // 1760

public let KEY_Cyrillic_ZE = GDK_KEY_Cyrillic_ZE // 1786

public let KEY_Cyrillic_ZHE = GDK_KEY_Cyrillic_ZHE // 1782

public let KEY_Cyrillic_ZHE_descender = GDK_KEY_Cyrillic_ZHE_descender // 16778390

public let KEY_Cyrillic_a = GDK_KEY_Cyrillic_a // 1729

public let KEY_Cyrillic_be = GDK_KEY_Cyrillic_be // 1730

public let KEY_Cyrillic_che = GDK_KEY_Cyrillic_che // 1758

public let KEY_Cyrillic_che_descender = GDK_KEY_Cyrillic_che_descender // 16778423

public let KEY_Cyrillic_che_vertstroke = GDK_KEY_Cyrillic_che_vertstroke // 16778425

public let KEY_Cyrillic_de = GDK_KEY_Cyrillic_de // 1732

public let KEY_Cyrillic_dzhe = GDK_KEY_Cyrillic_dzhe // 1711

public let KEY_Cyrillic_e = GDK_KEY_Cyrillic_e // 1756

public let KEY_Cyrillic_ef = GDK_KEY_Cyrillic_ef // 1734

public let KEY_Cyrillic_el = GDK_KEY_Cyrillic_el // 1740

public let KEY_Cyrillic_em = GDK_KEY_Cyrillic_em // 1741

public let KEY_Cyrillic_en = GDK_KEY_Cyrillic_en // 1742

public let KEY_Cyrillic_en_descender = GDK_KEY_Cyrillic_en_descender // 16778403

public let KEY_Cyrillic_er = GDK_KEY_Cyrillic_er // 1746

public let KEY_Cyrillic_es = GDK_KEY_Cyrillic_es // 1747

public let KEY_Cyrillic_ghe = GDK_KEY_Cyrillic_ghe // 1735

public let KEY_Cyrillic_ghe_bar = GDK_KEY_Cyrillic_ghe_bar // 16778387

public let KEY_Cyrillic_ha = GDK_KEY_Cyrillic_ha // 1736

public let KEY_Cyrillic_ha_descender = GDK_KEY_Cyrillic_ha_descender // 16778419

public let KEY_Cyrillic_hardsign = GDK_KEY_Cyrillic_hardsign // 1759

public let KEY_Cyrillic_i = GDK_KEY_Cyrillic_i // 1737

public let KEY_Cyrillic_i_macron = GDK_KEY_Cyrillic_i_macron // 16778467

public let KEY_Cyrillic_ie = GDK_KEY_Cyrillic_ie // 1733

public let KEY_Cyrillic_io = GDK_KEY_Cyrillic_io // 1699

public let KEY_Cyrillic_je = GDK_KEY_Cyrillic_je // 1704

public let KEY_Cyrillic_ka = GDK_KEY_Cyrillic_ka // 1739

public let KEY_Cyrillic_ka_descender = GDK_KEY_Cyrillic_ka_descender // 16778395

public let KEY_Cyrillic_ka_vertstroke = GDK_KEY_Cyrillic_ka_vertstroke // 16778397

public let KEY_Cyrillic_lje = GDK_KEY_Cyrillic_lje // 1705

public let KEY_Cyrillic_nje = GDK_KEY_Cyrillic_nje // 1706

public let KEY_Cyrillic_o = GDK_KEY_Cyrillic_o // 1743

public let KEY_Cyrillic_o_bar = GDK_KEY_Cyrillic_o_bar // 16778473

public let KEY_Cyrillic_pe = GDK_KEY_Cyrillic_pe // 1744

public let KEY_Cyrillic_schwa = GDK_KEY_Cyrillic_schwa // 16778457

public let KEY_Cyrillic_sha = GDK_KEY_Cyrillic_sha // 1755

public let KEY_Cyrillic_shcha = GDK_KEY_Cyrillic_shcha // 1757

public let KEY_Cyrillic_shha = GDK_KEY_Cyrillic_shha // 16778427

public let KEY_Cyrillic_shorti = GDK_KEY_Cyrillic_shorti // 1738

public let KEY_Cyrillic_softsign = GDK_KEY_Cyrillic_softsign // 1752

public let KEY_Cyrillic_te = GDK_KEY_Cyrillic_te // 1748

public let KEY_Cyrillic_tse = GDK_KEY_Cyrillic_tse // 1731

public let KEY_Cyrillic_u = GDK_KEY_Cyrillic_u // 1749

public let KEY_Cyrillic_u_macron = GDK_KEY_Cyrillic_u_macron // 16778479

public let KEY_Cyrillic_u_straight = GDK_KEY_Cyrillic_u_straight // 16778415

public let KEY_Cyrillic_u_straight_bar = GDK_KEY_Cyrillic_u_straight_bar // 16778417

public let KEY_Cyrillic_ve = GDK_KEY_Cyrillic_ve // 1751

public let KEY_Cyrillic_ya = GDK_KEY_Cyrillic_ya // 1745

public let KEY_Cyrillic_yeru = GDK_KEY_Cyrillic_yeru // 1753

public let KEY_Cyrillic_yu = GDK_KEY_Cyrillic_yu // 1728

public let KEY_Cyrillic_ze = GDK_KEY_Cyrillic_ze // 1754

public let KEY_Cyrillic_zhe = GDK_KEY_Cyrillic_zhe // 1750

public let KEY_Cyrillic_zhe_descender = GDK_KEY_Cyrillic_zhe_descender // 16778391

public let KEY_D = GDK_KEY_D // 68

public let KEY_DOS = GDK_KEY_DOS // 269025114

public let KEY_Dabovedot = GDK_KEY_Dabovedot // 16784906

public let KEY_Dcaron = GDK_KEY_Dcaron // 463

public let KEY_Delete = GDK_KEY_Delete // 65535

public let KEY_Display = GDK_KEY_Display // 269025113

public let KEY_Documents = GDK_KEY_Documents // 269025115

public let KEY_DongSign = GDK_KEY_DongSign // 16785579

public let KEY_Down = GDK_KEY_Down // 65364

public let KEY_Dstroke = GDK_KEY_Dstroke // 464

public let KEY_E = GDK_KEY_E // 69

public let KEY_ENG = GDK_KEY_ENG // 957

public let KEY_ETH = GDK_KEY_ETH // 208

public let KEY_EZH = GDK_KEY_EZH // 16777655

public let KEY_Eabovedot = GDK_KEY_Eabovedot // 972

public let KEY_Eacute = GDK_KEY_Eacute // 201

public let KEY_Ebelowdot = GDK_KEY_Ebelowdot // 16785080

public let KEY_Ecaron = GDK_KEY_Ecaron // 460

public let KEY_Ecircumflex = GDK_KEY_Ecircumflex // 202

public let KEY_Ecircumflexacute = GDK_KEY_Ecircumflexacute // 16785086

public let KEY_Ecircumflexbelowdot = GDK_KEY_Ecircumflexbelowdot // 16785094

public let KEY_Ecircumflexgrave = GDK_KEY_Ecircumflexgrave // 16785088

public let KEY_Ecircumflexhook = GDK_KEY_Ecircumflexhook // 16785090

public let KEY_Ecircumflextilde = GDK_KEY_Ecircumflextilde // 16785092

public let KEY_EcuSign = GDK_KEY_EcuSign // 16785568

public let KEY_Ediaeresis = GDK_KEY_Ediaeresis // 203

public let KEY_Egrave = GDK_KEY_Egrave // 200

public let KEY_Ehook = GDK_KEY_Ehook // 16785082

public let KEY_Eisu_Shift = GDK_KEY_Eisu_Shift // 65327

public let KEY_Eisu_toggle = GDK_KEY_Eisu_toggle // 65328

public let KEY_Eject = GDK_KEY_Eject // 269025068

public let KEY_Emacron = GDK_KEY_Emacron // 938

public let KEY_End = GDK_KEY_End // 65367

public let KEY_Eogonek = GDK_KEY_Eogonek // 458

public let KEY_Escape = GDK_KEY_Escape // 65307

public let KEY_Eth = GDK_KEY_Eth // 208

public let KEY_Etilde = GDK_KEY_Etilde // 16785084

public let KEY_EuroSign = GDK_KEY_EuroSign // 8364

public let KEY_Excel = GDK_KEY_Excel // 269025116

public let KEY_Execute = GDK_KEY_Execute // 65378

public let KEY_Explorer = GDK_KEY_Explorer // 269025117

public let KEY_F = GDK_KEY_F // 70

public let KEY_F1 = GDK_KEY_F1 // 65470

public let KEY_F10 = GDK_KEY_F10 // 65479

public let KEY_F11 = GDK_KEY_F11 // 65480

public let KEY_F12 = GDK_KEY_F12 // 65481

public let KEY_F13 = GDK_KEY_F13 // 65482

public let KEY_F14 = GDK_KEY_F14 // 65483

public let KEY_F15 = GDK_KEY_F15 // 65484

public let KEY_F16 = GDK_KEY_F16 // 65485

public let KEY_F17 = GDK_KEY_F17 // 65486

public let KEY_F18 = GDK_KEY_F18 // 65487

public let KEY_F19 = GDK_KEY_F19 // 65488

public let KEY_F2 = GDK_KEY_F2 // 65471

public let KEY_F20 = GDK_KEY_F20 // 65489

public let KEY_F21 = GDK_KEY_F21 // 65490

public let KEY_F22 = GDK_KEY_F22 // 65491

public let KEY_F23 = GDK_KEY_F23 // 65492

public let KEY_F24 = GDK_KEY_F24 // 65493

public let KEY_F25 = GDK_KEY_F25 // 65494

public let KEY_F26 = GDK_KEY_F26 // 65495

public let KEY_F27 = GDK_KEY_F27 // 65496

public let KEY_F28 = GDK_KEY_F28 // 65497

public let KEY_F29 = GDK_KEY_F29 // 65498

public let KEY_F3 = GDK_KEY_F3 // 65472

public let KEY_F30 = GDK_KEY_F30 // 65499

public let KEY_F31 = GDK_KEY_F31 // 65500

public let KEY_F32 = GDK_KEY_F32 // 65501

public let KEY_F33 = GDK_KEY_F33 // 65502

public let KEY_F34 = GDK_KEY_F34 // 65503

public let KEY_F35 = GDK_KEY_F35 // 65504

public let KEY_F4 = GDK_KEY_F4 // 65473

public let KEY_F5 = GDK_KEY_F5 // 65474

public let KEY_F6 = GDK_KEY_F6 // 65475

public let KEY_F7 = GDK_KEY_F7 // 65476

public let KEY_F8 = GDK_KEY_F8 // 65477

public let KEY_F9 = GDK_KEY_F9 // 65478

public let KEY_FFrancSign = GDK_KEY_FFrancSign // 16785571

public let KEY_Fabovedot = GDK_KEY_Fabovedot // 16784926

public let KEY_Farsi_0 = GDK_KEY_Farsi_0 // 16778992

public let KEY_Farsi_1 = GDK_KEY_Farsi_1 // 16778993

public let KEY_Farsi_2 = GDK_KEY_Farsi_2 // 16778994

public let KEY_Farsi_3 = GDK_KEY_Farsi_3 // 16778995

public let KEY_Farsi_4 = GDK_KEY_Farsi_4 // 16778996

public let KEY_Farsi_5 = GDK_KEY_Farsi_5 // 16778997

public let KEY_Farsi_6 = GDK_KEY_Farsi_6 // 16778998

public let KEY_Farsi_7 = GDK_KEY_Farsi_7 // 16778999

public let KEY_Farsi_8 = GDK_KEY_Farsi_8 // 16779000

public let KEY_Farsi_9 = GDK_KEY_Farsi_9 // 16779001

public let KEY_Farsi_yeh = GDK_KEY_Farsi_yeh // 16778956

public let KEY_Favorites = GDK_KEY_Favorites // 269025072

public let KEY_Finance = GDK_KEY_Finance // 269025084

public let KEY_Find = GDK_KEY_Find // 65384

public let KEY_First_Virtual_Screen = GDK_KEY_First_Virtual_Screen // 65232

public let KEY_Forward = GDK_KEY_Forward // 269025063

public let KEY_FrameBack = GDK_KEY_FrameBack // 269025181

public let KEY_FrameForward = GDK_KEY_FrameForward // 269025182

public let KEY_G = GDK_KEY_G // 71

public let KEY_Gabovedot = GDK_KEY_Gabovedot // 725

public let KEY_Game = GDK_KEY_Game // 269025118

public let KEY_Gbreve = GDK_KEY_Gbreve // 683

public let KEY_Gcaron = GDK_KEY_Gcaron // 16777702

public let KEY_Gcedilla = GDK_KEY_Gcedilla // 939

public let KEY_Gcircumflex = GDK_KEY_Gcircumflex // 728

public let KEY_Georgian_an = GDK_KEY_Georgian_an // 16781520

public let KEY_Georgian_ban = GDK_KEY_Georgian_ban // 16781521

public let KEY_Georgian_can = GDK_KEY_Georgian_can // 16781546

public let KEY_Georgian_char = GDK_KEY_Georgian_char // 16781549

public let KEY_Georgian_chin = GDK_KEY_Georgian_chin // 16781545

public let KEY_Georgian_cil = GDK_KEY_Georgian_cil // 16781548

public let KEY_Georgian_don = GDK_KEY_Georgian_don // 16781523

public let KEY_Georgian_en = GDK_KEY_Georgian_en // 16781524

public let KEY_Georgian_fi = GDK_KEY_Georgian_fi // 16781558

public let KEY_Georgian_gan = GDK_KEY_Georgian_gan // 16781522

public let KEY_Georgian_ghan = GDK_KEY_Georgian_ghan // 16781542

public let KEY_Georgian_hae = GDK_KEY_Georgian_hae // 16781552

public let KEY_Georgian_har = GDK_KEY_Georgian_har // 16781556

public let KEY_Georgian_he = GDK_KEY_Georgian_he // 16781553

public let KEY_Georgian_hie = GDK_KEY_Georgian_hie // 16781554

public let KEY_Georgian_hoe = GDK_KEY_Georgian_hoe // 16781557

public let KEY_Georgian_in = GDK_KEY_Georgian_in // 16781528

public let KEY_Georgian_jhan = GDK_KEY_Georgian_jhan // 16781551

public let KEY_Georgian_jil = GDK_KEY_Georgian_jil // 16781547

public let KEY_Georgian_kan = GDK_KEY_Georgian_kan // 16781529

public let KEY_Georgian_khar = GDK_KEY_Georgian_khar // 16781541

public let KEY_Georgian_las = GDK_KEY_Georgian_las // 16781530

public let KEY_Georgian_man = GDK_KEY_Georgian_man // 16781531

public let KEY_Georgian_nar = GDK_KEY_Georgian_nar // 16781532

public let KEY_Georgian_on = GDK_KEY_Georgian_on // 16781533

public let KEY_Georgian_par = GDK_KEY_Georgian_par // 16781534

public let KEY_Georgian_phar = GDK_KEY_Georgian_phar // 16781540

public let KEY_Georgian_qar = GDK_KEY_Georgian_qar // 16781543

public let KEY_Georgian_rae = GDK_KEY_Georgian_rae // 16781536

public let KEY_Georgian_san = GDK_KEY_Georgian_san // 16781537

public let KEY_Georgian_shin = GDK_KEY_Georgian_shin // 16781544

public let KEY_Georgian_tan = GDK_KEY_Georgian_tan // 16781527

public let KEY_Georgian_tar = GDK_KEY_Georgian_tar // 16781538

public let KEY_Georgian_un = GDK_KEY_Georgian_un // 16781539

public let KEY_Georgian_vin = GDK_KEY_Georgian_vin // 16781525

public let KEY_Georgian_we = GDK_KEY_Georgian_we // 16781555

public let KEY_Georgian_xan = GDK_KEY_Georgian_xan // 16781550

public let KEY_Georgian_zen = GDK_KEY_Georgian_zen // 16781526

public let KEY_Georgian_zhar = GDK_KEY_Georgian_zhar // 16781535

public let KEY_Go = GDK_KEY_Go // 269025119

public let KEY_Greek_ALPHA = GDK_KEY_Greek_ALPHA // 1985

public let KEY_Greek_ALPHAaccent = GDK_KEY_Greek_ALPHAaccent // 1953

public let KEY_Greek_BETA = GDK_KEY_Greek_BETA // 1986

public let KEY_Greek_CHI = GDK_KEY_Greek_CHI // 2007

public let KEY_Greek_DELTA = GDK_KEY_Greek_DELTA // 1988

public let KEY_Greek_EPSILON = GDK_KEY_Greek_EPSILON // 1989

public let KEY_Greek_EPSILONaccent = GDK_KEY_Greek_EPSILONaccent // 1954

public let KEY_Greek_ETA = GDK_KEY_Greek_ETA // 1991

public let KEY_Greek_ETAaccent = GDK_KEY_Greek_ETAaccent // 1955

public let KEY_Greek_GAMMA = GDK_KEY_Greek_GAMMA // 1987

public let KEY_Greek_IOTA = GDK_KEY_Greek_IOTA // 1993

public let KEY_Greek_IOTAaccent = GDK_KEY_Greek_IOTAaccent // 1956

public let KEY_Greek_IOTAdiaeresis = GDK_KEY_Greek_IOTAdiaeresis // 1957

public let KEY_Greek_IOTAdieresis = GDK_KEY_Greek_IOTAdieresis // 1957

public let KEY_Greek_KAPPA = GDK_KEY_Greek_KAPPA // 1994

public let KEY_Greek_LAMBDA = GDK_KEY_Greek_LAMBDA // 1995

public let KEY_Greek_LAMDA = GDK_KEY_Greek_LAMDA // 1995

public let KEY_Greek_MU = GDK_KEY_Greek_MU // 1996

public let KEY_Greek_NU = GDK_KEY_Greek_NU // 1997

public let KEY_Greek_OMEGA = GDK_KEY_Greek_OMEGA // 2009

public let KEY_Greek_OMEGAaccent = GDK_KEY_Greek_OMEGAaccent // 1963

public let KEY_Greek_OMICRON = GDK_KEY_Greek_OMICRON // 1999

public let KEY_Greek_OMICRONaccent = GDK_KEY_Greek_OMICRONaccent // 1959

public let KEY_Greek_PHI = GDK_KEY_Greek_PHI // 2006

public let KEY_Greek_PI = GDK_KEY_Greek_PI // 2000

public let KEY_Greek_PSI = GDK_KEY_Greek_PSI // 2008

public let KEY_Greek_RHO = GDK_KEY_Greek_RHO // 2001

public let KEY_Greek_SIGMA = GDK_KEY_Greek_SIGMA // 2002

public let KEY_Greek_TAU = GDK_KEY_Greek_TAU // 2004

public let KEY_Greek_THETA = GDK_KEY_Greek_THETA // 1992

public let KEY_Greek_UPSILON = GDK_KEY_Greek_UPSILON // 2005

public let KEY_Greek_UPSILONaccent = GDK_KEY_Greek_UPSILONaccent // 1960

public let KEY_Greek_UPSILONdieresis = GDK_KEY_Greek_UPSILONdieresis // 1961

public let KEY_Greek_XI = GDK_KEY_Greek_XI // 1998

public let KEY_Greek_ZETA = GDK_KEY_Greek_ZETA // 1990

public let KEY_Greek_accentdieresis = GDK_KEY_Greek_accentdieresis // 1966

public let KEY_Greek_alpha = GDK_KEY_Greek_alpha // 2017

public let KEY_Greek_alphaaccent = GDK_KEY_Greek_alphaaccent // 1969

public let KEY_Greek_beta = GDK_KEY_Greek_beta // 2018

public let KEY_Greek_chi = GDK_KEY_Greek_chi // 2039

public let KEY_Greek_delta = GDK_KEY_Greek_delta // 2020

public let KEY_Greek_epsilon = GDK_KEY_Greek_epsilon // 2021

public let KEY_Greek_epsilonaccent = GDK_KEY_Greek_epsilonaccent // 1970

public let KEY_Greek_eta = GDK_KEY_Greek_eta // 2023

public let KEY_Greek_etaaccent = GDK_KEY_Greek_etaaccent // 1971

public let KEY_Greek_finalsmallsigma = GDK_KEY_Greek_finalsmallsigma // 2035

public let KEY_Greek_gamma = GDK_KEY_Greek_gamma // 2019

public let KEY_Greek_horizbar = GDK_KEY_Greek_horizbar // 1967

public let KEY_Greek_iota = GDK_KEY_Greek_iota // 2025

public let KEY_Greek_iotaaccent = GDK_KEY_Greek_iotaaccent // 1972

public let KEY_Greek_iotaaccentdieresis = GDK_KEY_Greek_iotaaccentdieresis // 1974

public let KEY_Greek_iotadieresis = GDK_KEY_Greek_iotadieresis // 1973

public let KEY_Greek_kappa = GDK_KEY_Greek_kappa // 2026

public let KEY_Greek_lambda = GDK_KEY_Greek_lambda // 2027

public let KEY_Greek_lamda = GDK_KEY_Greek_lamda // 2027

public let KEY_Greek_mu = GDK_KEY_Greek_mu // 2028

public let KEY_Greek_nu = GDK_KEY_Greek_nu // 2029

public let KEY_Greek_omega = GDK_KEY_Greek_omega // 2041

public let KEY_Greek_omegaaccent = GDK_KEY_Greek_omegaaccent // 1979

public let KEY_Greek_omicron = GDK_KEY_Greek_omicron // 2031

public let KEY_Greek_omicronaccent = GDK_KEY_Greek_omicronaccent // 1975

public let KEY_Greek_phi = GDK_KEY_Greek_phi // 2038

public let KEY_Greek_pi = GDK_KEY_Greek_pi // 2032

public let KEY_Greek_psi = GDK_KEY_Greek_psi // 2040

public let KEY_Greek_rho = GDK_KEY_Greek_rho // 2033

public let KEY_Greek_sigma = GDK_KEY_Greek_sigma // 2034

public let KEY_Greek_switch = GDK_KEY_Greek_switch // 65406

public let KEY_Greek_tau = GDK_KEY_Greek_tau // 2036

public let KEY_Greek_theta = GDK_KEY_Greek_theta // 2024

public let KEY_Greek_upsilon = GDK_KEY_Greek_upsilon // 2037

public let KEY_Greek_upsilonaccent = GDK_KEY_Greek_upsilonaccent // 1976

public let KEY_Greek_upsilonaccentdieresis = GDK_KEY_Greek_upsilonaccentdieresis // 1978

public let KEY_Greek_upsilondieresis = GDK_KEY_Greek_upsilondieresis // 1977

public let KEY_Greek_xi = GDK_KEY_Greek_xi // 2030

public let KEY_Greek_zeta = GDK_KEY_Greek_zeta // 2022

public let KEY_Green = GDK_KEY_Green // 269025188

public let KEY_H = GDK_KEY_H // 72

public let KEY_Hangul = GDK_KEY_Hangul // 65329

public let KEY_Hangul_A = GDK_KEY_Hangul_A // 3775

public let KEY_Hangul_AE = GDK_KEY_Hangul_AE // 3776

public let KEY_Hangul_AraeA = GDK_KEY_Hangul_AraeA // 3830

public let KEY_Hangul_AraeAE = GDK_KEY_Hangul_AraeAE // 3831

public let KEY_Hangul_Banja = GDK_KEY_Hangul_Banja // 65337

public let KEY_Hangul_Cieuc = GDK_KEY_Hangul_Cieuc // 3770

public let KEY_Hangul_Codeinput = GDK_KEY_Hangul_Codeinput // 65335

public let KEY_Hangul_Dikeud = GDK_KEY_Hangul_Dikeud // 3751

public let KEY_Hangul_E = GDK_KEY_Hangul_E // 3780

public let KEY_Hangul_EO = GDK_KEY_Hangul_EO // 3779

public let KEY_Hangul_EU = GDK_KEY_Hangul_EU // 3793

public let KEY_Hangul_End = GDK_KEY_Hangul_End // 65331

public let KEY_Hangul_Hanja = GDK_KEY_Hangul_Hanja // 65332

public let KEY_Hangul_Hieuh = GDK_KEY_Hangul_Hieuh // 3774

public let KEY_Hangul_I = GDK_KEY_Hangul_I // 3795

public let KEY_Hangul_Ieung = GDK_KEY_Hangul_Ieung // 3767

public let KEY_Hangul_J_Cieuc = GDK_KEY_Hangul_J_Cieuc // 3818

public let KEY_Hangul_J_Dikeud = GDK_KEY_Hangul_J_Dikeud // 3802

public let KEY_Hangul_J_Hieuh = GDK_KEY_Hangul_J_Hieuh // 3822

public let KEY_Hangul_J_Ieung = GDK_KEY_Hangul_J_Ieung // 3816

public let KEY_Hangul_J_Jieuj = GDK_KEY_Hangul_J_Jieuj // 3817

public let KEY_Hangul_J_Khieuq = GDK_KEY_Hangul_J_Khieuq // 3819

public let KEY_Hangul_J_Kiyeog = GDK_KEY_Hangul_J_Kiyeog // 3796

public let KEY_Hangul_J_KiyeogSios = GDK_KEY_Hangul_J_KiyeogSios // 3798

public let KEY_Hangul_J_KkogjiDalrinIeung = GDK_KEY_Hangul_J_KkogjiDalrinIeung // 3833

public let KEY_Hangul_J_Mieum = GDK_KEY_Hangul_J_Mieum // 3811

public let KEY_Hangul_J_Nieun = GDK_KEY_Hangul_J_Nieun // 3799

public let KEY_Hangul_J_NieunHieuh = GDK_KEY_Hangul_J_NieunHieuh // 3801

public let KEY_Hangul_J_NieunJieuj = GDK_KEY_Hangul_J_NieunJieuj // 3800

public let KEY_Hangul_J_PanSios = GDK_KEY_Hangul_J_PanSios // 3832

public let KEY_Hangul_J_Phieuf = GDK_KEY_Hangul_J_Phieuf // 3821

public let KEY_Hangul_J_Pieub = GDK_KEY_Hangul_J_Pieub // 3812

public let KEY_Hangul_J_PieubSios = GDK_KEY_Hangul_J_PieubSios // 3813

public let KEY_Hangul_J_Rieul = GDK_KEY_Hangul_J_Rieul // 3803

public let KEY_Hangul_J_RieulHieuh = GDK_KEY_Hangul_J_RieulHieuh // 3810

public let KEY_Hangul_J_RieulKiyeog = GDK_KEY_Hangul_J_RieulKiyeog // 3804

public let KEY_Hangul_J_RieulMieum = GDK_KEY_Hangul_J_RieulMieum // 3805

public let KEY_Hangul_J_RieulPhieuf = GDK_KEY_Hangul_J_RieulPhieuf // 3809

public let KEY_Hangul_J_RieulPieub = GDK_KEY_Hangul_J_RieulPieub // 3806

public let KEY_Hangul_J_RieulSios = GDK_KEY_Hangul_J_RieulSios // 3807

public let KEY_Hangul_J_RieulTieut = GDK_KEY_Hangul_J_RieulTieut // 3808

public let KEY_Hangul_J_Sios = GDK_KEY_Hangul_J_Sios // 3814

public let KEY_Hangul_J_SsangKiyeog = GDK_KEY_Hangul_J_SsangKiyeog // 3797

public let KEY_Hangul_J_SsangSios = GDK_KEY_Hangul_J_SsangSios // 3815

public let KEY_Hangul_J_Tieut = GDK_KEY_Hangul_J_Tieut // 3820

public let KEY_Hangul_J_YeorinHieuh = GDK_KEY_Hangul_J_YeorinHieuh // 3834

public let KEY_Hangul_Jamo = GDK_KEY_Hangul_Jamo // 65333

public let KEY_Hangul_Jeonja = GDK_KEY_Hangul_Jeonja // 65336

public let KEY_Hangul_Jieuj = GDK_KEY_Hangul_Jieuj // 3768

public let KEY_Hangul_Khieuq = GDK_KEY_Hangul_Khieuq // 3771

public let KEY_Hangul_Kiyeog = GDK_KEY_Hangul_Kiyeog // 3745

public let KEY_Hangul_KiyeogSios = GDK_KEY_Hangul_KiyeogSios // 3747

public let KEY_Hangul_KkogjiDalrinIeung = GDK_KEY_Hangul_KkogjiDalrinIeung // 3827

public let KEY_Hangul_Mieum = GDK_KEY_Hangul_Mieum // 3761

public let KEY_Hangul_MultipleCandidate = GDK_KEY_Hangul_MultipleCandidate // 65341

public let KEY_Hangul_Nieun = GDK_KEY_Hangul_Nieun // 3748

public let KEY_Hangul_NieunHieuh = GDK_KEY_Hangul_NieunHieuh // 3750

public let KEY_Hangul_NieunJieuj = GDK_KEY_Hangul_NieunJieuj // 3749

public let KEY_Hangul_O = GDK_KEY_Hangul_O // 3783

public let KEY_Hangul_OE = GDK_KEY_Hangul_OE // 3786

public let KEY_Hangul_PanSios = GDK_KEY_Hangul_PanSios // 3826

public let KEY_Hangul_Phieuf = GDK_KEY_Hangul_Phieuf // 3773

public let KEY_Hangul_Pieub = GDK_KEY_Hangul_Pieub // 3762

public let KEY_Hangul_PieubSios = GDK_KEY_Hangul_PieubSios // 3764

public let KEY_Hangul_PostHanja = GDK_KEY_Hangul_PostHanja // 65339

public let KEY_Hangul_PreHanja = GDK_KEY_Hangul_PreHanja // 65338

public let KEY_Hangul_PreviousCandidate = GDK_KEY_Hangul_PreviousCandidate // 65342

public let KEY_Hangul_Rieul = GDK_KEY_Hangul_Rieul // 3753

public let KEY_Hangul_RieulHieuh = GDK_KEY_Hangul_RieulHieuh // 3760

public let KEY_Hangul_RieulKiyeog = GDK_KEY_Hangul_RieulKiyeog // 3754

public let KEY_Hangul_RieulMieum = GDK_KEY_Hangul_RieulMieum // 3755

public let KEY_Hangul_RieulPhieuf = GDK_KEY_Hangul_RieulPhieuf // 3759

public let KEY_Hangul_RieulPieub = GDK_KEY_Hangul_RieulPieub // 3756

public let KEY_Hangul_RieulSios = GDK_KEY_Hangul_RieulSios // 3757

public let KEY_Hangul_RieulTieut = GDK_KEY_Hangul_RieulTieut // 3758

public let KEY_Hangul_RieulYeorinHieuh = GDK_KEY_Hangul_RieulYeorinHieuh // 3823

public let KEY_Hangul_Romaja = GDK_KEY_Hangul_Romaja // 65334

public let KEY_Hangul_SingleCandidate = GDK_KEY_Hangul_SingleCandidate // 65340

public let KEY_Hangul_Sios = GDK_KEY_Hangul_Sios // 3765

public let KEY_Hangul_Special = GDK_KEY_Hangul_Special // 65343

public let KEY_Hangul_SsangDikeud = GDK_KEY_Hangul_SsangDikeud // 3752

public let KEY_Hangul_SsangJieuj = GDK_KEY_Hangul_SsangJieuj // 3769

public let KEY_Hangul_SsangKiyeog = GDK_KEY_Hangul_SsangKiyeog // 3746

public let KEY_Hangul_SsangPieub = GDK_KEY_Hangul_SsangPieub // 3763

public let KEY_Hangul_SsangSios = GDK_KEY_Hangul_SsangSios // 3766

public let KEY_Hangul_Start = GDK_KEY_Hangul_Start // 65330

public let KEY_Hangul_SunkyeongeumMieum = GDK_KEY_Hangul_SunkyeongeumMieum // 3824

public let KEY_Hangul_SunkyeongeumPhieuf = GDK_KEY_Hangul_SunkyeongeumPhieuf // 3828

public let KEY_Hangul_SunkyeongeumPieub = GDK_KEY_Hangul_SunkyeongeumPieub // 3825

public let KEY_Hangul_Tieut = GDK_KEY_Hangul_Tieut // 3772

public let KEY_Hangul_U = GDK_KEY_Hangul_U // 3788

public let KEY_Hangul_WA = GDK_KEY_Hangul_WA // 3784

public let KEY_Hangul_WAE = GDK_KEY_Hangul_WAE // 3785

public let KEY_Hangul_WE = GDK_KEY_Hangul_WE // 3790

public let KEY_Hangul_WEO = GDK_KEY_Hangul_WEO // 3789

public let KEY_Hangul_WI = GDK_KEY_Hangul_WI // 3791

public let KEY_Hangul_YA = GDK_KEY_Hangul_YA // 3777

public let KEY_Hangul_YAE = GDK_KEY_Hangul_YAE // 3778

public let KEY_Hangul_YE = GDK_KEY_Hangul_YE // 3782

public let KEY_Hangul_YEO = GDK_KEY_Hangul_YEO // 3781

public let KEY_Hangul_YI = GDK_KEY_Hangul_YI // 3794

public let KEY_Hangul_YO = GDK_KEY_Hangul_YO // 3787

public let KEY_Hangul_YU = GDK_KEY_Hangul_YU // 3792

public let KEY_Hangul_YeorinHieuh = GDK_KEY_Hangul_YeorinHieuh // 3829

public let KEY_Hangul_switch = GDK_KEY_Hangul_switch // 65406

public let KEY_Hankaku = GDK_KEY_Hankaku // 65321

public let KEY_Hcircumflex = GDK_KEY_Hcircumflex // 678

public let KEY_Hebrew_switch = GDK_KEY_Hebrew_switch // 65406

public let KEY_Help = GDK_KEY_Help // 65386

public let KEY_Henkan = GDK_KEY_Henkan // 65315

public let KEY_Henkan_Mode = GDK_KEY_Henkan_Mode // 65315

public let KEY_Hibernate = GDK_KEY_Hibernate // 269025192

public let KEY_Hiragana = GDK_KEY_Hiragana // 65317

public let KEY_Hiragana_Katakana = GDK_KEY_Hiragana_Katakana // 65319

public let KEY_History = GDK_KEY_History // 269025079

public let KEY_Home = GDK_KEY_Home // 65360

public let KEY_HomePage = GDK_KEY_HomePage // 269025048

public let KEY_HotLinks = GDK_KEY_HotLinks // 269025082

public let KEY_Hstroke = GDK_KEY_Hstroke // 673

public let KEY_Hyper_L = GDK_KEY_Hyper_L // 65517

public let KEY_Hyper_R = GDK_KEY_Hyper_R // 65518

public let KEY_I = GDK_KEY_I // 73

public let KEY_ISO_Center_Object = GDK_KEY_ISO_Center_Object // 65075

public let KEY_ISO_Continuous_Underline = GDK_KEY_ISO_Continuous_Underline // 65072

public let KEY_ISO_Discontinuous_Underline = GDK_KEY_ISO_Discontinuous_Underline // 65073

public let KEY_ISO_Emphasize = GDK_KEY_ISO_Emphasize // 65074

public let KEY_ISO_Enter = GDK_KEY_ISO_Enter // 65076

public let KEY_ISO_Fast_Cursor_Down = GDK_KEY_ISO_Fast_Cursor_Down // 65071

public let KEY_ISO_Fast_Cursor_Left = GDK_KEY_ISO_Fast_Cursor_Left // 65068

public let KEY_ISO_Fast_Cursor_Right = GDK_KEY_ISO_Fast_Cursor_Right // 65069

public let KEY_ISO_Fast_Cursor_Up = GDK_KEY_ISO_Fast_Cursor_Up // 65070

public let KEY_ISO_First_Group = GDK_KEY_ISO_First_Group // 65036

public let KEY_ISO_First_Group_Lock = GDK_KEY_ISO_First_Group_Lock // 65037

public let KEY_ISO_Group_Latch = GDK_KEY_ISO_Group_Latch // 65030

public let KEY_ISO_Group_Lock = GDK_KEY_ISO_Group_Lock // 65031

public let KEY_ISO_Group_Shift = GDK_KEY_ISO_Group_Shift // 65406

public let KEY_ISO_Last_Group = GDK_KEY_ISO_Last_Group // 65038

public let KEY_ISO_Last_Group_Lock = GDK_KEY_ISO_Last_Group_Lock // 65039

public let KEY_ISO_Left_Tab = GDK_KEY_ISO_Left_Tab // 65056

public let KEY_ISO_Level2_Latch = GDK_KEY_ISO_Level2_Latch // 65026

public let KEY_ISO_Level3_Latch = GDK_KEY_ISO_Level3_Latch // 65028

public let KEY_ISO_Level3_Lock = GDK_KEY_ISO_Level3_Lock // 65029

public let KEY_ISO_Level3_Shift = GDK_KEY_ISO_Level3_Shift // 65027

public let KEY_ISO_Level5_Latch = GDK_KEY_ISO_Level5_Latch // 65042

public let KEY_ISO_Level5_Lock = GDK_KEY_ISO_Level5_Lock // 65043

public let KEY_ISO_Level5_Shift = GDK_KEY_ISO_Level5_Shift // 65041

public let KEY_ISO_Lock = GDK_KEY_ISO_Lock // 65025

public let KEY_ISO_Move_Line_Down = GDK_KEY_ISO_Move_Line_Down // 65058

public let KEY_ISO_Move_Line_Up = GDK_KEY_ISO_Move_Line_Up // 65057

public let KEY_ISO_Next_Group = GDK_KEY_ISO_Next_Group // 65032

public let KEY_ISO_Next_Group_Lock = GDK_KEY_ISO_Next_Group_Lock // 65033

public let KEY_ISO_Partial_Line_Down = GDK_KEY_ISO_Partial_Line_Down // 65060

public let KEY_ISO_Partial_Line_Up = GDK_KEY_ISO_Partial_Line_Up // 65059

public let KEY_ISO_Partial_Space_Left = GDK_KEY_ISO_Partial_Space_Left // 65061

public let KEY_ISO_Partial_Space_Right = GDK_KEY_ISO_Partial_Space_Right // 65062

public let KEY_ISO_Prev_Group = GDK_KEY_ISO_Prev_Group // 65034

public let KEY_ISO_Prev_Group_Lock = GDK_KEY_ISO_Prev_Group_Lock // 65035

public let KEY_ISO_Release_Both_Margins = GDK_KEY_ISO_Release_Both_Margins // 65067

public let KEY_ISO_Release_Margin_Left = GDK_KEY_ISO_Release_Margin_Left // 65065

public let KEY_ISO_Release_Margin_Right = GDK_KEY_ISO_Release_Margin_Right // 65066

public let KEY_ISO_Set_Margin_Left = GDK_KEY_ISO_Set_Margin_Left // 65063

public let KEY_ISO_Set_Margin_Right = GDK_KEY_ISO_Set_Margin_Right // 65064

public let KEY_Iabovedot = GDK_KEY_Iabovedot // 681

public let KEY_Iacute = GDK_KEY_Iacute // 205

public let KEY_Ibelowdot = GDK_KEY_Ibelowdot // 16785098

public let KEY_Ibreve = GDK_KEY_Ibreve // 16777516

public let KEY_Icircumflex = GDK_KEY_Icircumflex // 206

public let KEY_Idiaeresis = GDK_KEY_Idiaeresis // 207

public let KEY_Igrave = GDK_KEY_Igrave // 204

public let KEY_Ihook = GDK_KEY_Ihook // 16785096

public let KEY_Imacron = GDK_KEY_Imacron // 975

public let KEY_Insert = GDK_KEY_Insert // 65379

public let KEY_Iogonek = GDK_KEY_Iogonek // 967

public let KEY_Itilde = GDK_KEY_Itilde // 933

public let KEY_J = GDK_KEY_J // 74

public let KEY_Jcircumflex = GDK_KEY_Jcircumflex // 684

public let KEY_K = GDK_KEY_K // 75

public let KEY_KP_0 = GDK_KEY_KP_0 // 65456

public let KEY_KP_1 = GDK_KEY_KP_1 // 65457

public let KEY_KP_2 = GDK_KEY_KP_2 // 65458

public let KEY_KP_3 = GDK_KEY_KP_3 // 65459

public let KEY_KP_4 = GDK_KEY_KP_4 // 65460

public let KEY_KP_5 = GDK_KEY_KP_5 // 65461

public let KEY_KP_6 = GDK_KEY_KP_6 // 65462

public let KEY_KP_7 = GDK_KEY_KP_7 // 65463

public let KEY_KP_8 = GDK_KEY_KP_8 // 65464

public let KEY_KP_9 = GDK_KEY_KP_9 // 65465

public let KEY_KP_Add = GDK_KEY_KP_Add // 65451

public let KEY_KP_Begin = GDK_KEY_KP_Begin // 65437

public let KEY_KP_Decimal = GDK_KEY_KP_Decimal // 65454

public let KEY_KP_Delete = GDK_KEY_KP_Delete // 65439

public let KEY_KP_Divide = GDK_KEY_KP_Divide // 65455

public let KEY_KP_Down = GDK_KEY_KP_Down // 65433

public let KEY_KP_End = GDK_KEY_KP_End // 65436

public let KEY_KP_Enter = GDK_KEY_KP_Enter // 65421

public let KEY_KP_Equal = GDK_KEY_KP_Equal // 65469

public let KEY_KP_F1 = GDK_KEY_KP_F1 // 65425

public let KEY_KP_F2 = GDK_KEY_KP_F2 // 65426

public let KEY_KP_F3 = GDK_KEY_KP_F3 // 65427

public let KEY_KP_F4 = GDK_KEY_KP_F4 // 65428

public let KEY_KP_Home = GDK_KEY_KP_Home // 65429

public let KEY_KP_Insert = GDK_KEY_KP_Insert // 65438

public let KEY_KP_Left = GDK_KEY_KP_Left // 65430

public let KEY_KP_Multiply = GDK_KEY_KP_Multiply // 65450

public let KEY_KP_Next = GDK_KEY_KP_Next // 65435

public let KEY_KP_Page_Down = GDK_KEY_KP_Page_Down // 65435

public let KEY_KP_Page_Up = GDK_KEY_KP_Page_Up // 65434

public let KEY_KP_Prior = GDK_KEY_KP_Prior // 65434

public let KEY_KP_Right = GDK_KEY_KP_Right // 65432

public let KEY_KP_Separator = GDK_KEY_KP_Separator // 65452

public let KEY_KP_Space = GDK_KEY_KP_Space // 65408

public let KEY_KP_Subtract = GDK_KEY_KP_Subtract // 65453

public let KEY_KP_Tab = GDK_KEY_KP_Tab // 65417

public let KEY_KP_Up = GDK_KEY_KP_Up // 65431

public let KEY_Kana_Lock = GDK_KEY_Kana_Lock // 65325

public let KEY_Kana_Shift = GDK_KEY_Kana_Shift // 65326

public let KEY_Kanji = GDK_KEY_Kanji // 65313

public let KEY_Kanji_Bangou = GDK_KEY_Kanji_Bangou // 65335

public let KEY_Katakana = GDK_KEY_Katakana // 65318

public let KEY_KbdBrightnessDown = GDK_KEY_KbdBrightnessDown // 269025030

public let KEY_KbdBrightnessUp = GDK_KEY_KbdBrightnessUp // 269025029

public let KEY_KbdLightOnOff = GDK_KEY_KbdLightOnOff // 269025028

public let KEY_Kcedilla = GDK_KEY_Kcedilla // 979

public let KEY_Keyboard = GDK_KEY_Keyboard // 269025203

public let KEY_Korean_Won = GDK_KEY_Korean_Won // 3839

public let KEY_L = GDK_KEY_L // 76

public let KEY_L1 = GDK_KEY_L1 // 65480

public let KEY_L10 = GDK_KEY_L10 // 65489

public let KEY_L2 = GDK_KEY_L2 // 65481

public let KEY_L3 = GDK_KEY_L3 // 65482

public let KEY_L4 = GDK_KEY_L4 // 65483

public let KEY_L5 = GDK_KEY_L5 // 65484

public let KEY_L6 = GDK_KEY_L6 // 65485

public let KEY_L7 = GDK_KEY_L7 // 65486

public let KEY_L8 = GDK_KEY_L8 // 65487

public let KEY_L9 = GDK_KEY_L9 // 65488

public let KEY_Lacute = GDK_KEY_Lacute // 453

public let KEY_Last_Virtual_Screen = GDK_KEY_Last_Virtual_Screen // 65236

public let KEY_Launch0 = GDK_KEY_Launch0 // 269025088

public let KEY_Launch1 = GDK_KEY_Launch1 // 269025089

public let KEY_Launch2 = GDK_KEY_Launch2 // 269025090

public let KEY_Launch3 = GDK_KEY_Launch3 // 269025091

public let KEY_Launch4 = GDK_KEY_Launch4 // 269025092

public let KEY_Launch5 = GDK_KEY_Launch5 // 269025093

public let KEY_Launch6 = GDK_KEY_Launch6 // 269025094

public let KEY_Launch7 = GDK_KEY_Launch7 // 269025095

public let KEY_Launch8 = GDK_KEY_Launch8 // 269025096

public let KEY_Launch9 = GDK_KEY_Launch9 // 269025097

public let KEY_LaunchA = GDK_KEY_LaunchA // 269025098

public let KEY_LaunchB = GDK_KEY_LaunchB // 269025099

public let KEY_LaunchC = GDK_KEY_LaunchC // 269025100

public let KEY_LaunchD = GDK_KEY_LaunchD // 269025101

public let KEY_LaunchE = GDK_KEY_LaunchE // 269025102

public let KEY_LaunchF = GDK_KEY_LaunchF // 269025103

public let KEY_Lbelowdot = GDK_KEY_Lbelowdot // 16784950

public let KEY_Lcaron = GDK_KEY_Lcaron // 421

public let KEY_Lcedilla = GDK_KEY_Lcedilla // 934

public let KEY_Left = GDK_KEY_Left // 65361

public let KEY_LightBulb = GDK_KEY_LightBulb // 269025077

public let KEY_Linefeed = GDK_KEY_Linefeed // 65290

public let KEY_LiraSign = GDK_KEY_LiraSign // 16785572

public let KEY_LogGrabInfo = GDK_KEY_LogGrabInfo // 269024805

public let KEY_LogOff = GDK_KEY_LogOff // 269025121

public let KEY_LogWindowTree = GDK_KEY_LogWindowTree // 269024804

public let KEY_Lstroke = GDK_KEY_Lstroke // 419

public let KEY_M = GDK_KEY_M // 77

public let KEY_Mabovedot = GDK_KEY_Mabovedot // 16784960

public let KEY_Macedonia_DSE = GDK_KEY_Macedonia_DSE // 1717

public let KEY_Macedonia_GJE = GDK_KEY_Macedonia_GJE // 1714

public let KEY_Macedonia_KJE = GDK_KEY_Macedonia_KJE // 1724

public let KEY_Macedonia_dse = GDK_KEY_Macedonia_dse // 1701

public let KEY_Macedonia_gje = GDK_KEY_Macedonia_gje // 1698

public let KEY_Macedonia_kje = GDK_KEY_Macedonia_kje // 1708

public let KEY_Mae_Koho = GDK_KEY_Mae_Koho // 65342

public let KEY_Mail = GDK_KEY_Mail // 269025049

public let KEY_MailForward = GDK_KEY_MailForward // 269025168

public let KEY_Market = GDK_KEY_Market // 269025122

public let KEY_Massyo = GDK_KEY_Massyo // 65324

public let KEY_Meeting = GDK_KEY_Meeting // 269025123

public let KEY_Memo = GDK_KEY_Memo // 269025054

public let KEY_Menu = GDK_KEY_Menu // 65383

public let KEY_MenuKB = GDK_KEY_MenuKB // 269025125

public let KEY_MenuPB = GDK_KEY_MenuPB // 269025126

public let KEY_Messenger = GDK_KEY_Messenger // 269025166

public let KEY_Meta_L = GDK_KEY_Meta_L // 65511

public let KEY_Meta_R = GDK_KEY_Meta_R // 65512

public let KEY_MillSign = GDK_KEY_MillSign // 16785573

public let KEY_ModeLock = GDK_KEY_ModeLock // 269025025

public let KEY_Mode_switch = GDK_KEY_Mode_switch // 65406

public let KEY_MonBrightnessDown = GDK_KEY_MonBrightnessDown // 269025027

public let KEY_MonBrightnessUp = GDK_KEY_MonBrightnessUp // 269025026

public let KEY_MouseKeys_Accel_Enable = GDK_KEY_MouseKeys_Accel_Enable // 65143

public let KEY_MouseKeys_Enable = GDK_KEY_MouseKeys_Enable // 65142

public let KEY_Muhenkan = GDK_KEY_Muhenkan // 65314

public let KEY_Multi_key = GDK_KEY_Multi_key // 65312

public let KEY_MultipleCandidate = GDK_KEY_MultipleCandidate // 65341

public let KEY_Music = GDK_KEY_Music // 269025170

public let KEY_MyComputer = GDK_KEY_MyComputer // 269025075

public let KEY_MySites = GDK_KEY_MySites // 269025127

public let KEY_N = GDK_KEY_N // 78

public let KEY_Nacute = GDK_KEY_Nacute // 465

public let KEY_NairaSign = GDK_KEY_NairaSign // 16785574

public let KEY_Ncaron = GDK_KEY_Ncaron // 466

public let KEY_Ncedilla = GDK_KEY_Ncedilla // 977

public let KEY_New = GDK_KEY_New // 269025128

public let KEY_NewSheqelSign = GDK_KEY_NewSheqelSign // 16785578

public let KEY_News = GDK_KEY_News // 269025129

public let KEY_Next = GDK_KEY_Next // 65366

public let KEY_Next_VMode = GDK_KEY_Next_VMode // 269024802

public let KEY_Next_Virtual_Screen = GDK_KEY_Next_Virtual_Screen // 65234

public let KEY_Ntilde = GDK_KEY_Ntilde // 209

public let KEY_Num_Lock = GDK_KEY_Num_Lock // 65407

public let KEY_O = GDK_KEY_O // 79

public let KEY_OE = GDK_KEY_OE // 5052

public let KEY_Oacute = GDK_KEY_Oacute // 211

public let KEY_Obarred = GDK_KEY_Obarred // 16777631

public let KEY_Obelowdot = GDK_KEY_Obelowdot // 16785100

public let KEY_Ocaron = GDK_KEY_Ocaron // 16777681

public let KEY_Ocircumflex = GDK_KEY_Ocircumflex // 212

public let KEY_Ocircumflexacute = GDK_KEY_Ocircumflexacute // 16785104

public let KEY_Ocircumflexbelowdot = GDK_KEY_Ocircumflexbelowdot // 16785112

public let KEY_Ocircumflexgrave = GDK_KEY_Ocircumflexgrave // 16785106

public let KEY_Ocircumflexhook = GDK_KEY_Ocircumflexhook // 16785108

public let KEY_Ocircumflextilde = GDK_KEY_Ocircumflextilde // 16785110

public let KEY_Odiaeresis = GDK_KEY_Odiaeresis // 214

public let KEY_Odoubleacute = GDK_KEY_Odoubleacute // 469

public let KEY_OfficeHome = GDK_KEY_OfficeHome // 269025130

public let KEY_Ograve = GDK_KEY_Ograve // 210

public let KEY_Ohook = GDK_KEY_Ohook // 16785102

public let KEY_Ohorn = GDK_KEY_Ohorn // 16777632

public let KEY_Ohornacute = GDK_KEY_Ohornacute // 16785114

public let KEY_Ohornbelowdot = GDK_KEY_Ohornbelowdot // 16785122

public let KEY_Ohorngrave = GDK_KEY_Ohorngrave // 16785116

public let KEY_Ohornhook = GDK_KEY_Ohornhook // 16785118

public let KEY_Ohorntilde = GDK_KEY_Ohorntilde // 16785120

public let KEY_Omacron = GDK_KEY_Omacron // 978

public let KEY_Ooblique = GDK_KEY_Ooblique // 216

public let KEY_Open = GDK_KEY_Open // 269025131

public let KEY_OpenURL = GDK_KEY_OpenURL // 269025080

public let KEY_Option = GDK_KEY_Option // 269025132

public let KEY_Oslash = GDK_KEY_Oslash // 216

public let KEY_Otilde = GDK_KEY_Otilde // 213

public let KEY_Overlay1_Enable = GDK_KEY_Overlay1_Enable // 65144

public let KEY_Overlay2_Enable = GDK_KEY_Overlay2_Enable // 65145

public let KEY_P = GDK_KEY_P // 80

public let KEY_Pabovedot = GDK_KEY_Pabovedot // 16784982

public let KEY_Page_Down = GDK_KEY_Page_Down // 65366

public let KEY_Page_Up = GDK_KEY_Page_Up // 65365

public let KEY_Paste = GDK_KEY_Paste // 269025133

public let KEY_Pause = GDK_KEY_Pause // 65299

public let KEY_PesetaSign = GDK_KEY_PesetaSign // 16785575

public let KEY_Phone = GDK_KEY_Phone // 269025134

public let KEY_Pictures = GDK_KEY_Pictures // 269025169

public let KEY_Pointer_Accelerate = GDK_KEY_Pointer_Accelerate // 65274

public let KEY_Pointer_Button1 = GDK_KEY_Pointer_Button1 // 65257

public let KEY_Pointer_Button2 = GDK_KEY_Pointer_Button2 // 65258

public let KEY_Pointer_Button3 = GDK_KEY_Pointer_Button3 // 65259

public let KEY_Pointer_Button4 = GDK_KEY_Pointer_Button4 // 65260

public let KEY_Pointer_Button5 = GDK_KEY_Pointer_Button5 // 65261

public let KEY_Pointer_Button_Dflt = GDK_KEY_Pointer_Button_Dflt // 65256

public let KEY_Pointer_DblClick1 = GDK_KEY_Pointer_DblClick1 // 65263

public let KEY_Pointer_DblClick2 = GDK_KEY_Pointer_DblClick2 // 65264

public let KEY_Pointer_DblClick3 = GDK_KEY_Pointer_DblClick3 // 65265

public let KEY_Pointer_DblClick4 = GDK_KEY_Pointer_DblClick4 // 65266

public let KEY_Pointer_DblClick5 = GDK_KEY_Pointer_DblClick5 // 65267

public let KEY_Pointer_DblClick_Dflt = GDK_KEY_Pointer_DblClick_Dflt // 65262

public let KEY_Pointer_DfltBtnNext = GDK_KEY_Pointer_DfltBtnNext // 65275

public let KEY_Pointer_DfltBtnPrev = GDK_KEY_Pointer_DfltBtnPrev // 65276

public let KEY_Pointer_Down = GDK_KEY_Pointer_Down // 65251

public let KEY_Pointer_DownLeft = GDK_KEY_Pointer_DownLeft // 65254

public let KEY_Pointer_DownRight = GDK_KEY_Pointer_DownRight // 65255

public let KEY_Pointer_Drag1 = GDK_KEY_Pointer_Drag1 // 65269

public let KEY_Pointer_Drag2 = GDK_KEY_Pointer_Drag2 // 65270

public let KEY_Pointer_Drag3 = GDK_KEY_Pointer_Drag3 // 65271

public let KEY_Pointer_Drag4 = GDK_KEY_Pointer_Drag4 // 65272

public let KEY_Pointer_Drag5 = GDK_KEY_Pointer_Drag5 // 65277

public let KEY_Pointer_Drag_Dflt = GDK_KEY_Pointer_Drag_Dflt // 65268

public let KEY_Pointer_EnableKeys = GDK_KEY_Pointer_EnableKeys // 65273

public let KEY_Pointer_Left = GDK_KEY_Pointer_Left // 65248

public let KEY_Pointer_Right = GDK_KEY_Pointer_Right // 65249

public let KEY_Pointer_Up = GDK_KEY_Pointer_Up // 65250

public let KEY_Pointer_UpLeft = GDK_KEY_Pointer_UpLeft // 65252

public let KEY_Pointer_UpRight = GDK_KEY_Pointer_UpRight // 65253

public let KEY_PowerDown = GDK_KEY_PowerDown // 269025057

public let KEY_PowerOff = GDK_KEY_PowerOff // 269025066

public let KEY_Prev_VMode = GDK_KEY_Prev_VMode // 269024803

public let KEY_Prev_Virtual_Screen = GDK_KEY_Prev_Virtual_Screen // 65233

public let KEY_PreviousCandidate = GDK_KEY_PreviousCandidate // 65342

public let KEY_Print = GDK_KEY_Print // 65377

public let KEY_Prior = GDK_KEY_Prior // 65365

public let KEY_Q = GDK_KEY_Q // 81

public let KEY_R = GDK_KEY_R // 82

public let KEY_R1 = GDK_KEY_R1 // 65490

public let KEY_R10 = GDK_KEY_R10 // 65499

public let KEY_R11 = GDK_KEY_R11 // 65500

public let KEY_R12 = GDK_KEY_R12 // 65501

public let KEY_R13 = GDK_KEY_R13 // 65502

public let KEY_R14 = GDK_KEY_R14 // 65503

public let KEY_R15 = GDK_KEY_R15 // 65504

public let KEY_R2 = GDK_KEY_R2 // 65491

public let KEY_R3 = GDK_KEY_R3 // 65492

public let KEY_R4 = GDK_KEY_R4 // 65493

public let KEY_R5 = GDK_KEY_R5 // 65494

public let KEY_R6 = GDK_KEY_R6 // 65495

public let KEY_R7 = GDK_KEY_R7 // 65496

public let KEY_R8 = GDK_KEY_R8 // 65497

public let KEY_R9 = GDK_KEY_R9 // 65498

public let KEY_RFKill = GDK_KEY_RFKill // 269025205

public let KEY_Racute = GDK_KEY_Racute // 448

public let KEY_Rcaron = GDK_KEY_Rcaron // 472

public let KEY_Rcedilla = GDK_KEY_Rcedilla // 931

public let KEY_Red = GDK_KEY_Red // 269025187

public let KEY_Redo = GDK_KEY_Redo // 65382

public let KEY_Refresh = GDK_KEY_Refresh // 269025065

public let KEY_Reload = GDK_KEY_Reload // 269025139

public let KEY_RepeatKeys_Enable = GDK_KEY_RepeatKeys_Enable // 65138

public let KEY_Reply = GDK_KEY_Reply // 269025138

public let KEY_Return = GDK_KEY_Return // 65293

public let KEY_Right = GDK_KEY_Right // 65363

public let KEY_RockerDown = GDK_KEY_RockerDown // 269025060

public let KEY_RockerEnter = GDK_KEY_RockerEnter // 269025061

public let KEY_RockerUp = GDK_KEY_RockerUp // 269025059

public let KEY_Romaji = GDK_KEY_Romaji // 65316

public let KEY_RotateWindows = GDK_KEY_RotateWindows // 269025140

public let KEY_RotationKB = GDK_KEY_RotationKB // 269025142

public let KEY_RotationPB = GDK_KEY_RotationPB // 269025141

public let KEY_RupeeSign = GDK_KEY_RupeeSign // 16785576

public let KEY_S = GDK_KEY_S // 83

public let KEY_SCHWA = GDK_KEY_SCHWA // 16777615

public let KEY_Sabovedot = GDK_KEY_Sabovedot // 16784992

public let KEY_Sacute = GDK_KEY_Sacute // 422

public let KEY_Save = GDK_KEY_Save // 269025143

public let KEY_Scaron = GDK_KEY_Scaron // 425

public let KEY_Scedilla = GDK_KEY_Scedilla // 426

public let KEY_Scircumflex = GDK_KEY_Scircumflex // 734

public let KEY_ScreenSaver = GDK_KEY_ScreenSaver // 269025069

public let KEY_ScrollClick = GDK_KEY_ScrollClick // 269025146

public let KEY_ScrollDown = GDK_KEY_ScrollDown // 269025145

public let KEY_ScrollUp = GDK_KEY_ScrollUp // 269025144

public let KEY_Scroll_Lock = GDK_KEY_Scroll_Lock // 65300

public let KEY_Search = GDK_KEY_Search // 269025051

public let KEY_Select = GDK_KEY_Select // 65376

public let KEY_SelectButton = GDK_KEY_SelectButton // 269025184

public let KEY_Send = GDK_KEY_Send // 269025147

public let KEY_Serbian_DJE = GDK_KEY_Serbian_DJE // 1713

public let KEY_Serbian_DZE = GDK_KEY_Serbian_DZE // 1727

public let KEY_Serbian_JE = GDK_KEY_Serbian_JE // 1720

public let KEY_Serbian_LJE = GDK_KEY_Serbian_LJE // 1721

public let KEY_Serbian_NJE = GDK_KEY_Serbian_NJE // 1722

public let KEY_Serbian_TSHE = GDK_KEY_Serbian_TSHE // 1723

public let KEY_Serbian_dje = GDK_KEY_Serbian_dje // 1697

public let KEY_Serbian_dze = GDK_KEY_Serbian_dze // 1711

public let KEY_Serbian_je = GDK_KEY_Serbian_je // 1704

public let KEY_Serbian_lje = GDK_KEY_Serbian_lje // 1705

public let KEY_Serbian_nje = GDK_KEY_Serbian_nje // 1706

public let KEY_Serbian_tshe = GDK_KEY_Serbian_tshe // 1707

public let KEY_Shift_L = GDK_KEY_Shift_L // 65505

public let KEY_Shift_Lock = GDK_KEY_Shift_Lock // 65510

public let KEY_Shift_R = GDK_KEY_Shift_R // 65506

public let KEY_Shop = GDK_KEY_Shop // 269025078

public let KEY_SingleCandidate = GDK_KEY_SingleCandidate // 65340

public let KEY_Sinh_a = GDK_KEY_Sinh_a // 16780677

public let KEY_Sinh_aa = GDK_KEY_Sinh_aa // 16780678

public let KEY_Sinh_aa2 = GDK_KEY_Sinh_aa2 // 16780751

public let KEY_Sinh_ae = GDK_KEY_Sinh_ae // 16780679

public let KEY_Sinh_ae2 = GDK_KEY_Sinh_ae2 // 16780752

public let KEY_Sinh_aee = GDK_KEY_Sinh_aee // 16780680

public let KEY_Sinh_aee2 = GDK_KEY_Sinh_aee2 // 16780753

public let KEY_Sinh_ai = GDK_KEY_Sinh_ai // 16780691

public let KEY_Sinh_ai2 = GDK_KEY_Sinh_ai2 // 16780763

public let KEY_Sinh_al = GDK_KEY_Sinh_al // 16780746

public let KEY_Sinh_au = GDK_KEY_Sinh_au // 16780694

public let KEY_Sinh_au2 = GDK_KEY_Sinh_au2 // 16780766

public let KEY_Sinh_ba = GDK_KEY_Sinh_ba // 16780726

public let KEY_Sinh_bha = GDK_KEY_Sinh_bha // 16780727

public let KEY_Sinh_ca = GDK_KEY_Sinh_ca // 16780704

public let KEY_Sinh_cha = GDK_KEY_Sinh_cha // 16780705

public let KEY_Sinh_dda = GDK_KEY_Sinh_dda // 16780713

public let KEY_Sinh_ddha = GDK_KEY_Sinh_ddha // 16780714

public let KEY_Sinh_dha = GDK_KEY_Sinh_dha // 16780719

public let KEY_Sinh_dhha = GDK_KEY_Sinh_dhha // 16780720

public let KEY_Sinh_e = GDK_KEY_Sinh_e // 16780689

public let KEY_Sinh_e2 = GDK_KEY_Sinh_e2 // 16780761

public let KEY_Sinh_ee = GDK_KEY_Sinh_ee // 16780690

public let KEY_Sinh_ee2 = GDK_KEY_Sinh_ee2 // 16780762

public let KEY_Sinh_fa = GDK_KEY_Sinh_fa // 16780742

public let KEY_Sinh_ga = GDK_KEY_Sinh_ga // 16780700

public let KEY_Sinh_gha = GDK_KEY_Sinh_gha // 16780701

public let KEY_Sinh_h2 = GDK_KEY_Sinh_h2 // 16780675

public let KEY_Sinh_ha = GDK_KEY_Sinh_ha // 16780740

public let KEY_Sinh_i = GDK_KEY_Sinh_i // 16780681

public let KEY_Sinh_i2 = GDK_KEY_Sinh_i2 // 16780754

public let KEY_Sinh_ii = GDK_KEY_Sinh_ii // 16780682

public let KEY_Sinh_ii2 = GDK_KEY_Sinh_ii2 // 16780755

public let KEY_Sinh_ja = GDK_KEY_Sinh_ja // 16780706

public let KEY_Sinh_jha = GDK_KEY_Sinh_jha // 16780707

public let KEY_Sinh_jnya = GDK_KEY_Sinh_jnya // 16780709

public let KEY_Sinh_ka = GDK_KEY_Sinh_ka // 16780698

public let KEY_Sinh_kha = GDK_KEY_Sinh_kha // 16780699

public let KEY_Sinh_kunddaliya = GDK_KEY_Sinh_kunddaliya // 16780788

public let KEY_Sinh_la = GDK_KEY_Sinh_la // 16780733

public let KEY_Sinh_lla = GDK_KEY_Sinh_lla // 16780741

public let KEY_Sinh_lu = GDK_KEY_Sinh_lu // 16780687

public let KEY_Sinh_lu2 = GDK_KEY_Sinh_lu2 // 16780767

public let KEY_Sinh_luu = GDK_KEY_Sinh_luu // 16780688

public let KEY_Sinh_luu2 = GDK_KEY_Sinh_luu2 // 16780787

public let KEY_Sinh_ma = GDK_KEY_Sinh_ma // 16780728

public let KEY_Sinh_mba = GDK_KEY_Sinh_mba // 16780729

public let KEY_Sinh_na = GDK_KEY_Sinh_na // 16780721

public let KEY_Sinh_ndda = GDK_KEY_Sinh_ndda // 16780716

public let KEY_Sinh_ndha = GDK_KEY_Sinh_ndha // 16780723

public let KEY_Sinh_ng = GDK_KEY_Sinh_ng // 16780674

public let KEY_Sinh_ng2 = GDK_KEY_Sinh_ng2 // 16780702

public let KEY_Sinh_nga = GDK_KEY_Sinh_nga // 16780703

public let KEY_Sinh_nja = GDK_KEY_Sinh_nja // 16780710

public let KEY_Sinh_nna = GDK_KEY_Sinh_nna // 16780715

public let KEY_Sinh_nya = GDK_KEY_Sinh_nya // 16780708

public let KEY_Sinh_o = GDK_KEY_Sinh_o // 16780692

public let KEY_Sinh_o2 = GDK_KEY_Sinh_o2 // 16780764

public let KEY_Sinh_oo = GDK_KEY_Sinh_oo // 16780693

public let KEY_Sinh_oo2 = GDK_KEY_Sinh_oo2 // 16780765

public let KEY_Sinh_pa = GDK_KEY_Sinh_pa // 16780724

public let KEY_Sinh_pha = GDK_KEY_Sinh_pha // 16780725

public let KEY_Sinh_ra = GDK_KEY_Sinh_ra // 16780731

public let KEY_Sinh_ri = GDK_KEY_Sinh_ri // 16780685

public let KEY_Sinh_rii = GDK_KEY_Sinh_rii // 16780686

public let KEY_Sinh_ru2 = GDK_KEY_Sinh_ru2 // 16780760

public let KEY_Sinh_ruu2 = GDK_KEY_Sinh_ruu2 // 16780786

public let KEY_Sinh_sa = GDK_KEY_Sinh_sa // 16780739

public let KEY_Sinh_sha = GDK_KEY_Sinh_sha // 16780737

public let KEY_Sinh_ssha = GDK_KEY_Sinh_ssha // 16780738

public let KEY_Sinh_tha = GDK_KEY_Sinh_tha // 16780717

public let KEY_Sinh_thha = GDK_KEY_Sinh_thha // 16780718

public let KEY_Sinh_tta = GDK_KEY_Sinh_tta // 16780711

public let KEY_Sinh_ttha = GDK_KEY_Sinh_ttha // 16780712

public let KEY_Sinh_u = GDK_KEY_Sinh_u // 16780683

public let KEY_Sinh_u2 = GDK_KEY_Sinh_u2 // 16780756

public let KEY_Sinh_uu = GDK_KEY_Sinh_uu // 16780684

public let KEY_Sinh_uu2 = GDK_KEY_Sinh_uu2 // 16780758

public let KEY_Sinh_va = GDK_KEY_Sinh_va // 16780736

public let KEY_Sinh_ya = GDK_KEY_Sinh_ya // 16780730

public let KEY_Sleep = GDK_KEY_Sleep // 269025071

public let KEY_SlowKeys_Enable = GDK_KEY_SlowKeys_Enable // 65139

public let KEY_Spell = GDK_KEY_Spell // 269025148

public let KEY_SplitScreen = GDK_KEY_SplitScreen // 269025149

public let KEY_Standby = GDK_KEY_Standby // 269025040

public let KEY_Start = GDK_KEY_Start // 269025050

public let KEY_StickyKeys_Enable = GDK_KEY_StickyKeys_Enable // 65141

public let KEY_Stop = GDK_KEY_Stop // 269025064

public let KEY_Subtitle = GDK_KEY_Subtitle // 269025178

public let KEY_Super_L = GDK_KEY_Super_L // 65515

public let KEY_Super_R = GDK_KEY_Super_R // 65516

public let KEY_Support = GDK_KEY_Support // 269025150

public let KEY_Suspend = GDK_KEY_Suspend // 269025191

public let KEY_Switch_VT_1 = GDK_KEY_Switch_VT_1 // 269024769

public let KEY_Switch_VT_10 = GDK_KEY_Switch_VT_10 // 269024778

public let KEY_Switch_VT_11 = GDK_KEY_Switch_VT_11 // 269024779

public let KEY_Switch_VT_12 = GDK_KEY_Switch_VT_12 // 269024780

public let KEY_Switch_VT_2 = GDK_KEY_Switch_VT_2 // 269024770

public let KEY_Switch_VT_3 = GDK_KEY_Switch_VT_3 // 269024771

public let KEY_Switch_VT_4 = GDK_KEY_Switch_VT_4 // 269024772

public let KEY_Switch_VT_5 = GDK_KEY_Switch_VT_5 // 269024773

public let KEY_Switch_VT_6 = GDK_KEY_Switch_VT_6 // 269024774

public let KEY_Switch_VT_7 = GDK_KEY_Switch_VT_7 // 269024775

public let KEY_Switch_VT_8 = GDK_KEY_Switch_VT_8 // 269024776

public let KEY_Switch_VT_9 = GDK_KEY_Switch_VT_9 // 269024777

public let KEY_Sys_Req = GDK_KEY_Sys_Req // 65301

public let KEY_T = GDK_KEY_T // 84

public let KEY_THORN = GDK_KEY_THORN // 222

public let KEY_Tab = GDK_KEY_Tab // 65289

public let KEY_Tabovedot = GDK_KEY_Tabovedot // 16785002

public let KEY_TaskPane = GDK_KEY_TaskPane // 269025151

public let KEY_Tcaron = GDK_KEY_Tcaron // 427

public let KEY_Tcedilla = GDK_KEY_Tcedilla // 478

public let KEY_Terminal = GDK_KEY_Terminal // 269025152

public let KEY_Terminate_Server = GDK_KEY_Terminate_Server // 65237

public let KEY_Thai_baht = GDK_KEY_Thai_baht // 3551

public let KEY_Thai_bobaimai = GDK_KEY_Thai_bobaimai // 3514

public let KEY_Thai_chochan = GDK_KEY_Thai_chochan // 3496

public let KEY_Thai_chochang = GDK_KEY_Thai_chochang // 3498

public let KEY_Thai_choching = GDK_KEY_Thai_choching // 3497

public let KEY_Thai_chochoe = GDK_KEY_Thai_chochoe // 3500

public let KEY_Thai_dochada = GDK_KEY_Thai_dochada // 3502

public let KEY_Thai_dodek = GDK_KEY_Thai_dodek // 3508

public let KEY_Thai_fofa = GDK_KEY_Thai_fofa // 3517

public let KEY_Thai_fofan = GDK_KEY_Thai_fofan // 3519

public let KEY_Thai_hohip = GDK_KEY_Thai_hohip // 3531

public let KEY_Thai_honokhuk = GDK_KEY_Thai_honokhuk // 3534

public let KEY_Thai_khokhai = GDK_KEY_Thai_khokhai // 3490

public let KEY_Thai_khokhon = GDK_KEY_Thai_khokhon // 3493

public let KEY_Thai_khokhuat = GDK_KEY_Thai_khokhuat // 3491

public let KEY_Thai_khokhwai = GDK_KEY_Thai_khokhwai // 3492

public let KEY_Thai_khorakhang = GDK_KEY_Thai_khorakhang // 3494

public let KEY_Thai_kokai = GDK_KEY_Thai_kokai // 3489

public let KEY_Thai_lakkhangyao = GDK_KEY_Thai_lakkhangyao // 3557

public let KEY_Thai_lekchet = GDK_KEY_Thai_lekchet // 3575

public let KEY_Thai_lekha = GDK_KEY_Thai_lekha // 3573

public let KEY_Thai_lekhok = GDK_KEY_Thai_lekhok // 3574

public let KEY_Thai_lekkao = GDK_KEY_Thai_lekkao // 3577

public let KEY_Thai_leknung = GDK_KEY_Thai_leknung // 3569

public let KEY_Thai_lekpaet = GDK_KEY_Thai_lekpaet // 3576

public let KEY_Thai_leksam = GDK_KEY_Thai_leksam // 3571

public let KEY_Thai_leksi = GDK_KEY_Thai_leksi // 3572

public let KEY_Thai_leksong = GDK_KEY_Thai_leksong // 3570

public let KEY_Thai_leksun = GDK_KEY_Thai_leksun // 3568

public let KEY_Thai_lochula = GDK_KEY_Thai_lochula // 3532

public let KEY_Thai_loling = GDK_KEY_Thai_loling // 3525

public let KEY_Thai_lu = GDK_KEY_Thai_lu // 3526

public let KEY_Thai_maichattawa = GDK_KEY_Thai_maichattawa // 3563

public let KEY_Thai_maiek = GDK_KEY_Thai_maiek // 3560

public let KEY_Thai_maihanakat = GDK_KEY_Thai_maihanakat // 3537

public let KEY_Thai_maihanakat_maitho = GDK_KEY_Thai_maihanakat_maitho // 3550

public let KEY_Thai_maitaikhu = GDK_KEY_Thai_maitaikhu // 3559

public let KEY_Thai_maitho = GDK_KEY_Thai_maitho // 3561

public let KEY_Thai_maitri = GDK_KEY_Thai_maitri // 3562

public let KEY_Thai_maiyamok = GDK_KEY_Thai_maiyamok // 3558

public let KEY_Thai_moma = GDK_KEY_Thai_moma // 3521

public let KEY_Thai_ngongu = GDK_KEY_Thai_ngongu // 3495

public let KEY_Thai_nikhahit = GDK_KEY_Thai_nikhahit // 3565

public let KEY_Thai_nonen = GDK_KEY_Thai_nonen // 3507

public let KEY_Thai_nonu = GDK_KEY_Thai_nonu // 3513

public let KEY_Thai_oang = GDK_KEY_Thai_oang // 3533

public let KEY_Thai_paiyannoi = GDK_KEY_Thai_paiyannoi // 3535

public let KEY_Thai_phinthu = GDK_KEY_Thai_phinthu // 3546

public let KEY_Thai_phophan = GDK_KEY_Thai_phophan // 3518

public let KEY_Thai_phophung = GDK_KEY_Thai_phophung // 3516

public let KEY_Thai_phosamphao = GDK_KEY_Thai_phosamphao // 3520

public let KEY_Thai_popla = GDK_KEY_Thai_popla // 3515

public let KEY_Thai_rorua = GDK_KEY_Thai_rorua // 3523

public let KEY_Thai_ru = GDK_KEY_Thai_ru // 3524

public let KEY_Thai_saraa = GDK_KEY_Thai_saraa // 3536

public let KEY_Thai_saraaa = GDK_KEY_Thai_saraaa // 3538

public let KEY_Thai_saraae = GDK_KEY_Thai_saraae // 3553

public let KEY_Thai_saraaimaimalai = GDK_KEY_Thai_saraaimaimalai // 3556

public let KEY_Thai_saraaimaimuan = GDK_KEY_Thai_saraaimaimuan // 3555

public let KEY_Thai_saraam = GDK_KEY_Thai_saraam // 3539

public let KEY_Thai_sarae = GDK_KEY_Thai_sarae // 3552

public let KEY_Thai_sarai = GDK_KEY_Thai_sarai // 3540

public let KEY_Thai_saraii = GDK_KEY_Thai_saraii // 3541

public let KEY_Thai_sarao = GDK_KEY_Thai_sarao // 3554

public let KEY_Thai_sarau = GDK_KEY_Thai_sarau // 3544

public let KEY_Thai_saraue = GDK_KEY_Thai_saraue // 3542

public let KEY_Thai_sarauee = GDK_KEY_Thai_sarauee // 3543

public let KEY_Thai_sarauu = GDK_KEY_Thai_sarauu // 3545

public let KEY_Thai_sorusi = GDK_KEY_Thai_sorusi // 3529

public let KEY_Thai_sosala = GDK_KEY_Thai_sosala // 3528

public let KEY_Thai_soso = GDK_KEY_Thai_soso // 3499

public let KEY_Thai_sosua = GDK_KEY_Thai_sosua // 3530

public let KEY_Thai_thanthakhat = GDK_KEY_Thai_thanthakhat // 3564

public let KEY_Thai_thonangmontho = GDK_KEY_Thai_thonangmontho // 3505

public let KEY_Thai_thophuthao = GDK_KEY_Thai_thophuthao // 3506

public let KEY_Thai_thothahan = GDK_KEY_Thai_thothahan // 3511

public let KEY_Thai_thothan = GDK_KEY_Thai_thothan // 3504

public let KEY_Thai_thothong = GDK_KEY_Thai_thothong // 3512

public let KEY_Thai_thothung = GDK_KEY_Thai_thothung // 3510

public let KEY_Thai_topatak = GDK_KEY_Thai_topatak // 3503

public let KEY_Thai_totao = GDK_KEY_Thai_totao // 3509

public let KEY_Thai_wowaen = GDK_KEY_Thai_wowaen // 3527

public let KEY_Thai_yoyak = GDK_KEY_Thai_yoyak // 3522

public let KEY_Thai_yoying = GDK_KEY_Thai_yoying // 3501

public let KEY_Thorn = GDK_KEY_Thorn // 222

public let KEY_Time = GDK_KEY_Time // 269025183

public let KEY_ToDoList = GDK_KEY_ToDoList // 269025055

public let KEY_Tools = GDK_KEY_Tools // 269025153

public let KEY_TopMenu = GDK_KEY_TopMenu // 269025186

public let KEY_TouchpadOff = GDK_KEY_TouchpadOff // 269025201

public let KEY_TouchpadOn = GDK_KEY_TouchpadOn // 269025200

public let KEY_TouchpadToggle = GDK_KEY_TouchpadToggle // 269025193

public let KEY_Touroku = GDK_KEY_Touroku // 65323

public let KEY_Travel = GDK_KEY_Travel // 269025154

public let KEY_Tslash = GDK_KEY_Tslash // 940

public let KEY_U = GDK_KEY_U // 85

public let KEY_UWB = GDK_KEY_UWB // 269025174

public let KEY_Uacute = GDK_KEY_Uacute // 218

public let KEY_Ubelowdot = GDK_KEY_Ubelowdot // 16785124

public let KEY_Ubreve = GDK_KEY_Ubreve // 733

public let KEY_Ucircumflex = GDK_KEY_Ucircumflex // 219

public let KEY_Udiaeresis = GDK_KEY_Udiaeresis // 220

public let KEY_Udoubleacute = GDK_KEY_Udoubleacute // 475

public let KEY_Ugrave = GDK_KEY_Ugrave // 217

public let KEY_Uhook = GDK_KEY_Uhook // 16785126

public let KEY_Uhorn = GDK_KEY_Uhorn // 16777647

public let KEY_Uhornacute = GDK_KEY_Uhornacute // 16785128

public let KEY_Uhornbelowdot = GDK_KEY_Uhornbelowdot // 16785136

public let KEY_Uhorngrave = GDK_KEY_Uhorngrave // 16785130

public let KEY_Uhornhook = GDK_KEY_Uhornhook // 16785132

public let KEY_Uhorntilde = GDK_KEY_Uhorntilde // 16785134

public let KEY_Ukrainian_GHE_WITH_UPTURN = GDK_KEY_Ukrainian_GHE_WITH_UPTURN // 1725

public let KEY_Ukrainian_I = GDK_KEY_Ukrainian_I // 1718

public let KEY_Ukrainian_IE = GDK_KEY_Ukrainian_IE // 1716

public let KEY_Ukrainian_YI = GDK_KEY_Ukrainian_YI // 1719

public let KEY_Ukrainian_ghe_with_upturn = GDK_KEY_Ukrainian_ghe_with_upturn // 1709

public let KEY_Ukrainian_i = GDK_KEY_Ukrainian_i // 1702

public let KEY_Ukrainian_ie = GDK_KEY_Ukrainian_ie // 1700

public let KEY_Ukrainian_yi = GDK_KEY_Ukrainian_yi // 1703

public let KEY_Ukranian_I = GDK_KEY_Ukranian_I // 1718

public let KEY_Ukranian_JE = GDK_KEY_Ukranian_JE // 1716

public let KEY_Ukranian_YI = GDK_KEY_Ukranian_YI // 1719

public let KEY_Ukranian_i = GDK_KEY_Ukranian_i // 1702

public let KEY_Ukranian_je = GDK_KEY_Ukranian_je // 1700

public let KEY_Ukranian_yi = GDK_KEY_Ukranian_yi // 1703

public let KEY_Umacron = GDK_KEY_Umacron // 990

public let KEY_Undo = GDK_KEY_Undo // 65381

public let KEY_Ungrab = GDK_KEY_Ungrab // 269024800

public let KEY_Uogonek = GDK_KEY_Uogonek // 985

public let KEY_Up = GDK_KEY_Up // 65362

public let KEY_Uring = GDK_KEY_Uring // 473

public let KEY_User1KB = GDK_KEY_User1KB // 269025157

public let KEY_User2KB = GDK_KEY_User2KB // 269025158

public let KEY_UserPB = GDK_KEY_UserPB // 269025156

public let KEY_Utilde = GDK_KEY_Utilde // 989

public let KEY_V = GDK_KEY_V // 86

public let KEY_VendorHome = GDK_KEY_VendorHome // 269025076

public let KEY_Video = GDK_KEY_Video // 269025159

public let KEY_View = GDK_KEY_View // 269025185

public let KEY_VoidSymbol = GDK_KEY_VoidSymbol // 16777215

public let KEY_W = GDK_KEY_W // 87

public let KEY_WLAN = GDK_KEY_WLAN // 269025173

public let KEY_WWAN = GDK_KEY_WWAN // 269025204

public let KEY_WWW = GDK_KEY_WWW // 269025070

public let KEY_Wacute = GDK_KEY_Wacute // 16785026

public let KEY_WakeUp = GDK_KEY_WakeUp // 269025067

public let KEY_Wcircumflex = GDK_KEY_Wcircumflex // 16777588

public let KEY_Wdiaeresis = GDK_KEY_Wdiaeresis // 16785028

public let KEY_WebCam = GDK_KEY_WebCam // 269025167

public let KEY_Wgrave = GDK_KEY_Wgrave // 16785024

public let KEY_WheelButton = GDK_KEY_WheelButton // 269025160

public let KEY_WindowClear = GDK_KEY_WindowClear // 269025109

public let KEY_WonSign = GDK_KEY_WonSign // 16785577

public let KEY_Word = GDK_KEY_Word // 269025161

public let KEY_X = GDK_KEY_X // 88

public let KEY_Xabovedot = GDK_KEY_Xabovedot // 16785034

public let KEY_Xfer = GDK_KEY_Xfer // 269025162

public let KEY_Y = GDK_KEY_Y // 89

public let KEY_Yacute = GDK_KEY_Yacute // 221

public let KEY_Ybelowdot = GDK_KEY_Ybelowdot // 16785140

public let KEY_Ycircumflex = GDK_KEY_Ycircumflex // 16777590

public let KEY_Ydiaeresis = GDK_KEY_Ydiaeresis // 5054

public let KEY_Yellow = GDK_KEY_Yellow // 269025189

public let KEY_Ygrave = GDK_KEY_Ygrave // 16785138

public let KEY_Yhook = GDK_KEY_Yhook // 16785142

public let KEY_Ytilde = GDK_KEY_Ytilde // 16785144

public let KEY_Z = GDK_KEY_Z // 90

public let KEY_Zabovedot = GDK_KEY_Zabovedot // 431

public let KEY_Zacute = GDK_KEY_Zacute // 428

public let KEY_Zcaron = GDK_KEY_Zcaron // 430

public let KEY_Zen_Koho = GDK_KEY_Zen_Koho // 65341

public let KEY_Zenkaku = GDK_KEY_Zenkaku // 65320

public let KEY_Zenkaku_Hankaku = GDK_KEY_Zenkaku_Hankaku // 65322

public let KEY_ZoomIn = GDK_KEY_ZoomIn // 269025163

public let KEY_ZoomOut = GDK_KEY_ZoomOut // 269025164

public let KEY_Zstroke = GDK_KEY_Zstroke // 16777653

public let KEY_a = GDK_KEY_a // 97

public let KEY_aacute = GDK_KEY_aacute // 225

public let KEY_abelowdot = GDK_KEY_abelowdot // 16785057

public let KEY_abovedot = GDK_KEY_abovedot // 511

public let KEY_abreve = GDK_KEY_abreve // 483

public let KEY_abreveacute = GDK_KEY_abreveacute // 16785071

public let KEY_abrevebelowdot = GDK_KEY_abrevebelowdot // 16785079

public let KEY_abrevegrave = GDK_KEY_abrevegrave // 16785073

public let KEY_abrevehook = GDK_KEY_abrevehook // 16785075

public let KEY_abrevetilde = GDK_KEY_abrevetilde // 16785077

public let KEY_acircumflex = GDK_KEY_acircumflex // 226

public let KEY_acircumflexacute = GDK_KEY_acircumflexacute // 16785061

public let KEY_acircumflexbelowdot = GDK_KEY_acircumflexbelowdot // 16785069

public let KEY_acircumflexgrave = GDK_KEY_acircumflexgrave // 16785063

public let KEY_acircumflexhook = GDK_KEY_acircumflexhook // 16785065

public let KEY_acircumflextilde = GDK_KEY_acircumflextilde // 16785067

public let KEY_acute = GDK_KEY_acute // 180

public let KEY_adiaeresis = GDK_KEY_adiaeresis // 228

public let KEY_ae = GDK_KEY_ae // 230

public let KEY_agrave = GDK_KEY_agrave // 224

public let KEY_ahook = GDK_KEY_ahook // 16785059

public let KEY_amacron = GDK_KEY_amacron // 992

public let KEY_ampersand = GDK_KEY_ampersand // 38

public let KEY_aogonek = GDK_KEY_aogonek // 433

public let KEY_apostrophe = GDK_KEY_apostrophe // 39

public let KEY_approxeq = GDK_KEY_approxeq // 16785992

public let KEY_approximate = GDK_KEY_approximate // 2248

public let KEY_aring = GDK_KEY_aring // 229

public let KEY_asciicircum = GDK_KEY_asciicircum // 94

public let KEY_asciitilde = GDK_KEY_asciitilde // 126

public let KEY_asterisk = GDK_KEY_asterisk // 42

public let KEY_at = GDK_KEY_at // 64

public let KEY_atilde = GDK_KEY_atilde // 227

public let KEY_b = GDK_KEY_b // 98

public let KEY_babovedot = GDK_KEY_babovedot // 16784899

public let KEY_backslash = GDK_KEY_backslash // 92

public let KEY_ballotcross = GDK_KEY_ballotcross // 2804

public let KEY_bar = GDK_KEY_bar // 124

public let KEY_because = GDK_KEY_because // 16785973

public let KEY_blank = GDK_KEY_blank // 2527

public let KEY_botintegral = GDK_KEY_botintegral // 2213

public let KEY_botleftparens = GDK_KEY_botleftparens // 2220

public let KEY_botleftsqbracket = GDK_KEY_botleftsqbracket // 2216

public let KEY_botleftsummation = GDK_KEY_botleftsummation // 2226

public let KEY_botrightparens = GDK_KEY_botrightparens // 2222

public let KEY_botrightsqbracket = GDK_KEY_botrightsqbracket // 2218

public let KEY_botrightsummation = GDK_KEY_botrightsummation // 2230

public let KEY_bott = GDK_KEY_bott // 2550

public let KEY_botvertsummationconnector = GDK_KEY_botvertsummationconnector // 2228

public let KEY_braceleft = GDK_KEY_braceleft // 123

public let KEY_braceright = GDK_KEY_braceright // 125

public let KEY_bracketleft = GDK_KEY_bracketleft // 91

public let KEY_bracketright = GDK_KEY_bracketright // 93

public let KEY_braille_blank = GDK_KEY_braille_blank // 16787456

public let KEY_braille_dot_1 = GDK_KEY_braille_dot_1 // 65521

public let KEY_braille_dot_10 = GDK_KEY_braille_dot_10 // 65530

public let KEY_braille_dot_2 = GDK_KEY_braille_dot_2 // 65522

public let KEY_braille_dot_3 = GDK_KEY_braille_dot_3 // 65523

public let KEY_braille_dot_4 = GDK_KEY_braille_dot_4 // 65524

public let KEY_braille_dot_5 = GDK_KEY_braille_dot_5 // 65525

public let KEY_braille_dot_6 = GDK_KEY_braille_dot_6 // 65526

public let KEY_braille_dot_7 = GDK_KEY_braille_dot_7 // 65527

public let KEY_braille_dot_8 = GDK_KEY_braille_dot_8 // 65528

public let KEY_braille_dot_9 = GDK_KEY_braille_dot_9 // 65529

public let KEY_braille_dots_1 = GDK_KEY_braille_dots_1 // 16787457

public let KEY_braille_dots_12 = GDK_KEY_braille_dots_12 // 16787459

public let KEY_braille_dots_123 = GDK_KEY_braille_dots_123 // 16787463

public let KEY_braille_dots_1234 = GDK_KEY_braille_dots_1234 // 16787471

public let KEY_braille_dots_12345 = GDK_KEY_braille_dots_12345 // 16787487

public let KEY_braille_dots_123456 = GDK_KEY_braille_dots_123456 // 16787519

public let KEY_braille_dots_1234567 = GDK_KEY_braille_dots_1234567 // 16787583

public let KEY_braille_dots_12345678 = GDK_KEY_braille_dots_12345678 // 16787711

public let KEY_braille_dots_1234568 = GDK_KEY_braille_dots_1234568 // 16787647

public let KEY_braille_dots_123457 = GDK_KEY_braille_dots_123457 // 16787551

public let KEY_braille_dots_1234578 = GDK_KEY_braille_dots_1234578 // 16787679

public let KEY_braille_dots_123458 = GDK_KEY_braille_dots_123458 // 16787615

public let KEY_braille_dots_12346 = GDK_KEY_braille_dots_12346 // 16787503

public let KEY_braille_dots_123467 = GDK_KEY_braille_dots_123467 // 16787567

public let KEY_braille_dots_1234678 = GDK_KEY_braille_dots_1234678 // 16787695

public let KEY_braille_dots_123468 = GDK_KEY_braille_dots_123468 // 16787631

public let KEY_braille_dots_12347 = GDK_KEY_braille_dots_12347 // 16787535

public let KEY_braille_dots_123478 = GDK_KEY_braille_dots_123478 // 16787663

public let KEY_braille_dots_12348 = GDK_KEY_braille_dots_12348 // 16787599

public let KEY_braille_dots_1235 = GDK_KEY_braille_dots_1235 // 16787479

public let KEY_braille_dots_12356 = GDK_KEY_braille_dots_12356 // 16787511

public let KEY_braille_dots_123567 = GDK_KEY_braille_dots_123567 // 16787575

public let KEY_braille_dots_1235678 = GDK_KEY_braille_dots_1235678 // 16787703

public let KEY_braille_dots_123568 = GDK_KEY_braille_dots_123568 // 16787639

public let KEY_braille_dots_12357 = GDK_KEY_braille_dots_12357 // 16787543

public let KEY_braille_dots_123578 = GDK_KEY_braille_dots_123578 // 16787671

public let KEY_braille_dots_12358 = GDK_KEY_braille_dots_12358 // 16787607

public let KEY_braille_dots_1236 = GDK_KEY_braille_dots_1236 // 16787495

public let KEY_braille_dots_12367 = GDK_KEY_braille_dots_12367 // 16787559

public let KEY_braille_dots_123678 = GDK_KEY_braille_dots_123678 // 16787687

public let KEY_braille_dots_12368 = GDK_KEY_braille_dots_12368 // 16787623

public let KEY_braille_dots_1237 = GDK_KEY_braille_dots_1237 // 16787527

public let KEY_braille_dots_12378 = GDK_KEY_braille_dots_12378 // 16787655

public let KEY_braille_dots_1238 = GDK_KEY_braille_dots_1238 // 16787591

public let KEY_braille_dots_124 = GDK_KEY_braille_dots_124 // 16787467

public let KEY_braille_dots_1245 = GDK_KEY_braille_dots_1245 // 16787483

public let KEY_braille_dots_12456 = GDK_KEY_braille_dots_12456 // 16787515

public let KEY_braille_dots_124567 = GDK_KEY_braille_dots_124567 // 16787579

public let KEY_braille_dots_1245678 = GDK_KEY_braille_dots_1245678 // 16787707

public let KEY_braille_dots_124568 = GDK_KEY_braille_dots_124568 // 16787643

public let KEY_braille_dots_12457 = GDK_KEY_braille_dots_12457 // 16787547

public let KEY_braille_dots_124578 = GDK_KEY_braille_dots_124578 // 16787675

public let KEY_braille_dots_12458 = GDK_KEY_braille_dots_12458 // 16787611

public let KEY_braille_dots_1246 = GDK_KEY_braille_dots_1246 // 16787499

public let KEY_braille_dots_12467 = GDK_KEY_braille_dots_12467 // 16787563

public let KEY_braille_dots_124678 = GDK_KEY_braille_dots_124678 // 16787691

public let KEY_braille_dots_12468 = GDK_KEY_braille_dots_12468 // 16787627

public let KEY_braille_dots_1247 = GDK_KEY_braille_dots_1247 // 16787531

public let KEY_braille_dots_12478 = GDK_KEY_braille_dots_12478 // 16787659

public let KEY_braille_dots_1248 = GDK_KEY_braille_dots_1248 // 16787595

public let KEY_braille_dots_125 = GDK_KEY_braille_dots_125 // 16787475

public let KEY_braille_dots_1256 = GDK_KEY_braille_dots_1256 // 16787507

public let KEY_braille_dots_12567 = GDK_KEY_braille_dots_12567 // 16787571

public let KEY_braille_dots_125678 = GDK_KEY_braille_dots_125678 // 16787699

public let KEY_braille_dots_12568 = GDK_KEY_braille_dots_12568 // 16787635

public let KEY_braille_dots_1257 = GDK_KEY_braille_dots_1257 // 16787539

public let KEY_braille_dots_12578 = GDK_KEY_braille_dots_12578 // 16787667

public let KEY_braille_dots_1258 = GDK_KEY_braille_dots_1258 // 16787603

public let KEY_braille_dots_126 = GDK_KEY_braille_dots_126 // 16787491

public let KEY_braille_dots_1267 = GDK_KEY_braille_dots_1267 // 16787555

public let KEY_braille_dots_12678 = GDK_KEY_braille_dots_12678 // 16787683

public let KEY_braille_dots_1268 = GDK_KEY_braille_dots_1268 // 16787619

public let KEY_braille_dots_127 = GDK_KEY_braille_dots_127 // 16787523

public let KEY_braille_dots_1278 = GDK_KEY_braille_dots_1278 // 16787651

public let KEY_braille_dots_128 = GDK_KEY_braille_dots_128 // 16787587

public let KEY_braille_dots_13 = GDK_KEY_braille_dots_13 // 16787461

public let KEY_braille_dots_134 = GDK_KEY_braille_dots_134 // 16787469

public let KEY_braille_dots_1345 = GDK_KEY_braille_dots_1345 // 16787485

public let KEY_braille_dots_13456 = GDK_KEY_braille_dots_13456 // 16787517

public let KEY_braille_dots_134567 = GDK_KEY_braille_dots_134567 // 16787581

public let KEY_braille_dots_1345678 = GDK_KEY_braille_dots_1345678 // 16787709

public let KEY_braille_dots_134568 = GDK_KEY_braille_dots_134568 // 16787645

public let KEY_braille_dots_13457 = GDK_KEY_braille_dots_13457 // 16787549

public let KEY_braille_dots_134578 = GDK_KEY_braille_dots_134578 // 16787677

public let KEY_braille_dots_13458 = GDK_KEY_braille_dots_13458 // 16787613

public let KEY_braille_dots_1346 = GDK_KEY_braille_dots_1346 // 16787501

public let KEY_braille_dots_13467 = GDK_KEY_braille_dots_13467 // 16787565

public let KEY_braille_dots_134678 = GDK_KEY_braille_dots_134678 // 16787693

public let KEY_braille_dots_13468 = GDK_KEY_braille_dots_13468 // 16787629

public let KEY_braille_dots_1347 = GDK_KEY_braille_dots_1347 // 16787533

public let KEY_braille_dots_13478 = GDK_KEY_braille_dots_13478 // 16787661

public let KEY_braille_dots_1348 = GDK_KEY_braille_dots_1348 // 16787597

public let KEY_braille_dots_135 = GDK_KEY_braille_dots_135 // 16787477

public let KEY_braille_dots_1356 = GDK_KEY_braille_dots_1356 // 16787509

public let KEY_braille_dots_13567 = GDK_KEY_braille_dots_13567 // 16787573

public let KEY_braille_dots_135678 = GDK_KEY_braille_dots_135678 // 16787701

public let KEY_braille_dots_13568 = GDK_KEY_braille_dots_13568 // 16787637

public let KEY_braille_dots_1357 = GDK_KEY_braille_dots_1357 // 16787541

public let KEY_braille_dots_13578 = GDK_KEY_braille_dots_13578 // 16787669

public let KEY_braille_dots_1358 = GDK_KEY_braille_dots_1358 // 16787605

public let KEY_braille_dots_136 = GDK_KEY_braille_dots_136 // 16787493

public let KEY_braille_dots_1367 = GDK_KEY_braille_dots_1367 // 16787557

public let KEY_braille_dots_13678 = GDK_KEY_braille_dots_13678 // 16787685

public let KEY_braille_dots_1368 = GDK_KEY_braille_dots_1368 // 16787621

public let KEY_braille_dots_137 = GDK_KEY_braille_dots_137 // 16787525

public let KEY_braille_dots_1378 = GDK_KEY_braille_dots_1378 // 16787653

public let KEY_braille_dots_138 = GDK_KEY_braille_dots_138 // 16787589

public let KEY_braille_dots_14 = GDK_KEY_braille_dots_14 // 16787465

public let KEY_braille_dots_145 = GDK_KEY_braille_dots_145 // 16787481

public let KEY_braille_dots_1456 = GDK_KEY_braille_dots_1456 // 16787513

public let KEY_braille_dots_14567 = GDK_KEY_braille_dots_14567 // 16787577

public let KEY_braille_dots_145678 = GDK_KEY_braille_dots_145678 // 16787705

public let KEY_braille_dots_14568 = GDK_KEY_braille_dots_14568 // 16787641

public let KEY_braille_dots_1457 = GDK_KEY_braille_dots_1457 // 16787545

public let KEY_braille_dots_14578 = GDK_KEY_braille_dots_14578 // 16787673

public let KEY_braille_dots_1458 = GDK_KEY_braille_dots_1458 // 16787609

public let KEY_braille_dots_146 = GDK_KEY_braille_dots_146 // 16787497

public let KEY_braille_dots_1467 = GDK_KEY_braille_dots_1467 // 16787561

public let KEY_braille_dots_14678 = GDK_KEY_braille_dots_14678 // 16787689

public let KEY_braille_dots_1468 = GDK_KEY_braille_dots_1468 // 16787625

public let KEY_braille_dots_147 = GDK_KEY_braille_dots_147 // 16787529

public let KEY_braille_dots_1478 = GDK_KEY_braille_dots_1478 // 16787657

public let KEY_braille_dots_148 = GDK_KEY_braille_dots_148 // 16787593

public let KEY_braille_dots_15 = GDK_KEY_braille_dots_15 // 16787473

public let KEY_braille_dots_156 = GDK_KEY_braille_dots_156 // 16787505

public let KEY_braille_dots_1567 = GDK_KEY_braille_dots_1567 // 16787569

public let KEY_braille_dots_15678 = GDK_KEY_braille_dots_15678 // 16787697

public let KEY_braille_dots_1568 = GDK_KEY_braille_dots_1568 // 16787633

public let KEY_braille_dots_157 = GDK_KEY_braille_dots_157 // 16787537

public let KEY_braille_dots_1578 = GDK_KEY_braille_dots_1578 // 16787665

public let KEY_braille_dots_158 = GDK_KEY_braille_dots_158 // 16787601

public let KEY_braille_dots_16 = GDK_KEY_braille_dots_16 // 16787489

public let KEY_braille_dots_167 = GDK_KEY_braille_dots_167 // 16787553

public let KEY_braille_dots_1678 = GDK_KEY_braille_dots_1678 // 16787681

public let KEY_braille_dots_168 = GDK_KEY_braille_dots_168 // 16787617

public let KEY_braille_dots_17 = GDK_KEY_braille_dots_17 // 16787521

public let KEY_braille_dots_178 = GDK_KEY_braille_dots_178 // 16787649

public let KEY_braille_dots_18 = GDK_KEY_braille_dots_18 // 16787585

public let KEY_braille_dots_2 = GDK_KEY_braille_dots_2 // 16787458

public let KEY_braille_dots_23 = GDK_KEY_braille_dots_23 // 16787462

public let KEY_braille_dots_234 = GDK_KEY_braille_dots_234 // 16787470

public let KEY_braille_dots_2345 = GDK_KEY_braille_dots_2345 // 16787486

public let KEY_braille_dots_23456 = GDK_KEY_braille_dots_23456 // 16787518

public let KEY_braille_dots_234567 = GDK_KEY_braille_dots_234567 // 16787582

public let KEY_braille_dots_2345678 = GDK_KEY_braille_dots_2345678 // 16787710

public let KEY_braille_dots_234568 = GDK_KEY_braille_dots_234568 // 16787646

public let KEY_braille_dots_23457 = GDK_KEY_braille_dots_23457 // 16787550

public let KEY_braille_dots_234578 = GDK_KEY_braille_dots_234578 // 16787678

public let KEY_braille_dots_23458 = GDK_KEY_braille_dots_23458 // 16787614

public let KEY_braille_dots_2346 = GDK_KEY_braille_dots_2346 // 16787502

public let KEY_braille_dots_23467 = GDK_KEY_braille_dots_23467 // 16787566

public let KEY_braille_dots_234678 = GDK_KEY_braille_dots_234678 // 16787694

public let KEY_braille_dots_23468 = GDK_KEY_braille_dots_23468 // 16787630

public let KEY_braille_dots_2347 = GDK_KEY_braille_dots_2347 // 16787534

public let KEY_braille_dots_23478 = GDK_KEY_braille_dots_23478 // 16787662

public let KEY_braille_dots_2348 = GDK_KEY_braille_dots_2348 // 16787598

public let KEY_braille_dots_235 = GDK_KEY_braille_dots_235 // 16787478

public let KEY_braille_dots_2356 = GDK_KEY_braille_dots_2356 // 16787510

public let KEY_braille_dots_23567 = GDK_KEY_braille_dots_23567 // 16787574

public let KEY_braille_dots_235678 = GDK_KEY_braille_dots_235678 // 16787702

public let KEY_braille_dots_23568 = GDK_KEY_braille_dots_23568 // 16787638

public let KEY_braille_dots_2357 = GDK_KEY_braille_dots_2357 // 16787542

public let KEY_braille_dots_23578 = GDK_KEY_braille_dots_23578 // 16787670

public let KEY_braille_dots_2358 = GDK_KEY_braille_dots_2358 // 16787606

public let KEY_braille_dots_236 = GDK_KEY_braille_dots_236 // 16787494

public let KEY_braille_dots_2367 = GDK_KEY_braille_dots_2367 // 16787558

public let KEY_braille_dots_23678 = GDK_KEY_braille_dots_23678 // 16787686

public let KEY_braille_dots_2368 = GDK_KEY_braille_dots_2368 // 16787622

public let KEY_braille_dots_237 = GDK_KEY_braille_dots_237 // 16787526

public let KEY_braille_dots_2378 = GDK_KEY_braille_dots_2378 // 16787654

public let KEY_braille_dots_238 = GDK_KEY_braille_dots_238 // 16787590

public let KEY_braille_dots_24 = GDK_KEY_braille_dots_24 // 16787466

public let KEY_braille_dots_245 = GDK_KEY_braille_dots_245 // 16787482

public let KEY_braille_dots_2456 = GDK_KEY_braille_dots_2456 // 16787514

public let KEY_braille_dots_24567 = GDK_KEY_braille_dots_24567 // 16787578

public let KEY_braille_dots_245678 = GDK_KEY_braille_dots_245678 // 16787706

public let KEY_braille_dots_24568 = GDK_KEY_braille_dots_24568 // 16787642

public let KEY_braille_dots_2457 = GDK_KEY_braille_dots_2457 // 16787546

public let KEY_braille_dots_24578 = GDK_KEY_braille_dots_24578 // 16787674

public let KEY_braille_dots_2458 = GDK_KEY_braille_dots_2458 // 16787610

public let KEY_braille_dots_246 = GDK_KEY_braille_dots_246 // 16787498

public let KEY_braille_dots_2467 = GDK_KEY_braille_dots_2467 // 16787562

public let KEY_braille_dots_24678 = GDK_KEY_braille_dots_24678 // 16787690

public let KEY_braille_dots_2468 = GDK_KEY_braille_dots_2468 // 16787626

public let KEY_braille_dots_247 = GDK_KEY_braille_dots_247 // 16787530

public let KEY_braille_dots_2478 = GDK_KEY_braille_dots_2478 // 16787658

public let KEY_braille_dots_248 = GDK_KEY_braille_dots_248 // 16787594

public let KEY_braille_dots_25 = GDK_KEY_braille_dots_25 // 16787474

public let KEY_braille_dots_256 = GDK_KEY_braille_dots_256 // 16787506

public let KEY_braille_dots_2567 = GDK_KEY_braille_dots_2567 // 16787570

public let KEY_braille_dots_25678 = GDK_KEY_braille_dots_25678 // 16787698

public let KEY_braille_dots_2568 = GDK_KEY_braille_dots_2568 // 16787634

public let KEY_braille_dots_257 = GDK_KEY_braille_dots_257 // 16787538

public let KEY_braille_dots_2578 = GDK_KEY_braille_dots_2578 // 16787666

public let KEY_braille_dots_258 = GDK_KEY_braille_dots_258 // 16787602

public let KEY_braille_dots_26 = GDK_KEY_braille_dots_26 // 16787490

public let KEY_braille_dots_267 = GDK_KEY_braille_dots_267 // 16787554

public let KEY_braille_dots_2678 = GDK_KEY_braille_dots_2678 // 16787682

public let KEY_braille_dots_268 = GDK_KEY_braille_dots_268 // 16787618

public let KEY_braille_dots_27 = GDK_KEY_braille_dots_27 // 16787522

public let KEY_braille_dots_278 = GDK_KEY_braille_dots_278 // 16787650

public let KEY_braille_dots_28 = GDK_KEY_braille_dots_28 // 16787586

public let KEY_braille_dots_3 = GDK_KEY_braille_dots_3 // 16787460

public let KEY_braille_dots_34 = GDK_KEY_braille_dots_34 // 16787468

public let KEY_braille_dots_345 = GDK_KEY_braille_dots_345 // 16787484

public let KEY_braille_dots_3456 = GDK_KEY_braille_dots_3456 // 16787516

public let KEY_braille_dots_34567 = GDK_KEY_braille_dots_34567 // 16787580

public let KEY_braille_dots_345678 = GDK_KEY_braille_dots_345678 // 16787708

public let KEY_braille_dots_34568 = GDK_KEY_braille_dots_34568 // 16787644

public let KEY_braille_dots_3457 = GDK_KEY_braille_dots_3457 // 16787548

public let KEY_braille_dots_34578 = GDK_KEY_braille_dots_34578 // 16787676

public let KEY_braille_dots_3458 = GDK_KEY_braille_dots_3458 // 16787612

public let KEY_braille_dots_346 = GDK_KEY_braille_dots_346 // 16787500

public let KEY_braille_dots_3467 = GDK_KEY_braille_dots_3467 // 16787564

public let KEY_braille_dots_34678 = GDK_KEY_braille_dots_34678 // 16787692

public let KEY_braille_dots_3468 = GDK_KEY_braille_dots_3468 // 16787628

public let KEY_braille_dots_347 = GDK_KEY_braille_dots_347 // 16787532

public let KEY_braille_dots_3478 = GDK_KEY_braille_dots_3478 // 16787660

public let KEY_braille_dots_348 = GDK_KEY_braille_dots_348 // 16787596

public let KEY_braille_dots_35 = GDK_KEY_braille_dots_35 // 16787476

public let KEY_braille_dots_356 = GDK_KEY_braille_dots_356 // 16787508

public let KEY_braille_dots_3567 = GDK_KEY_braille_dots_3567 // 16787572

public let KEY_braille_dots_35678 = GDK_KEY_braille_dots_35678 // 16787700

public let KEY_braille_dots_3568 = GDK_KEY_braille_dots_3568 // 16787636

public let KEY_braille_dots_357 = GDK_KEY_braille_dots_357 // 16787540

public let KEY_braille_dots_3578 = GDK_KEY_braille_dots_3578 // 16787668

public let KEY_braille_dots_358 = GDK_KEY_braille_dots_358 // 16787604

public let KEY_braille_dots_36 = GDK_KEY_braille_dots_36 // 16787492

public let KEY_braille_dots_367 = GDK_KEY_braille_dots_367 // 16787556

public let KEY_braille_dots_3678 = GDK_KEY_braille_dots_3678 // 16787684

public let KEY_braille_dots_368 = GDK_KEY_braille_dots_368 // 16787620

public let KEY_braille_dots_37 = GDK_KEY_braille_dots_37 // 16787524

public let KEY_braille_dots_378 = GDK_KEY_braille_dots_378 // 16787652

public let KEY_braille_dots_38 = GDK_KEY_braille_dots_38 // 16787588

public let KEY_braille_dots_4 = GDK_KEY_braille_dots_4 // 16787464

public let KEY_braille_dots_45 = GDK_KEY_braille_dots_45 // 16787480

public let KEY_braille_dots_456 = GDK_KEY_braille_dots_456 // 16787512

public let KEY_braille_dots_4567 = GDK_KEY_braille_dots_4567 // 16787576

public let KEY_braille_dots_45678 = GDK_KEY_braille_dots_45678 // 16787704

public let KEY_braille_dots_4568 = GDK_KEY_braille_dots_4568 // 16787640

public let KEY_braille_dots_457 = GDK_KEY_braille_dots_457 // 16787544

public let KEY_braille_dots_4578 = GDK_KEY_braille_dots_4578 // 16787672

public let KEY_braille_dots_458 = GDK_KEY_braille_dots_458 // 16787608

public let KEY_braille_dots_46 = GDK_KEY_braille_dots_46 // 16787496

public let KEY_braille_dots_467 = GDK_KEY_braille_dots_467 // 16787560

public let KEY_braille_dots_4678 = GDK_KEY_braille_dots_4678 // 16787688

public let KEY_braille_dots_468 = GDK_KEY_braille_dots_468 // 16787624

public let KEY_braille_dots_47 = GDK_KEY_braille_dots_47 // 16787528

public let KEY_braille_dots_478 = GDK_KEY_braille_dots_478 // 16787656

public let KEY_braille_dots_48 = GDK_KEY_braille_dots_48 // 16787592

public let KEY_braille_dots_5 = GDK_KEY_braille_dots_5 // 16787472

public let KEY_braille_dots_56 = GDK_KEY_braille_dots_56 // 16787504

public let KEY_braille_dots_567 = GDK_KEY_braille_dots_567 // 16787568

public let KEY_braille_dots_5678 = GDK_KEY_braille_dots_5678 // 16787696

public let KEY_braille_dots_568 = GDK_KEY_braille_dots_568 // 16787632

public let KEY_braille_dots_57 = GDK_KEY_braille_dots_57 // 16787536

public let KEY_braille_dots_578 = GDK_KEY_braille_dots_578 // 16787664

public let KEY_braille_dots_58 = GDK_KEY_braille_dots_58 // 16787600

public let KEY_braille_dots_6 = GDK_KEY_braille_dots_6 // 16787488

public let KEY_braille_dots_67 = GDK_KEY_braille_dots_67 // 16787552

public let KEY_braille_dots_678 = GDK_KEY_braille_dots_678 // 16787680

public let KEY_braille_dots_68 = GDK_KEY_braille_dots_68 // 16787616

public let KEY_braille_dots_7 = GDK_KEY_braille_dots_7 // 16787520

public let KEY_braille_dots_78 = GDK_KEY_braille_dots_78 // 16787648

public let KEY_braille_dots_8 = GDK_KEY_braille_dots_8 // 16787584

public let KEY_breve = GDK_KEY_breve // 418

public let KEY_brokenbar = GDK_KEY_brokenbar // 166

public let KEY_c = GDK_KEY_c // 99

public let KEY_c_h = GDK_KEY_c_h // 65187

public let KEY_cabovedot = GDK_KEY_cabovedot // 741

public let KEY_cacute = GDK_KEY_cacute // 486

public let KEY_careof = GDK_KEY_careof // 2744

public let KEY_caret = GDK_KEY_caret // 2812

public let KEY_caron = GDK_KEY_caron // 439

public let KEY_ccaron = GDK_KEY_ccaron // 488

public let KEY_ccedilla = GDK_KEY_ccedilla // 231

public let KEY_ccircumflex = GDK_KEY_ccircumflex // 742

public let KEY_cedilla = GDK_KEY_cedilla // 184

public let KEY_cent = GDK_KEY_cent // 162

public let KEY_ch = GDK_KEY_ch // 65184

public let KEY_checkerboard = GDK_KEY_checkerboard // 2529

public let KEY_checkmark = GDK_KEY_checkmark // 2803

public let KEY_circle = GDK_KEY_circle // 3023

public let KEY_club = GDK_KEY_club // 2796

public let KEY_colon = GDK_KEY_colon // 58

public let KEY_comma = GDK_KEY_comma // 44

public let KEY_containsas = GDK_KEY_containsas // 16785931

public let KEY_copyright = GDK_KEY_copyright // 169

public let KEY_cr = GDK_KEY_cr // 2532

public let KEY_crossinglines = GDK_KEY_crossinglines // 2542

public let KEY_cuberoot = GDK_KEY_cuberoot // 16785947

public let KEY_currency = GDK_KEY_currency // 164

public let KEY_cursor = GDK_KEY_cursor // 2815

public let KEY_d = GDK_KEY_d // 100

public let KEY_dabovedot = GDK_KEY_dabovedot // 16784907

public let KEY_dagger = GDK_KEY_dagger // 2801

public let KEY_dcaron = GDK_KEY_dcaron // 495

public let KEY_dead_A = GDK_KEY_dead_A // 65153

public let KEY_dead_E = GDK_KEY_dead_E // 65155

public let KEY_dead_I = GDK_KEY_dead_I // 65157

public let KEY_dead_O = GDK_KEY_dead_O // 65159

public let KEY_dead_U = GDK_KEY_dead_U // 65161

public let KEY_dead_a = GDK_KEY_dead_a // 65152

public let KEY_dead_abovecomma = GDK_KEY_dead_abovecomma // 65124

public let KEY_dead_abovedot = GDK_KEY_dead_abovedot // 65110

public let KEY_dead_abovereversedcomma = GDK_KEY_dead_abovereversedcomma // 65125

public let KEY_dead_abovering = GDK_KEY_dead_abovering // 65112

public let KEY_dead_aboveverticalline = GDK_KEY_dead_aboveverticalline // 65169

public let KEY_dead_acute = GDK_KEY_dead_acute // 65105

public let KEY_dead_belowbreve = GDK_KEY_dead_belowbreve // 65131

public let KEY_dead_belowcircumflex = GDK_KEY_dead_belowcircumflex // 65129

public let KEY_dead_belowcomma = GDK_KEY_dead_belowcomma // 65134

public let KEY_dead_belowdiaeresis = GDK_KEY_dead_belowdiaeresis // 65132

public let KEY_dead_belowdot = GDK_KEY_dead_belowdot // 65120

public let KEY_dead_belowmacron = GDK_KEY_dead_belowmacron // 65128

public let KEY_dead_belowring = GDK_KEY_dead_belowring // 65127

public let KEY_dead_belowtilde = GDK_KEY_dead_belowtilde // 65130

public let KEY_dead_belowverticalline = GDK_KEY_dead_belowverticalline // 65170

public let KEY_dead_breve = GDK_KEY_dead_breve // 65109

public let KEY_dead_capital_schwa = GDK_KEY_dead_capital_schwa // 65163

public let KEY_dead_caron = GDK_KEY_dead_caron // 65114

public let KEY_dead_cedilla = GDK_KEY_dead_cedilla // 65115

public let KEY_dead_circumflex = GDK_KEY_dead_circumflex // 65106

public let KEY_dead_currency = GDK_KEY_dead_currency // 65135

public let KEY_dead_dasia = GDK_KEY_dead_dasia // 65125

public let KEY_dead_diaeresis = GDK_KEY_dead_diaeresis // 65111

public let KEY_dead_doubleacute = GDK_KEY_dead_doubleacute // 65113

public let KEY_dead_doublegrave = GDK_KEY_dead_doublegrave // 65126

public let KEY_dead_e = GDK_KEY_dead_e // 65154

public let KEY_dead_grave = GDK_KEY_dead_grave // 65104

public let KEY_dead_greek = GDK_KEY_dead_greek // 65164

public let KEY_dead_hook = GDK_KEY_dead_hook // 65121

public let KEY_dead_horn = GDK_KEY_dead_horn // 65122

public let KEY_dead_i = GDK_KEY_dead_i // 65156

public let KEY_dead_invertedbreve = GDK_KEY_dead_invertedbreve // 65133

public let KEY_dead_iota = GDK_KEY_dead_iota // 65117

public let KEY_dead_longsolidusoverlay = GDK_KEY_dead_longsolidusoverlay // 65171

public let KEY_dead_lowline = GDK_KEY_dead_lowline // 65168

public let KEY_dead_macron = GDK_KEY_dead_macron // 65108

public let KEY_dead_o = GDK_KEY_dead_o // 65158

public let KEY_dead_ogonek = GDK_KEY_dead_ogonek // 65116

public let KEY_dead_perispomeni = GDK_KEY_dead_perispomeni // 65107

public let KEY_dead_psili = GDK_KEY_dead_psili // 65124

public let KEY_dead_semivoiced_sound = GDK_KEY_dead_semivoiced_sound // 65119

public let KEY_dead_small_schwa = GDK_KEY_dead_small_schwa // 65162

public let KEY_dead_stroke = GDK_KEY_dead_stroke // 65123

public let KEY_dead_tilde = GDK_KEY_dead_tilde // 65107

public let KEY_dead_u = GDK_KEY_dead_u // 65160

public let KEY_dead_voiced_sound = GDK_KEY_dead_voiced_sound // 65118

public let KEY_decimalpoint = GDK_KEY_decimalpoint // 2749

public let KEY_degree = GDK_KEY_degree // 176

public let KEY_diaeresis = GDK_KEY_diaeresis // 168

public let KEY_diamond = GDK_KEY_diamond // 2797

public let KEY_digitspace = GDK_KEY_digitspace // 2725

public let KEY_dintegral = GDK_KEY_dintegral // 16785964

public let KEY_division = GDK_KEY_division // 247

public let KEY_dollar = GDK_KEY_dollar // 36

public let KEY_doubbaselinedot = GDK_KEY_doubbaselinedot // 2735

public let KEY_doubleacute = GDK_KEY_doubleacute // 445

public let KEY_doubledagger = GDK_KEY_doubledagger // 2802

public let KEY_doublelowquotemark = GDK_KEY_doublelowquotemark // 2814

public let KEY_downarrow = GDK_KEY_downarrow // 2302

public let KEY_downcaret = GDK_KEY_downcaret // 2984

public let KEY_downshoe = GDK_KEY_downshoe // 3030

public let KEY_downstile = GDK_KEY_downstile // 3012

public let KEY_downtack = GDK_KEY_downtack // 3010

public let KEY_dstroke = GDK_KEY_dstroke // 496

public let KEY_e = GDK_KEY_e // 101

public let KEY_eabovedot = GDK_KEY_eabovedot // 1004

public let KEY_eacute = GDK_KEY_eacute // 233

public let KEY_ebelowdot = GDK_KEY_ebelowdot // 16785081

public let KEY_ecaron = GDK_KEY_ecaron // 492

public let KEY_ecircumflex = GDK_KEY_ecircumflex // 234

public let KEY_ecircumflexacute = GDK_KEY_ecircumflexacute // 16785087

public let KEY_ecircumflexbelowdot = GDK_KEY_ecircumflexbelowdot // 16785095

public let KEY_ecircumflexgrave = GDK_KEY_ecircumflexgrave // 16785089

public let KEY_ecircumflexhook = GDK_KEY_ecircumflexhook // 16785091

public let KEY_ecircumflextilde = GDK_KEY_ecircumflextilde // 16785093

public let KEY_ediaeresis = GDK_KEY_ediaeresis // 235

public let KEY_egrave = GDK_KEY_egrave // 232

public let KEY_ehook = GDK_KEY_ehook // 16785083

public let KEY_eightsubscript = GDK_KEY_eightsubscript // 16785544

public let KEY_eightsuperior = GDK_KEY_eightsuperior // 16785528

public let KEY_elementof = GDK_KEY_elementof // 16785928

public let KEY_ellipsis = GDK_KEY_ellipsis // 2734

public let KEY_em3space = GDK_KEY_em3space // 2723

public let KEY_em4space = GDK_KEY_em4space // 2724

public let KEY_emacron = GDK_KEY_emacron // 954

public let KEY_emdash = GDK_KEY_emdash // 2729

public let KEY_emfilledcircle = GDK_KEY_emfilledcircle // 2782

public let KEY_emfilledrect = GDK_KEY_emfilledrect // 2783

public let KEY_emopencircle = GDK_KEY_emopencircle // 2766

public let KEY_emopenrectangle = GDK_KEY_emopenrectangle // 2767

public let KEY_emptyset = GDK_KEY_emptyset // 16785925

public let KEY_emspace = GDK_KEY_emspace // 2721

public let KEY_endash = GDK_KEY_endash // 2730

public let KEY_enfilledcircbullet = GDK_KEY_enfilledcircbullet // 2790

public let KEY_enfilledsqbullet = GDK_KEY_enfilledsqbullet // 2791

public let KEY_eng = GDK_KEY_eng // 959

public let KEY_enopencircbullet = GDK_KEY_enopencircbullet // 2784

public let KEY_enopensquarebullet = GDK_KEY_enopensquarebullet // 2785

public let KEY_enspace = GDK_KEY_enspace // 2722

public let KEY_eogonek = GDK_KEY_eogonek // 490

public let KEY_equal = GDK_KEY_equal // 61

public let KEY_eth = GDK_KEY_eth // 240

public let KEY_etilde = GDK_KEY_etilde // 16785085

public let KEY_exclam = GDK_KEY_exclam // 33

public let KEY_exclamdown = GDK_KEY_exclamdown // 161

public let KEY_ezh = GDK_KEY_ezh // 16777874

public let KEY_f = GDK_KEY_f // 102

public let KEY_fabovedot = GDK_KEY_fabovedot // 16784927

public let KEY_femalesymbol = GDK_KEY_femalesymbol // 2808

public let KEY_ff = GDK_KEY_ff // 2531

public let KEY_figdash = GDK_KEY_figdash // 2747

public let KEY_filledlefttribullet = GDK_KEY_filledlefttribullet // 2780

public let KEY_filledrectbullet = GDK_KEY_filledrectbullet // 2779

public let KEY_filledrighttribullet = GDK_KEY_filledrighttribullet // 2781

public let KEY_filledtribulletdown = GDK_KEY_filledtribulletdown // 2793

public let KEY_filledtribulletup = GDK_KEY_filledtribulletup // 2792

public let KEY_fiveeighths = GDK_KEY_fiveeighths // 2757

public let KEY_fivesixths = GDK_KEY_fivesixths // 2743

public let KEY_fivesubscript = GDK_KEY_fivesubscript // 16785541

public let KEY_fivesuperior = GDK_KEY_fivesuperior // 16785525

public let KEY_fourfifths = GDK_KEY_fourfifths // 2741

public let KEY_foursubscript = GDK_KEY_foursubscript // 16785540

public let KEY_foursuperior = GDK_KEY_foursuperior // 16785524

public let KEY_fourthroot = GDK_KEY_fourthroot // 16785948

public let KEY_function = GDK_KEY_function // 2294

public let KEY_g = GDK_KEY_g // 103

public let KEY_gabovedot = GDK_KEY_gabovedot // 757

public let KEY_gbreve = GDK_KEY_gbreve // 699

public let KEY_gcaron = GDK_KEY_gcaron // 16777703

public let KEY_gcedilla = GDK_KEY_gcedilla // 955

public let KEY_gcircumflex = GDK_KEY_gcircumflex // 760

public let KEY_grave = GDK_KEY_grave // 96

public let KEY_greater = GDK_KEY_greater // 62

public let KEY_greaterthanequal = GDK_KEY_greaterthanequal // 2238

public let KEY_guillemotleft = GDK_KEY_guillemotleft // 171

public let KEY_guillemotright = GDK_KEY_guillemotright // 187

public let KEY_h = GDK_KEY_h // 104

public let KEY_hairspace = GDK_KEY_hairspace // 2728

public let KEY_hcircumflex = GDK_KEY_hcircumflex // 694

public let KEY_heart = GDK_KEY_heart // 2798

public let KEY_hebrew_aleph = GDK_KEY_hebrew_aleph // 3296

public let KEY_hebrew_ayin = GDK_KEY_hebrew_ayin // 3314

public let KEY_hebrew_bet = GDK_KEY_hebrew_bet // 3297

public let KEY_hebrew_beth = GDK_KEY_hebrew_beth // 3297

public let KEY_hebrew_chet = GDK_KEY_hebrew_chet // 3303

public let KEY_hebrew_dalet = GDK_KEY_hebrew_dalet // 3299

public let KEY_hebrew_daleth = GDK_KEY_hebrew_daleth // 3299

public let KEY_hebrew_doublelowline = GDK_KEY_hebrew_doublelowline // 3295

public let KEY_hebrew_finalkaph = GDK_KEY_hebrew_finalkaph // 3306

public let KEY_hebrew_finalmem = GDK_KEY_hebrew_finalmem // 3309

public let KEY_hebrew_finalnun = GDK_KEY_hebrew_finalnun // 3311

public let KEY_hebrew_finalpe = GDK_KEY_hebrew_finalpe // 3315

public let KEY_hebrew_finalzade = GDK_KEY_hebrew_finalzade // 3317

public let KEY_hebrew_finalzadi = GDK_KEY_hebrew_finalzadi // 3317

public let KEY_hebrew_gimel = GDK_KEY_hebrew_gimel // 3298

public let KEY_hebrew_gimmel = GDK_KEY_hebrew_gimmel // 3298

public let KEY_hebrew_he = GDK_KEY_hebrew_he // 3300

public let KEY_hebrew_het = GDK_KEY_hebrew_het // 3303

public let KEY_hebrew_kaph = GDK_KEY_hebrew_kaph // 3307

public let KEY_hebrew_kuf = GDK_KEY_hebrew_kuf // 3319

public let KEY_hebrew_lamed = GDK_KEY_hebrew_lamed // 3308

public let KEY_hebrew_mem = GDK_KEY_hebrew_mem // 3310

public let KEY_hebrew_nun = GDK_KEY_hebrew_nun // 3312

public let KEY_hebrew_pe = GDK_KEY_hebrew_pe // 3316

public let KEY_hebrew_qoph = GDK_KEY_hebrew_qoph // 3319

public let KEY_hebrew_resh = GDK_KEY_hebrew_resh // 3320

public let KEY_hebrew_samech = GDK_KEY_hebrew_samech // 3313

public let KEY_hebrew_samekh = GDK_KEY_hebrew_samekh // 3313

public let KEY_hebrew_shin = GDK_KEY_hebrew_shin // 3321

public let KEY_hebrew_taf = GDK_KEY_hebrew_taf // 3322

public let KEY_hebrew_taw = GDK_KEY_hebrew_taw // 3322

public let KEY_hebrew_tet = GDK_KEY_hebrew_tet // 3304

public let KEY_hebrew_teth = GDK_KEY_hebrew_teth // 3304

public let KEY_hebrew_waw = GDK_KEY_hebrew_waw // 3301

public let KEY_hebrew_yod = GDK_KEY_hebrew_yod // 3305

public let KEY_hebrew_zade = GDK_KEY_hebrew_zade // 3318

public let KEY_hebrew_zadi = GDK_KEY_hebrew_zadi // 3318

public let KEY_hebrew_zain = GDK_KEY_hebrew_zain // 3302

public let KEY_hebrew_zayin = GDK_KEY_hebrew_zayin // 3302

public let KEY_hexagram = GDK_KEY_hexagram // 2778

public let KEY_horizconnector = GDK_KEY_horizconnector // 2211

public let KEY_horizlinescan1 = GDK_KEY_horizlinescan1 // 2543

public let KEY_horizlinescan3 = GDK_KEY_horizlinescan3 // 2544

public let KEY_horizlinescan5 = GDK_KEY_horizlinescan5 // 2545

public let KEY_horizlinescan7 = GDK_KEY_horizlinescan7 // 2546

public let KEY_horizlinescan9 = GDK_KEY_horizlinescan9 // 2547

public let KEY_hstroke = GDK_KEY_hstroke // 689

public let KEY_ht = GDK_KEY_ht // 2530

public let KEY_hyphen = GDK_KEY_hyphen // 173

public let KEY_i = GDK_KEY_i // 105

public let KEY_iTouch = GDK_KEY_iTouch // 269025120

public let KEY_iacute = GDK_KEY_iacute // 237

public let KEY_ibelowdot = GDK_KEY_ibelowdot // 16785099

public let KEY_ibreve = GDK_KEY_ibreve // 16777517

public let KEY_icircumflex = GDK_KEY_icircumflex // 238

public let KEY_identical = GDK_KEY_identical // 2255

public let KEY_idiaeresis = GDK_KEY_idiaeresis // 239

public let KEY_idotless = GDK_KEY_idotless // 697

public let KEY_ifonlyif = GDK_KEY_ifonlyif // 2253

public let KEY_igrave = GDK_KEY_igrave // 236

public let KEY_ihook = GDK_KEY_ihook // 16785097

public let KEY_imacron = GDK_KEY_imacron // 1007

public let KEY_implies = GDK_KEY_implies // 2254

public let KEY_includedin = GDK_KEY_includedin // 2266

public let KEY_includes = GDK_KEY_includes // 2267

public let KEY_infinity = GDK_KEY_infinity // 2242

public let KEY_integral = GDK_KEY_integral // 2239

public let KEY_intersection = GDK_KEY_intersection // 2268

public let KEY_iogonek = GDK_KEY_iogonek // 999

public let KEY_itilde = GDK_KEY_itilde // 949

public let KEY_j = GDK_KEY_j // 106

public let KEY_jcircumflex = GDK_KEY_jcircumflex // 700

public let KEY_jot = GDK_KEY_jot // 3018

public let KEY_k = GDK_KEY_k // 107

public let KEY_kana_A = GDK_KEY_kana_A // 1201

public let KEY_kana_CHI = GDK_KEY_kana_CHI // 1217

public let KEY_kana_E = GDK_KEY_kana_E // 1204

public let KEY_kana_FU = GDK_KEY_kana_FU // 1228

public let KEY_kana_HA = GDK_KEY_kana_HA // 1226

public let KEY_kana_HE = GDK_KEY_kana_HE // 1229

public let KEY_kana_HI = GDK_KEY_kana_HI // 1227

public let KEY_kana_HO = GDK_KEY_kana_HO // 1230

public let KEY_kana_HU = GDK_KEY_kana_HU // 1228

public let KEY_kana_I = GDK_KEY_kana_I // 1202

public let KEY_kana_KA = GDK_KEY_kana_KA // 1206

public let KEY_kana_KE = GDK_KEY_kana_KE // 1209

public let KEY_kana_KI = GDK_KEY_kana_KI // 1207

public let KEY_kana_KO = GDK_KEY_kana_KO // 1210

public let KEY_kana_KU = GDK_KEY_kana_KU // 1208

public let KEY_kana_MA = GDK_KEY_kana_MA // 1231

public let KEY_kana_ME = GDK_KEY_kana_ME // 1234

public let KEY_kana_MI = GDK_KEY_kana_MI // 1232

public let KEY_kana_MO = GDK_KEY_kana_MO // 1235

public let KEY_kana_MU = GDK_KEY_kana_MU // 1233

public let KEY_kana_N = GDK_KEY_kana_N // 1245

public let KEY_kana_NA = GDK_KEY_kana_NA // 1221

public let KEY_kana_NE = GDK_KEY_kana_NE // 1224

public let KEY_kana_NI = GDK_KEY_kana_NI // 1222

public let KEY_kana_NO = GDK_KEY_kana_NO // 1225

public let KEY_kana_NU = GDK_KEY_kana_NU // 1223

public let KEY_kana_O = GDK_KEY_kana_O // 1205

public let KEY_kana_RA = GDK_KEY_kana_RA // 1239

public let KEY_kana_RE = GDK_KEY_kana_RE // 1242

public let KEY_kana_RI = GDK_KEY_kana_RI // 1240

public let KEY_kana_RO = GDK_KEY_kana_RO // 1243

public let KEY_kana_RU = GDK_KEY_kana_RU // 1241

public let KEY_kana_SA = GDK_KEY_kana_SA // 1211

public let KEY_kana_SE = GDK_KEY_kana_SE // 1214

public let KEY_kana_SHI = GDK_KEY_kana_SHI // 1212

public let KEY_kana_SO = GDK_KEY_kana_SO // 1215

public let KEY_kana_SU = GDK_KEY_kana_SU // 1213

public let KEY_kana_TA = GDK_KEY_kana_TA // 1216

public let KEY_kana_TE = GDK_KEY_kana_TE // 1219

public let KEY_kana_TI = GDK_KEY_kana_TI // 1217

public let KEY_kana_TO = GDK_KEY_kana_TO // 1220

public let KEY_kana_TSU = GDK_KEY_kana_TSU // 1218

public let KEY_kana_TU = GDK_KEY_kana_TU // 1218

public let KEY_kana_U = GDK_KEY_kana_U // 1203

public let KEY_kana_WA = GDK_KEY_kana_WA // 1244

public let KEY_kana_WO = GDK_KEY_kana_WO // 1190

public let KEY_kana_YA = GDK_KEY_kana_YA // 1236

public let KEY_kana_YO = GDK_KEY_kana_YO // 1238

public let KEY_kana_YU = GDK_KEY_kana_YU // 1237

public let KEY_kana_a = GDK_KEY_kana_a // 1191

public let KEY_kana_closingbracket = GDK_KEY_kana_closingbracket // 1187

public let KEY_kana_comma = GDK_KEY_kana_comma // 1188

public let KEY_kana_conjunctive = GDK_KEY_kana_conjunctive // 1189

public let KEY_kana_e = GDK_KEY_kana_e // 1194

public let KEY_kana_fullstop = GDK_KEY_kana_fullstop // 1185

public let KEY_kana_i = GDK_KEY_kana_i // 1192

public let KEY_kana_middledot = GDK_KEY_kana_middledot // 1189

public let KEY_kana_o = GDK_KEY_kana_o // 1195

public let KEY_kana_openingbracket = GDK_KEY_kana_openingbracket // 1186

public let KEY_kana_switch = GDK_KEY_kana_switch // 65406

public let KEY_kana_tsu = GDK_KEY_kana_tsu // 1199

public let KEY_kana_tu = GDK_KEY_kana_tu // 1199

public let KEY_kana_u = GDK_KEY_kana_u // 1193

public let KEY_kana_ya = GDK_KEY_kana_ya // 1196

public let KEY_kana_yo = GDK_KEY_kana_yo // 1198

public let KEY_kana_yu = GDK_KEY_kana_yu // 1197

public let KEY_kappa = GDK_KEY_kappa // 930

public let KEY_kcedilla = GDK_KEY_kcedilla // 1011

public let KEY_kra = GDK_KEY_kra // 930

public let KEY_l = GDK_KEY_l // 108

public let KEY_lacute = GDK_KEY_lacute // 485

public let KEY_latincross = GDK_KEY_latincross // 2777

public let KEY_lbelowdot = GDK_KEY_lbelowdot // 16784951

public let KEY_lcaron = GDK_KEY_lcaron // 437

public let KEY_lcedilla = GDK_KEY_lcedilla // 950

public let KEY_leftanglebracket = GDK_KEY_leftanglebracket // 2748

public let KEY_leftarrow = GDK_KEY_leftarrow // 2299

public let KEY_leftcaret = GDK_KEY_leftcaret // 2979

public let KEY_leftdoublequotemark = GDK_KEY_leftdoublequotemark // 2770

public let KEY_leftmiddlecurlybrace = GDK_KEY_leftmiddlecurlybrace // 2223

public let KEY_leftopentriangle = GDK_KEY_leftopentriangle // 2764

public let KEY_leftpointer = GDK_KEY_leftpointer // 2794

public let KEY_leftradical = GDK_KEY_leftradical // 2209

public let KEY_leftshoe = GDK_KEY_leftshoe // 3034

public let KEY_leftsinglequotemark = GDK_KEY_leftsinglequotemark // 2768

public let KEY_leftt = GDK_KEY_leftt // 2548

public let KEY_lefttack = GDK_KEY_lefttack // 3036

public let KEY_less = GDK_KEY_less // 60

public let KEY_lessthanequal = GDK_KEY_lessthanequal // 2236

public let KEY_lf = GDK_KEY_lf // 2533

public let KEY_logicaland = GDK_KEY_logicaland // 2270

public let KEY_logicalor = GDK_KEY_logicalor // 2271

public let KEY_lowleftcorner = GDK_KEY_lowleftcorner // 2541

public let KEY_lowrightcorner = GDK_KEY_lowrightcorner // 2538

public let KEY_lstroke = GDK_KEY_lstroke // 435

public let KEY_m = GDK_KEY_m // 109

public let KEY_mabovedot = GDK_KEY_mabovedot // 16784961

public let KEY_macron = GDK_KEY_macron // 175

public let KEY_malesymbol = GDK_KEY_malesymbol // 2807

public let KEY_maltesecross = GDK_KEY_maltesecross // 2800

public let KEY_marker = GDK_KEY_marker // 2751

public let KEY_masculine = GDK_KEY_masculine // 186

public let KEY_minus = GDK_KEY_minus // 45

public let KEY_minutes = GDK_KEY_minutes // 2774

public let KEY_mu = GDK_KEY_mu // 181

public let KEY_multiply = GDK_KEY_multiply // 215

public let KEY_musicalflat = GDK_KEY_musicalflat // 2806

public let KEY_musicalsharp = GDK_KEY_musicalsharp // 2805

public let KEY_n = GDK_KEY_n // 110

public let KEY_nabla = GDK_KEY_nabla // 2245

public let KEY_nacute = GDK_KEY_nacute // 497

public let KEY_ncaron = GDK_KEY_ncaron // 498

public let KEY_ncedilla = GDK_KEY_ncedilla // 1009

public let KEY_ninesubscript = GDK_KEY_ninesubscript // 16785545

public let KEY_ninesuperior = GDK_KEY_ninesuperior // 16785529

public let KEY_nl = GDK_KEY_nl // 2536

public let KEY_nobreakspace = GDK_KEY_nobreakspace // 160

public let KEY_notapproxeq = GDK_KEY_notapproxeq // 16785991

public let KEY_notelementof = GDK_KEY_notelementof // 16785929

public let KEY_notequal = GDK_KEY_notequal // 2237

public let KEY_notidentical = GDK_KEY_notidentical // 16786018

public let KEY_notsign = GDK_KEY_notsign // 172

public let KEY_ntilde = GDK_KEY_ntilde // 241

public let KEY_numbersign = GDK_KEY_numbersign // 35

public let KEY_numerosign = GDK_KEY_numerosign // 1712

public let KEY_o = GDK_KEY_o // 111

public let KEY_oacute = GDK_KEY_oacute // 243

public let KEY_obarred = GDK_KEY_obarred // 16777845

public let KEY_obelowdot = GDK_KEY_obelowdot // 16785101

public let KEY_ocaron = GDK_KEY_ocaron // 16777682

public let KEY_ocircumflex = GDK_KEY_ocircumflex // 244

public let KEY_ocircumflexacute = GDK_KEY_ocircumflexacute // 16785105

public let KEY_ocircumflexbelowdot = GDK_KEY_ocircumflexbelowdot // 16785113

public let KEY_ocircumflexgrave = GDK_KEY_ocircumflexgrave // 16785107

public let KEY_ocircumflexhook = GDK_KEY_ocircumflexhook // 16785109

public let KEY_ocircumflextilde = GDK_KEY_ocircumflextilde // 16785111

public let KEY_odiaeresis = GDK_KEY_odiaeresis // 246

public let KEY_odoubleacute = GDK_KEY_odoubleacute // 501

public let KEY_oe = GDK_KEY_oe // 5053

public let KEY_ogonek = GDK_KEY_ogonek // 434

public let KEY_ograve = GDK_KEY_ograve // 242

public let KEY_ohook = GDK_KEY_ohook // 16785103

public let KEY_ohorn = GDK_KEY_ohorn // 16777633

public let KEY_ohornacute = GDK_KEY_ohornacute // 16785115

public let KEY_ohornbelowdot = GDK_KEY_ohornbelowdot // 16785123

public let KEY_ohorngrave = GDK_KEY_ohorngrave // 16785117

public let KEY_ohornhook = GDK_KEY_ohornhook // 16785119

public let KEY_ohorntilde = GDK_KEY_ohorntilde // 16785121

public let KEY_omacron = GDK_KEY_omacron // 1010

public let KEY_oneeighth = GDK_KEY_oneeighth // 2755

public let KEY_onefifth = GDK_KEY_onefifth // 2738

public let KEY_onehalf = GDK_KEY_onehalf // 189

public let KEY_onequarter = GDK_KEY_onequarter // 188

public let KEY_onesixth = GDK_KEY_onesixth // 2742

public let KEY_onesubscript = GDK_KEY_onesubscript // 16785537

public let KEY_onesuperior = GDK_KEY_onesuperior // 185

public let KEY_onethird = GDK_KEY_onethird // 2736

public let KEY_ooblique = GDK_KEY_ooblique // 248

public let KEY_openrectbullet = GDK_KEY_openrectbullet // 2786

public let KEY_openstar = GDK_KEY_openstar // 2789

public let KEY_opentribulletdown = GDK_KEY_opentribulletdown // 2788

public let KEY_opentribulletup = GDK_KEY_opentribulletup // 2787

public let KEY_ordfeminine = GDK_KEY_ordfeminine // 170

public let KEY_oslash = GDK_KEY_oslash // 248

public let KEY_otilde = GDK_KEY_otilde // 245

public let KEY_overbar = GDK_KEY_overbar // 3008

public let KEY_overline = GDK_KEY_overline // 1150

public let KEY_p = GDK_KEY_p // 112

public let KEY_pabovedot = GDK_KEY_pabovedot // 16784983

public let KEY_paragraph = GDK_KEY_paragraph // 182

public let KEY_parenleft = GDK_KEY_parenleft // 40

public let KEY_parenright = GDK_KEY_parenright // 41

public let KEY_partdifferential = GDK_KEY_partdifferential // 16785922

public let KEY_partialderivative = GDK_KEY_partialderivative // 2287

public let KEY_percent = GDK_KEY_percent // 37

public let KEY_period = GDK_KEY_period // 46

public let KEY_periodcentered = GDK_KEY_periodcentered // 183

public let KEY_permille = GDK_KEY_permille // 2773

public let KEY_phonographcopyright = GDK_KEY_phonographcopyright // 2811

public let KEY_plus = GDK_KEY_plus // 43

public let KEY_plusminus = GDK_KEY_plusminus // 177

public let KEY_prescription = GDK_KEY_prescription // 2772

public let KEY_prolongedsound = GDK_KEY_prolongedsound // 1200

public let KEY_punctspace = GDK_KEY_punctspace // 2726

public let KEY_q = GDK_KEY_q // 113

public let KEY_quad = GDK_KEY_quad // 3020

public let KEY_question = GDK_KEY_question // 63

public let KEY_questiondown = GDK_KEY_questiondown // 191

public let KEY_quotedbl = GDK_KEY_quotedbl // 34

public let KEY_quoteleft = GDK_KEY_quoteleft // 96

public let KEY_quoteright = GDK_KEY_quoteright // 39

public let KEY_r = GDK_KEY_r // 114

public let KEY_racute = GDK_KEY_racute // 480

public let KEY_radical = GDK_KEY_radical // 2262

public let KEY_rcaron = GDK_KEY_rcaron // 504

public let KEY_rcedilla = GDK_KEY_rcedilla // 947

public let KEY_registered = GDK_KEY_registered // 174

public let KEY_rightanglebracket = GDK_KEY_rightanglebracket // 2750

public let KEY_rightarrow = GDK_KEY_rightarrow // 2301

public let KEY_rightcaret = GDK_KEY_rightcaret // 2982

public let KEY_rightdoublequotemark = GDK_KEY_rightdoublequotemark // 2771

public let KEY_rightmiddlecurlybrace = GDK_KEY_rightmiddlecurlybrace // 2224

public let KEY_rightmiddlesummation = GDK_KEY_rightmiddlesummation // 2231

public let KEY_rightopentriangle = GDK_KEY_rightopentriangle // 2765

public let KEY_rightpointer = GDK_KEY_rightpointer // 2795

public let KEY_rightshoe = GDK_KEY_rightshoe // 3032

public let KEY_rightsinglequotemark = GDK_KEY_rightsinglequotemark // 2769

public let KEY_rightt = GDK_KEY_rightt // 2549

public let KEY_righttack = GDK_KEY_righttack // 3068

public let KEY_s = GDK_KEY_s // 115

public let KEY_sabovedot = GDK_KEY_sabovedot // 16784993

public let KEY_sacute = GDK_KEY_sacute // 438

public let KEY_scaron = GDK_KEY_scaron // 441

public let KEY_scedilla = GDK_KEY_scedilla // 442

public let KEY_schwa = GDK_KEY_schwa // 16777817

public let KEY_scircumflex = GDK_KEY_scircumflex // 766

public let KEY_script_switch = GDK_KEY_script_switch // 65406

public let KEY_seconds = GDK_KEY_seconds // 2775

public let KEY_section = GDK_KEY_section // 167

public let KEY_semicolon = GDK_KEY_semicolon // 59

public let KEY_semivoicedsound = GDK_KEY_semivoicedsound // 1247

public let KEY_seveneighths = GDK_KEY_seveneighths // 2758

public let KEY_sevensubscript = GDK_KEY_sevensubscript // 16785543

public let KEY_sevensuperior = GDK_KEY_sevensuperior // 16785527

public let KEY_signaturemark = GDK_KEY_signaturemark // 2762

public let KEY_signifblank = GDK_KEY_signifblank // 2732

public let KEY_similarequal = GDK_KEY_similarequal // 2249

public let KEY_singlelowquotemark = GDK_KEY_singlelowquotemark // 2813

public let KEY_sixsubscript = GDK_KEY_sixsubscript // 16785542

public let KEY_sixsuperior = GDK_KEY_sixsuperior // 16785526

public let KEY_slash = GDK_KEY_slash // 47

public let KEY_soliddiamond = GDK_KEY_soliddiamond // 2528

public let KEY_space = GDK_KEY_space // 32

public let KEY_squareroot = GDK_KEY_squareroot // 16785946

public let KEY_ssharp = GDK_KEY_ssharp // 223

public let KEY_sterling = GDK_KEY_sterling // 163

public let KEY_stricteq = GDK_KEY_stricteq // 16786019

public let KEY_t = GDK_KEY_t // 116

public let KEY_tabovedot = GDK_KEY_tabovedot // 16785003

public let KEY_tcaron = GDK_KEY_tcaron // 443

public let KEY_tcedilla = GDK_KEY_tcedilla // 510

public let KEY_telephone = GDK_KEY_telephone // 2809

public let KEY_telephonerecorder = GDK_KEY_telephonerecorder // 2810

public let KEY_therefore = GDK_KEY_therefore // 2240

public let KEY_thinspace = GDK_KEY_thinspace // 2727

public let KEY_thorn = GDK_KEY_thorn // 254

public let KEY_threeeighths = GDK_KEY_threeeighths // 2756

public let KEY_threefifths = GDK_KEY_threefifths // 2740

public let KEY_threequarters = GDK_KEY_threequarters // 190

public let KEY_threesubscript = GDK_KEY_threesubscript // 16785539

public let KEY_threesuperior = GDK_KEY_threesuperior // 179

public let KEY_tintegral = GDK_KEY_tintegral // 16785965

public let KEY_topintegral = GDK_KEY_topintegral // 2212

public let KEY_topleftparens = GDK_KEY_topleftparens // 2219

public let KEY_topleftradical = GDK_KEY_topleftradical // 2210

public let KEY_topleftsqbracket = GDK_KEY_topleftsqbracket // 2215

public let KEY_topleftsummation = GDK_KEY_topleftsummation // 2225

public let KEY_toprightparens = GDK_KEY_toprightparens // 2221

public let KEY_toprightsqbracket = GDK_KEY_toprightsqbracket // 2217

public let KEY_toprightsummation = GDK_KEY_toprightsummation // 2229

public let KEY_topt = GDK_KEY_topt // 2551

public let KEY_topvertsummationconnector = GDK_KEY_topvertsummationconnector // 2227

public let KEY_trademark = GDK_KEY_trademark // 2761

public let KEY_trademarkincircle = GDK_KEY_trademarkincircle // 2763

public let KEY_tslash = GDK_KEY_tslash // 956

public let KEY_twofifths = GDK_KEY_twofifths // 2739

public let KEY_twosubscript = GDK_KEY_twosubscript // 16785538

public let KEY_twosuperior = GDK_KEY_twosuperior // 178

public let KEY_twothirds = GDK_KEY_twothirds // 2737

public let KEY_u = GDK_KEY_u // 117

public let KEY_uacute = GDK_KEY_uacute // 250

public let KEY_ubelowdot = GDK_KEY_ubelowdot // 16785125

public let KEY_ubreve = GDK_KEY_ubreve // 765

public let KEY_ucircumflex = GDK_KEY_ucircumflex // 251

public let KEY_udiaeresis = GDK_KEY_udiaeresis // 252

public let KEY_udoubleacute = GDK_KEY_udoubleacute // 507

public let KEY_ugrave = GDK_KEY_ugrave // 249

public let KEY_uhook = GDK_KEY_uhook // 16785127

public let KEY_uhorn = GDK_KEY_uhorn // 16777648

public let KEY_uhornacute = GDK_KEY_uhornacute // 16785129

public let KEY_uhornbelowdot = GDK_KEY_uhornbelowdot // 16785137

public let KEY_uhorngrave = GDK_KEY_uhorngrave // 16785131

public let KEY_uhornhook = GDK_KEY_uhornhook // 16785133

public let KEY_uhorntilde = GDK_KEY_uhorntilde // 16785135

public let KEY_umacron = GDK_KEY_umacron // 1022

public let KEY_underbar = GDK_KEY_underbar // 3014

public let KEY_underscore = GDK_KEY_underscore // 95

public let KEY_union = GDK_KEY_union // 2269

public let KEY_uogonek = GDK_KEY_uogonek // 1017

public let KEY_uparrow = GDK_KEY_uparrow // 2300

public let KEY_upcaret = GDK_KEY_upcaret // 2985

public let KEY_upleftcorner = GDK_KEY_upleftcorner // 2540

public let KEY_uprightcorner = GDK_KEY_uprightcorner // 2539

public let KEY_upshoe = GDK_KEY_upshoe // 3011

public let KEY_upstile = GDK_KEY_upstile // 3027

public let KEY_uptack = GDK_KEY_uptack // 3022

public let KEY_uring = GDK_KEY_uring // 505

public let KEY_utilde = GDK_KEY_utilde // 1021

public let KEY_v = GDK_KEY_v // 118

public let KEY_variation = GDK_KEY_variation // 2241

public let KEY_vertbar = GDK_KEY_vertbar // 2552

public let KEY_vertconnector = GDK_KEY_vertconnector // 2214

public let KEY_voicedsound = GDK_KEY_voicedsound // 1246

public let KEY_vt = GDK_KEY_vt // 2537

public let KEY_w = GDK_KEY_w // 119

public let KEY_wacute = GDK_KEY_wacute // 16785027

public let KEY_wcircumflex = GDK_KEY_wcircumflex // 16777589

public let KEY_wdiaeresis = GDK_KEY_wdiaeresis // 16785029

public let KEY_wgrave = GDK_KEY_wgrave // 16785025

public let KEY_x = GDK_KEY_x // 120

public let KEY_xabovedot = GDK_KEY_xabovedot // 16785035

public let KEY_y = GDK_KEY_y // 121

public let KEY_yacute = GDK_KEY_yacute // 253

public let KEY_ybelowdot = GDK_KEY_ybelowdot // 16785141

public let KEY_ycircumflex = GDK_KEY_ycircumflex // 16777591

public let KEY_ydiaeresis = GDK_KEY_ydiaeresis // 255

public let KEY_yen = GDK_KEY_yen // 165

public let KEY_ygrave = GDK_KEY_ygrave // 16785139

public let KEY_yhook = GDK_KEY_yhook // 16785143

public let KEY_ytilde = GDK_KEY_ytilde // 16785145

public let KEY_z = GDK_KEY_z // 122

public let KEY_zabovedot = GDK_KEY_zabovedot // 447

public let KEY_zacute = GDK_KEY_zacute // 444

public let KEY_zcaron = GDK_KEY_zcaron // 446

public let KEY_zerosubscript = GDK_KEY_zerosubscript // 16785536

public let KEY_zerosuperior = GDK_KEY_zerosuperior // 16785520

public let KEY_zstroke = GDK_KEY_zstroke // 16777654

public let MAJOR_VERSION = GDK_MAJOR_VERSION // 3

public let MAX_TIMECOORD_AXES = GDK_MAX_TIMECOORD_AXES // 128

public let MICRO_VERSION = GDK_MICRO_VERSION // 29

public let MINOR_VERSION = GDK_MINOR_VERSION // 24

/// A special value, indicating that the background
/// for a window should be inherited from the parent window.
public let PARENT_RELATIVE = GDK_PARENT_RELATIVE // 1

/// This is the priority that the idle handler processing window updates
/// is given in the
/// [GLib Main Loop](#glib-The-Main-Event-Loop).
public let PRIORITY_REDRAW = 120 // GDK_PRIORITY_REDRAW
