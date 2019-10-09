import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import GLib
import GLibObject
import Pango
import Cairo
import PangoCairo
import GdkPixbuf

/// The middle button.
public let BUTTON_MIDDLE = GDK_BUTTON_MIDDLE /* gint 2 */

/// The primary button. This is typically the left mouse button, or the
/// right button in a left-handed setup.
public let BUTTON_PRIMARY = GDK_BUTTON_PRIMARY /* gint 1 */

/// The secondary button. This is typically the right mouse button, or the
/// left button in a left-handed setup.
public let BUTTON_SECONDARY = GDK_BUTTON_SECONDARY /* gint 3 */

/// Represents the current time, and can be used anywhere a time is expected.
public let CURRENT_TIME = GDK_CURRENT_TIME /* gint 0 */

/// Use this macro as the return value for continuing the propagation of
/// an event handler.
public let EVENT_PROPAGATE = GDK_EVENT_PROPAGATE /* gboolean 4 */

/// Use this macro as the return value for stopping the propagation of
/// an event handler.
public let EVENT_STOP: gboolean = 1 /* GDK_EVENT_STOP */

public let KEY_0 = GDK_KEY_0 /* gint 48 */

public let KEY_1 = GDK_KEY_1 /* gint 49 */

public let KEY_2 = GDK_KEY_2 /* gint 50 */

public let KEY_3 = GDK_KEY_3 /* gint 51 */

public let KEY_3270_AltCursor = GDK_KEY_3270_AltCursor /* gint 64784 */

public let KEY_3270_Attn = GDK_KEY_3270_Attn /* gint 64782 */

public let KEY_3270_BackTab = GDK_KEY_3270_BackTab /* gint 64773 */

public let KEY_3270_ChangeScreen = GDK_KEY_3270_ChangeScreen /* gint 64793 */

public let KEY_3270_Copy = GDK_KEY_3270_Copy /* gint 64789 */

public let KEY_3270_CursorBlink = GDK_KEY_3270_CursorBlink /* gint 64783 */

public let KEY_3270_CursorSelect = GDK_KEY_3270_CursorSelect /* gint 64796 */

public let KEY_3270_DeleteWord = GDK_KEY_3270_DeleteWord /* gint 64794 */

public let KEY_3270_Duplicate = GDK_KEY_3270_Duplicate /* gint 64769 */

public let KEY_3270_Enter = GDK_KEY_3270_Enter /* gint 64798 */

public let KEY_3270_EraseEOF = GDK_KEY_3270_EraseEOF /* gint 64774 */

public let KEY_3270_EraseInput = GDK_KEY_3270_EraseInput /* gint 64775 */

public let KEY_3270_ExSelect = GDK_KEY_3270_ExSelect /* gint 64795 */

public let KEY_3270_FieldMark = GDK_KEY_3270_FieldMark /* gint 64770 */

public let KEY_3270_Ident = GDK_KEY_3270_Ident /* gint 64787 */

public let KEY_3270_Jump = GDK_KEY_3270_Jump /* gint 64786 */

public let KEY_3270_KeyClick = GDK_KEY_3270_KeyClick /* gint 64785 */

public let KEY_3270_Left2 = GDK_KEY_3270_Left2 /* gint 64772 */

public let KEY_3270_PA1 = GDK_KEY_3270_PA1 /* gint 64778 */

public let KEY_3270_PA2 = GDK_KEY_3270_PA2 /* gint 64779 */

public let KEY_3270_PA3 = GDK_KEY_3270_PA3 /* gint 64780 */

public let KEY_3270_Play = GDK_KEY_3270_Play /* gint 64790 */

public let KEY_3270_PrintScreen = GDK_KEY_3270_PrintScreen /* gint 64797 */

public let KEY_3270_Quit = GDK_KEY_3270_Quit /* gint 64777 */

public let KEY_3270_Record = GDK_KEY_3270_Record /* gint 64792 */

public let KEY_3270_Reset = GDK_KEY_3270_Reset /* gint 64776 */

public let KEY_3270_Right2 = GDK_KEY_3270_Right2 /* gint 64771 */

public let KEY_3270_Rule = GDK_KEY_3270_Rule /* gint 64788 */

public let KEY_3270_Setup = GDK_KEY_3270_Setup /* gint 64791 */

public let KEY_3270_Test = GDK_KEY_3270_Test /* gint 64781 */

public let KEY_4 = GDK_KEY_4 /* gint 52 */

public let KEY_5 = GDK_KEY_5 /* gint 53 */

public let KEY_6 = GDK_KEY_6 /* gint 54 */

public let KEY_7 = GDK_KEY_7 /* gint 55 */

public let KEY_8 = GDK_KEY_8 /* gint 56 */

public let KEY_9 = GDK_KEY_9 /* gint 57 */

public let KEY_A = GDK_KEY_A /* gint 65 */

public let KEY_AE = GDK_KEY_AE /* gint 198 */

public let KEY_Aacute = GDK_KEY_Aacute /* gint 193 */

public let KEY_Abelowdot = GDK_KEY_Abelowdot /* gint 16785056 */

public let KEY_Abreve = GDK_KEY_Abreve /* gint 451 */

public let KEY_Abreveacute = GDK_KEY_Abreveacute /* gint 16785070 */

public let KEY_Abrevebelowdot = GDK_KEY_Abrevebelowdot /* gint 16785078 */

public let KEY_Abrevegrave = GDK_KEY_Abrevegrave /* gint 16785072 */

public let KEY_Abrevehook = GDK_KEY_Abrevehook /* gint 16785074 */

public let KEY_Abrevetilde = GDK_KEY_Abrevetilde /* gint 16785076 */

public let KEY_AccessX_Enable = GDK_KEY_AccessX_Enable /* gint 65136 */

public let KEY_AccessX_Feedback_Enable = GDK_KEY_AccessX_Feedback_Enable /* gint 65137 */

public let KEY_Acircumflex = GDK_KEY_Acircumflex /* gint 194 */

public let KEY_Acircumflexacute = GDK_KEY_Acircumflexacute /* gint 16785060 */

public let KEY_Acircumflexbelowdot = GDK_KEY_Acircumflexbelowdot /* gint 16785068 */

public let KEY_Acircumflexgrave = GDK_KEY_Acircumflexgrave /* gint 16785062 */

public let KEY_Acircumflexhook = GDK_KEY_Acircumflexhook /* gint 16785064 */

public let KEY_Acircumflextilde = GDK_KEY_Acircumflextilde /* gint 16785066 */

public let KEY_AddFavorite = GDK_KEY_AddFavorite /* gint 269025081 */

public let KEY_Adiaeresis = GDK_KEY_Adiaeresis /* gint 196 */

public let KEY_Agrave = GDK_KEY_Agrave /* gint 192 */

public let KEY_Ahook = GDK_KEY_Ahook /* gint 16785058 */

public let KEY_Alt_L = GDK_KEY_Alt_L /* gint 65513 */

public let KEY_Alt_R = GDK_KEY_Alt_R /* gint 65514 */

public let KEY_Amacron = GDK_KEY_Amacron /* gint 960 */

public let KEY_Aogonek = GDK_KEY_Aogonek /* gint 417 */

public let KEY_ApplicationLeft = GDK_KEY_ApplicationLeft /* gint 269025104 */

public let KEY_ApplicationRight = GDK_KEY_ApplicationRight /* gint 269025105 */

public let KEY_Arabic_0 = GDK_KEY_Arabic_0 /* gint 16778848 */

public let KEY_Arabic_1 = GDK_KEY_Arabic_1 /* gint 16778849 */

public let KEY_Arabic_2 = GDK_KEY_Arabic_2 /* gint 16778850 */

public let KEY_Arabic_3 = GDK_KEY_Arabic_3 /* gint 16778851 */

public let KEY_Arabic_4 = GDK_KEY_Arabic_4 /* gint 16778852 */

public let KEY_Arabic_5 = GDK_KEY_Arabic_5 /* gint 16778853 */

public let KEY_Arabic_6 = GDK_KEY_Arabic_6 /* gint 16778854 */

public let KEY_Arabic_7 = GDK_KEY_Arabic_7 /* gint 16778855 */

public let KEY_Arabic_8 = GDK_KEY_Arabic_8 /* gint 16778856 */

public let KEY_Arabic_9 = GDK_KEY_Arabic_9 /* gint 16778857 */

public let KEY_Arabic_ain = GDK_KEY_Arabic_ain /* gint 1497 */

public let KEY_Arabic_alef = GDK_KEY_Arabic_alef /* gint 1479 */

public let KEY_Arabic_alefmaksura = GDK_KEY_Arabic_alefmaksura /* gint 1513 */

public let KEY_Arabic_beh = GDK_KEY_Arabic_beh /* gint 1480 */

public let KEY_Arabic_comma = GDK_KEY_Arabic_comma /* gint 1452 */

public let KEY_Arabic_dad = GDK_KEY_Arabic_dad /* gint 1494 */

public let KEY_Arabic_dal = GDK_KEY_Arabic_dal /* gint 1487 */

public let KEY_Arabic_damma = GDK_KEY_Arabic_damma /* gint 1519 */

public let KEY_Arabic_dammatan = GDK_KEY_Arabic_dammatan /* gint 1516 */

public let KEY_Arabic_ddal = GDK_KEY_Arabic_ddal /* gint 16778888 */

public let KEY_Arabic_farsi_yeh = GDK_KEY_Arabic_farsi_yeh /* gint 16778956 */

public let KEY_Arabic_fatha = GDK_KEY_Arabic_fatha /* gint 1518 */

public let KEY_Arabic_fathatan = GDK_KEY_Arabic_fathatan /* gint 1515 */

public let KEY_Arabic_feh = GDK_KEY_Arabic_feh /* gint 1505 */

public let KEY_Arabic_fullstop = GDK_KEY_Arabic_fullstop /* gint 16778964 */

public let KEY_Arabic_gaf = GDK_KEY_Arabic_gaf /* gint 16778927 */

public let KEY_Arabic_ghain = GDK_KEY_Arabic_ghain /* gint 1498 */

public let KEY_Arabic_ha = GDK_KEY_Arabic_ha /* gint 1511 */

public let KEY_Arabic_hah = GDK_KEY_Arabic_hah /* gint 1485 */

public let KEY_Arabic_hamza = GDK_KEY_Arabic_hamza /* gint 1473 */

public let KEY_Arabic_hamza_above = GDK_KEY_Arabic_hamza_above /* gint 16778836 */

public let KEY_Arabic_hamza_below = GDK_KEY_Arabic_hamza_below /* gint 16778837 */

public let KEY_Arabic_hamzaonalef = GDK_KEY_Arabic_hamzaonalef /* gint 1475 */

public let KEY_Arabic_hamzaonwaw = GDK_KEY_Arabic_hamzaonwaw /* gint 1476 */

public let KEY_Arabic_hamzaonyeh = GDK_KEY_Arabic_hamzaonyeh /* gint 1478 */

public let KEY_Arabic_hamzaunderalef = GDK_KEY_Arabic_hamzaunderalef /* gint 1477 */

public let KEY_Arabic_heh = GDK_KEY_Arabic_heh /* gint 1511 */

public let KEY_Arabic_heh_doachashmee = GDK_KEY_Arabic_heh_doachashmee /* gint 16778942 */

public let KEY_Arabic_heh_goal = GDK_KEY_Arabic_heh_goal /* gint 16778945 */

public let KEY_Arabic_jeem = GDK_KEY_Arabic_jeem /* gint 1484 */

public let KEY_Arabic_jeh = GDK_KEY_Arabic_jeh /* gint 16778904 */

public let KEY_Arabic_kaf = GDK_KEY_Arabic_kaf /* gint 1507 */

public let KEY_Arabic_kasra = GDK_KEY_Arabic_kasra /* gint 1520 */

public let KEY_Arabic_kasratan = GDK_KEY_Arabic_kasratan /* gint 1517 */

public let KEY_Arabic_keheh = GDK_KEY_Arabic_keheh /* gint 16778921 */

public let KEY_Arabic_khah = GDK_KEY_Arabic_khah /* gint 1486 */

public let KEY_Arabic_lam = GDK_KEY_Arabic_lam /* gint 1508 */

public let KEY_Arabic_madda_above = GDK_KEY_Arabic_madda_above /* gint 16778835 */

public let KEY_Arabic_maddaonalef = GDK_KEY_Arabic_maddaonalef /* gint 1474 */

public let KEY_Arabic_meem = GDK_KEY_Arabic_meem /* gint 1509 */

public let KEY_Arabic_noon = GDK_KEY_Arabic_noon /* gint 1510 */

public let KEY_Arabic_noon_ghunna = GDK_KEY_Arabic_noon_ghunna /* gint 16778938 */

public let KEY_Arabic_peh = GDK_KEY_Arabic_peh /* gint 16778878 */

public let KEY_Arabic_percent = GDK_KEY_Arabic_percent /* gint 16778858 */

public let KEY_Arabic_qaf = GDK_KEY_Arabic_qaf /* gint 1506 */

public let KEY_Arabic_question_mark = GDK_KEY_Arabic_question_mark /* gint 1471 */

public let KEY_Arabic_ra = GDK_KEY_Arabic_ra /* gint 1489 */

public let KEY_Arabic_rreh = GDK_KEY_Arabic_rreh /* gint 16778897 */

public let KEY_Arabic_sad = GDK_KEY_Arabic_sad /* gint 1493 */

public let KEY_Arabic_seen = GDK_KEY_Arabic_seen /* gint 1491 */

public let KEY_Arabic_semicolon = GDK_KEY_Arabic_semicolon /* gint 1467 */

public let KEY_Arabic_shadda = GDK_KEY_Arabic_shadda /* gint 1521 */

public let KEY_Arabic_sheen = GDK_KEY_Arabic_sheen /* gint 1492 */

public let KEY_Arabic_sukun = GDK_KEY_Arabic_sukun /* gint 1522 */

public let KEY_Arabic_superscript_alef = GDK_KEY_Arabic_superscript_alef /* gint 16778864 */

public let KEY_Arabic_switch = GDK_KEY_Arabic_switch /* gint 65406 */

public let KEY_Arabic_tah = GDK_KEY_Arabic_tah /* gint 1495 */

public let KEY_Arabic_tatweel = GDK_KEY_Arabic_tatweel /* gint 1504 */

public let KEY_Arabic_tcheh = GDK_KEY_Arabic_tcheh /* gint 16778886 */

public let KEY_Arabic_teh = GDK_KEY_Arabic_teh /* gint 1482 */

public let KEY_Arabic_tehmarbuta = GDK_KEY_Arabic_tehmarbuta /* gint 1481 */

public let KEY_Arabic_thal = GDK_KEY_Arabic_thal /* gint 1488 */

public let KEY_Arabic_theh = GDK_KEY_Arabic_theh /* gint 1483 */

public let KEY_Arabic_tteh = GDK_KEY_Arabic_tteh /* gint 16778873 */

public let KEY_Arabic_veh = GDK_KEY_Arabic_veh /* gint 16778916 */

public let KEY_Arabic_waw = GDK_KEY_Arabic_waw /* gint 1512 */

public let KEY_Arabic_yeh = GDK_KEY_Arabic_yeh /* gint 1514 */

public let KEY_Arabic_yeh_baree = GDK_KEY_Arabic_yeh_baree /* gint 16778962 */

public let KEY_Arabic_zah = GDK_KEY_Arabic_zah /* gint 1496 */

public let KEY_Arabic_zain = GDK_KEY_Arabic_zain /* gint 1490 */

public let KEY_Aring = GDK_KEY_Aring /* gint 197 */

public let KEY_Armenian_AT = GDK_KEY_Armenian_AT /* gint 16778552 */

public let KEY_Armenian_AYB = GDK_KEY_Armenian_AYB /* gint 16778545 */

public let KEY_Armenian_BEN = GDK_KEY_Armenian_BEN /* gint 16778546 */

public let KEY_Armenian_CHA = GDK_KEY_Armenian_CHA /* gint 16778569 */

public let KEY_Armenian_DA = GDK_KEY_Armenian_DA /* gint 16778548 */

public let KEY_Armenian_DZA = GDK_KEY_Armenian_DZA /* gint 16778561 */

public let KEY_Armenian_E = GDK_KEY_Armenian_E /* gint 16778551 */

public let KEY_Armenian_FE = GDK_KEY_Armenian_FE /* gint 16778582 */

public let KEY_Armenian_GHAT = GDK_KEY_Armenian_GHAT /* gint 16778562 */

public let KEY_Armenian_GIM = GDK_KEY_Armenian_GIM /* gint 16778547 */

public let KEY_Armenian_HI = GDK_KEY_Armenian_HI /* gint 16778565 */

public let KEY_Armenian_HO = GDK_KEY_Armenian_HO /* gint 16778560 */

public let KEY_Armenian_INI = GDK_KEY_Armenian_INI /* gint 16778555 */

public let KEY_Armenian_JE = GDK_KEY_Armenian_JE /* gint 16778571 */

public let KEY_Armenian_KE = GDK_KEY_Armenian_KE /* gint 16778580 */

public let KEY_Armenian_KEN = GDK_KEY_Armenian_KEN /* gint 16778559 */

public let KEY_Armenian_KHE = GDK_KEY_Armenian_KHE /* gint 16778557 */

public let KEY_Armenian_LYUN = GDK_KEY_Armenian_LYUN /* gint 16778556 */

public let KEY_Armenian_MEN = GDK_KEY_Armenian_MEN /* gint 16778564 */

public let KEY_Armenian_NU = GDK_KEY_Armenian_NU /* gint 16778566 */

public let KEY_Armenian_O = GDK_KEY_Armenian_O /* gint 16778581 */

public let KEY_Armenian_PE = GDK_KEY_Armenian_PE /* gint 16778570 */

public let KEY_Armenian_PYUR = GDK_KEY_Armenian_PYUR /* gint 16778579 */

public let KEY_Armenian_RA = GDK_KEY_Armenian_RA /* gint 16778572 */

public let KEY_Armenian_RE = GDK_KEY_Armenian_RE /* gint 16778576 */

public let KEY_Armenian_SE = GDK_KEY_Armenian_SE /* gint 16778573 */

public let KEY_Armenian_SHA = GDK_KEY_Armenian_SHA /* gint 16778567 */

public let KEY_Armenian_TCHE = GDK_KEY_Armenian_TCHE /* gint 16778563 */

public let KEY_Armenian_TO = GDK_KEY_Armenian_TO /* gint 16778553 */

public let KEY_Armenian_TSA = GDK_KEY_Armenian_TSA /* gint 16778558 */

public let KEY_Armenian_TSO = GDK_KEY_Armenian_TSO /* gint 16778577 */

public let KEY_Armenian_TYUN = GDK_KEY_Armenian_TYUN /* gint 16778575 */

public let KEY_Armenian_VEV = GDK_KEY_Armenian_VEV /* gint 16778574 */

public let KEY_Armenian_VO = GDK_KEY_Armenian_VO /* gint 16778568 */

public let KEY_Armenian_VYUN = GDK_KEY_Armenian_VYUN /* gint 16778578 */

public let KEY_Armenian_YECH = GDK_KEY_Armenian_YECH /* gint 16778549 */

public let KEY_Armenian_ZA = GDK_KEY_Armenian_ZA /* gint 16778550 */

public let KEY_Armenian_ZHE = GDK_KEY_Armenian_ZHE /* gint 16778554 */

public let KEY_Armenian_accent = GDK_KEY_Armenian_accent /* gint 16778587 */

public let KEY_Armenian_amanak = GDK_KEY_Armenian_amanak /* gint 16778588 */

public let KEY_Armenian_apostrophe = GDK_KEY_Armenian_apostrophe /* gint 16778586 */

public let KEY_Armenian_at = GDK_KEY_Armenian_at /* gint 16778600 */

public let KEY_Armenian_ayb = GDK_KEY_Armenian_ayb /* gint 16778593 */

public let KEY_Armenian_ben = GDK_KEY_Armenian_ben /* gint 16778594 */

public let KEY_Armenian_but = GDK_KEY_Armenian_but /* gint 16778589 */

public let KEY_Armenian_cha = GDK_KEY_Armenian_cha /* gint 16778617 */

public let KEY_Armenian_da = GDK_KEY_Armenian_da /* gint 16778596 */

public let KEY_Armenian_dza = GDK_KEY_Armenian_dza /* gint 16778609 */

public let KEY_Armenian_e = GDK_KEY_Armenian_e /* gint 16778599 */

public let KEY_Armenian_exclam = GDK_KEY_Armenian_exclam /* gint 16778588 */

public let KEY_Armenian_fe = GDK_KEY_Armenian_fe /* gint 16778630 */

public let KEY_Armenian_full_stop = GDK_KEY_Armenian_full_stop /* gint 16778633 */

public let KEY_Armenian_ghat = GDK_KEY_Armenian_ghat /* gint 16778610 */

public let KEY_Armenian_gim = GDK_KEY_Armenian_gim /* gint 16778595 */

public let KEY_Armenian_hi = GDK_KEY_Armenian_hi /* gint 16778613 */

public let KEY_Armenian_ho = GDK_KEY_Armenian_ho /* gint 16778608 */

public let KEY_Armenian_hyphen = GDK_KEY_Armenian_hyphen /* gint 16778634 */

public let KEY_Armenian_ini = GDK_KEY_Armenian_ini /* gint 16778603 */

public let KEY_Armenian_je = GDK_KEY_Armenian_je /* gint 16778619 */

public let KEY_Armenian_ke = GDK_KEY_Armenian_ke /* gint 16778628 */

public let KEY_Armenian_ken = GDK_KEY_Armenian_ken /* gint 16778607 */

public let KEY_Armenian_khe = GDK_KEY_Armenian_khe /* gint 16778605 */

public let KEY_Armenian_ligature_ew = GDK_KEY_Armenian_ligature_ew /* gint 16778631 */

public let KEY_Armenian_lyun = GDK_KEY_Armenian_lyun /* gint 16778604 */

public let KEY_Armenian_men = GDK_KEY_Armenian_men /* gint 16778612 */

public let KEY_Armenian_nu = GDK_KEY_Armenian_nu /* gint 16778614 */

public let KEY_Armenian_o = GDK_KEY_Armenian_o /* gint 16778629 */

public let KEY_Armenian_paruyk = GDK_KEY_Armenian_paruyk /* gint 16778590 */

public let KEY_Armenian_pe = GDK_KEY_Armenian_pe /* gint 16778618 */

public let KEY_Armenian_pyur = GDK_KEY_Armenian_pyur /* gint 16778627 */

public let KEY_Armenian_question = GDK_KEY_Armenian_question /* gint 16778590 */

public let KEY_Armenian_ra = GDK_KEY_Armenian_ra /* gint 16778620 */

public let KEY_Armenian_re = GDK_KEY_Armenian_re /* gint 16778624 */

public let KEY_Armenian_se = GDK_KEY_Armenian_se /* gint 16778621 */

public let KEY_Armenian_separation_mark = GDK_KEY_Armenian_separation_mark /* gint 16778589 */

public let KEY_Armenian_sha = GDK_KEY_Armenian_sha /* gint 16778615 */

public let KEY_Armenian_shesht = GDK_KEY_Armenian_shesht /* gint 16778587 */

public let KEY_Armenian_tche = GDK_KEY_Armenian_tche /* gint 16778611 */

public let KEY_Armenian_to = GDK_KEY_Armenian_to /* gint 16778601 */

public let KEY_Armenian_tsa = GDK_KEY_Armenian_tsa /* gint 16778606 */

public let KEY_Armenian_tso = GDK_KEY_Armenian_tso /* gint 16778625 */

public let KEY_Armenian_tyun = GDK_KEY_Armenian_tyun /* gint 16778623 */

public let KEY_Armenian_verjaket = GDK_KEY_Armenian_verjaket /* gint 16778633 */

public let KEY_Armenian_vev = GDK_KEY_Armenian_vev /* gint 16778622 */

public let KEY_Armenian_vo = GDK_KEY_Armenian_vo /* gint 16778616 */

public let KEY_Armenian_vyun = GDK_KEY_Armenian_vyun /* gint 16778626 */

public let KEY_Armenian_yech = GDK_KEY_Armenian_yech /* gint 16778597 */

public let KEY_Armenian_yentamna = GDK_KEY_Armenian_yentamna /* gint 16778634 */

public let KEY_Armenian_za = GDK_KEY_Armenian_za /* gint 16778598 */

public let KEY_Armenian_zhe = GDK_KEY_Armenian_zhe /* gint 16778602 */

public let KEY_Atilde = GDK_KEY_Atilde /* gint 195 */

public let KEY_AudibleBell_Enable = GDK_KEY_AudibleBell_Enable /* gint 65146 */

public let KEY_AudioCycleTrack = GDK_KEY_AudioCycleTrack /* gint 269025179 */

public let KEY_AudioForward = GDK_KEY_AudioForward /* gint 269025175 */

public let KEY_AudioLowerVolume = GDK_KEY_AudioLowerVolume /* gint 269025041 */

public let KEY_AudioMedia = GDK_KEY_AudioMedia /* gint 269025074 */

public let KEY_AudioMicMute = GDK_KEY_AudioMicMute /* gint 269025202 */

public let KEY_AudioMute = GDK_KEY_AudioMute /* gint 269025042 */

public let KEY_AudioNext = GDK_KEY_AudioNext /* gint 269025047 */

public let KEY_AudioPause = GDK_KEY_AudioPause /* gint 269025073 */

public let KEY_AudioPlay = GDK_KEY_AudioPlay /* gint 269025044 */

public let KEY_AudioPrev = GDK_KEY_AudioPrev /* gint 269025046 */

public let KEY_AudioRaiseVolume = GDK_KEY_AudioRaiseVolume /* gint 269025043 */

public let KEY_AudioRandomPlay = GDK_KEY_AudioRandomPlay /* gint 269025177 */

public let KEY_AudioRecord = GDK_KEY_AudioRecord /* gint 269025052 */

public let KEY_AudioRepeat = GDK_KEY_AudioRepeat /* gint 269025176 */

public let KEY_AudioRewind = GDK_KEY_AudioRewind /* gint 269025086 */

public let KEY_AudioStop = GDK_KEY_AudioStop /* gint 269025045 */

public let KEY_Away = GDK_KEY_Away /* gint 269025165 */

public let KEY_B = GDK_KEY_B /* gint 66 */

public let KEY_Babovedot = GDK_KEY_Babovedot /* gint 16784898 */

public let KEY_Back = GDK_KEY_Back /* gint 269025062 */

public let KEY_BackForward = GDK_KEY_BackForward /* gint 269025087 */

public let KEY_BackSpace = GDK_KEY_BackSpace /* gint 65288 */

public let KEY_Battery = GDK_KEY_Battery /* gint 269025171 */

public let KEY_Begin = GDK_KEY_Begin /* gint 65368 */

public let KEY_Blue = GDK_KEY_Blue /* gint 269025190 */

public let KEY_Bluetooth = GDK_KEY_Bluetooth /* gint 269025172 */

public let KEY_Book = GDK_KEY_Book /* gint 269025106 */

public let KEY_BounceKeys_Enable = GDK_KEY_BounceKeys_Enable /* gint 65140 */

public let KEY_Break = GDK_KEY_Break /* gint 65387 */

public let KEY_BrightnessAdjust = GDK_KEY_BrightnessAdjust /* gint 269025083 */

public let KEY_Byelorussian_SHORTU = GDK_KEY_Byelorussian_SHORTU /* gint 1726 */

public let KEY_Byelorussian_shortu = GDK_KEY_Byelorussian_shortu /* gint 1710 */

public let KEY_C = GDK_KEY_C /* gint 67 */

public let KEY_CD = GDK_KEY_CD /* gint 269025107 */

public let KEY_CH = GDK_KEY_CH /* gint 65186 */

public let KEY_C_H = GDK_KEY_C_H /* gint 65189 */

public let KEY_C_h = GDK_KEY_C_h /* gint 65188 */

public let KEY_Cabovedot = GDK_KEY_Cabovedot /* gint 709 */

public let KEY_Cacute = GDK_KEY_Cacute /* gint 454 */

public let KEY_Calculator = GDK_KEY_Calculator /* gint 269025053 */

public let KEY_Calendar = GDK_KEY_Calendar /* gint 269025056 */

public let KEY_Cancel = GDK_KEY_Cancel /* gint 65385 */

public let KEY_Caps_Lock = GDK_KEY_Caps_Lock /* gint 65509 */

public let KEY_Ccaron = GDK_KEY_Ccaron /* gint 456 */

public let KEY_Ccedilla = GDK_KEY_Ccedilla /* gint 199 */

public let KEY_Ccircumflex = GDK_KEY_Ccircumflex /* gint 710 */

public let KEY_Ch = GDK_KEY_Ch /* gint 65185 */

public let KEY_Clear = GDK_KEY_Clear /* gint 65291 */

public let KEY_ClearGrab = GDK_KEY_ClearGrab /* gint 269024801 */

public let KEY_Close = GDK_KEY_Close /* gint 269025110 */

public let KEY_Codeinput = GDK_KEY_Codeinput /* gint 65335 */

public let KEY_ColonSign = GDK_KEY_ColonSign /* gint 16785569 */

public let KEY_Community = GDK_KEY_Community /* gint 269025085 */

public let KEY_ContrastAdjust = GDK_KEY_ContrastAdjust /* gint 269025058 */

public let KEY_Control_L = GDK_KEY_Control_L /* gint 65507 */

public let KEY_Control_R = GDK_KEY_Control_R /* gint 65508 */

public let KEY_Copy = GDK_KEY_Copy /* gint 269025111 */

public let KEY_CruzeiroSign = GDK_KEY_CruzeiroSign /* gint 16785570 */

public let KEY_Cut = GDK_KEY_Cut /* gint 269025112 */

public let KEY_CycleAngle = GDK_KEY_CycleAngle /* gint 269025180 */

public let KEY_Cyrillic_A = GDK_KEY_Cyrillic_A /* gint 1761 */

public let KEY_Cyrillic_BE = GDK_KEY_Cyrillic_BE /* gint 1762 */

public let KEY_Cyrillic_CHE = GDK_KEY_Cyrillic_CHE /* gint 1790 */

public let KEY_Cyrillic_CHE_descender = GDK_KEY_Cyrillic_CHE_descender /* gint 16778422 */

public let KEY_Cyrillic_CHE_vertstroke = GDK_KEY_Cyrillic_CHE_vertstroke /* gint 16778424 */

public let KEY_Cyrillic_DE = GDK_KEY_Cyrillic_DE /* gint 1764 */

public let KEY_Cyrillic_DZHE = GDK_KEY_Cyrillic_DZHE /* gint 1727 */

public let KEY_Cyrillic_E = GDK_KEY_Cyrillic_E /* gint 1788 */

public let KEY_Cyrillic_EF = GDK_KEY_Cyrillic_EF /* gint 1766 */

public let KEY_Cyrillic_EL = GDK_KEY_Cyrillic_EL /* gint 1772 */

public let KEY_Cyrillic_EM = GDK_KEY_Cyrillic_EM /* gint 1773 */

public let KEY_Cyrillic_EN = GDK_KEY_Cyrillic_EN /* gint 1774 */

public let KEY_Cyrillic_EN_descender = GDK_KEY_Cyrillic_EN_descender /* gint 16778402 */

public let KEY_Cyrillic_ER = GDK_KEY_Cyrillic_ER /* gint 1778 */

public let KEY_Cyrillic_ES = GDK_KEY_Cyrillic_ES /* gint 1779 */

public let KEY_Cyrillic_GHE = GDK_KEY_Cyrillic_GHE /* gint 1767 */

public let KEY_Cyrillic_GHE_bar = GDK_KEY_Cyrillic_GHE_bar /* gint 16778386 */

public let KEY_Cyrillic_HA = GDK_KEY_Cyrillic_HA /* gint 1768 */

public let KEY_Cyrillic_HARDSIGN = GDK_KEY_Cyrillic_HARDSIGN /* gint 1791 */

public let KEY_Cyrillic_HA_descender = GDK_KEY_Cyrillic_HA_descender /* gint 16778418 */

public let KEY_Cyrillic_I = GDK_KEY_Cyrillic_I /* gint 1769 */

public let KEY_Cyrillic_IE = GDK_KEY_Cyrillic_IE /* gint 1765 */

public let KEY_Cyrillic_IO = GDK_KEY_Cyrillic_IO /* gint 1715 */

public let KEY_Cyrillic_I_macron = GDK_KEY_Cyrillic_I_macron /* gint 16778466 */

public let KEY_Cyrillic_JE = GDK_KEY_Cyrillic_JE /* gint 1720 */

public let KEY_Cyrillic_KA = GDK_KEY_Cyrillic_KA /* gint 1771 */

public let KEY_Cyrillic_KA_descender = GDK_KEY_Cyrillic_KA_descender /* gint 16778394 */

public let KEY_Cyrillic_KA_vertstroke = GDK_KEY_Cyrillic_KA_vertstroke /* gint 16778396 */

public let KEY_Cyrillic_LJE = GDK_KEY_Cyrillic_LJE /* gint 1721 */

public let KEY_Cyrillic_NJE = GDK_KEY_Cyrillic_NJE /* gint 1722 */

public let KEY_Cyrillic_O = GDK_KEY_Cyrillic_O /* gint 1775 */

public let KEY_Cyrillic_O_bar = GDK_KEY_Cyrillic_O_bar /* gint 16778472 */

public let KEY_Cyrillic_PE = GDK_KEY_Cyrillic_PE /* gint 1776 */

public let KEY_Cyrillic_SCHWA = GDK_KEY_Cyrillic_SCHWA /* gint 16778456 */

public let KEY_Cyrillic_SHA = GDK_KEY_Cyrillic_SHA /* gint 1787 */

public let KEY_Cyrillic_SHCHA = GDK_KEY_Cyrillic_SHCHA /* gint 1789 */

public let KEY_Cyrillic_SHHA = GDK_KEY_Cyrillic_SHHA /* gint 16778426 */

public let KEY_Cyrillic_SHORTI = GDK_KEY_Cyrillic_SHORTI /* gint 1770 */

public let KEY_Cyrillic_SOFTSIGN = GDK_KEY_Cyrillic_SOFTSIGN /* gint 1784 */

public let KEY_Cyrillic_TE = GDK_KEY_Cyrillic_TE /* gint 1780 */

public let KEY_Cyrillic_TSE = GDK_KEY_Cyrillic_TSE /* gint 1763 */

public let KEY_Cyrillic_U = GDK_KEY_Cyrillic_U /* gint 1781 */

public let KEY_Cyrillic_U_macron = GDK_KEY_Cyrillic_U_macron /* gint 16778478 */

public let KEY_Cyrillic_U_straight = GDK_KEY_Cyrillic_U_straight /* gint 16778414 */

public let KEY_Cyrillic_U_straight_bar = GDK_KEY_Cyrillic_U_straight_bar /* gint 16778416 */

public let KEY_Cyrillic_VE = GDK_KEY_Cyrillic_VE /* gint 1783 */

public let KEY_Cyrillic_YA = GDK_KEY_Cyrillic_YA /* gint 1777 */

public let KEY_Cyrillic_YERU = GDK_KEY_Cyrillic_YERU /* gint 1785 */

public let KEY_Cyrillic_YU = GDK_KEY_Cyrillic_YU /* gint 1760 */

public let KEY_Cyrillic_ZE = GDK_KEY_Cyrillic_ZE /* gint 1786 */

public let KEY_Cyrillic_ZHE = GDK_KEY_Cyrillic_ZHE /* gint 1782 */

public let KEY_Cyrillic_ZHE_descender = GDK_KEY_Cyrillic_ZHE_descender /* gint 16778390 */

public let KEY_Cyrillic_a = GDK_KEY_Cyrillic_a /* gint 1729 */

public let KEY_Cyrillic_be = GDK_KEY_Cyrillic_be /* gint 1730 */

public let KEY_Cyrillic_che = GDK_KEY_Cyrillic_che /* gint 1758 */

public let KEY_Cyrillic_che_descender = GDK_KEY_Cyrillic_che_descender /* gint 16778423 */

public let KEY_Cyrillic_che_vertstroke = GDK_KEY_Cyrillic_che_vertstroke /* gint 16778425 */

public let KEY_Cyrillic_de = GDK_KEY_Cyrillic_de /* gint 1732 */

public let KEY_Cyrillic_dzhe = GDK_KEY_Cyrillic_dzhe /* gint 1711 */

public let KEY_Cyrillic_e = GDK_KEY_Cyrillic_e /* gint 1756 */

public let KEY_Cyrillic_ef = GDK_KEY_Cyrillic_ef /* gint 1734 */

public let KEY_Cyrillic_el = GDK_KEY_Cyrillic_el /* gint 1740 */

public let KEY_Cyrillic_em = GDK_KEY_Cyrillic_em /* gint 1741 */

public let KEY_Cyrillic_en = GDK_KEY_Cyrillic_en /* gint 1742 */

public let KEY_Cyrillic_en_descender = GDK_KEY_Cyrillic_en_descender /* gint 16778403 */

public let KEY_Cyrillic_er = GDK_KEY_Cyrillic_er /* gint 1746 */

public let KEY_Cyrillic_es = GDK_KEY_Cyrillic_es /* gint 1747 */

public let KEY_Cyrillic_ghe = GDK_KEY_Cyrillic_ghe /* gint 1735 */

public let KEY_Cyrillic_ghe_bar = GDK_KEY_Cyrillic_ghe_bar /* gint 16778387 */

public let KEY_Cyrillic_ha = GDK_KEY_Cyrillic_ha /* gint 1736 */

public let KEY_Cyrillic_ha_descender = GDK_KEY_Cyrillic_ha_descender /* gint 16778419 */

public let KEY_Cyrillic_hardsign = GDK_KEY_Cyrillic_hardsign /* gint 1759 */

public let KEY_Cyrillic_i = GDK_KEY_Cyrillic_i /* gint 1737 */

public let KEY_Cyrillic_i_macron = GDK_KEY_Cyrillic_i_macron /* gint 16778467 */

public let KEY_Cyrillic_ie = GDK_KEY_Cyrillic_ie /* gint 1733 */

public let KEY_Cyrillic_io = GDK_KEY_Cyrillic_io /* gint 1699 */

public let KEY_Cyrillic_je = GDK_KEY_Cyrillic_je /* gint 1704 */

public let KEY_Cyrillic_ka = GDK_KEY_Cyrillic_ka /* gint 1739 */

public let KEY_Cyrillic_ka_descender = GDK_KEY_Cyrillic_ka_descender /* gint 16778395 */

public let KEY_Cyrillic_ka_vertstroke = GDK_KEY_Cyrillic_ka_vertstroke /* gint 16778397 */

public let KEY_Cyrillic_lje = GDK_KEY_Cyrillic_lje /* gint 1705 */

public let KEY_Cyrillic_nje = GDK_KEY_Cyrillic_nje /* gint 1706 */

public let KEY_Cyrillic_o = GDK_KEY_Cyrillic_o /* gint 1743 */

public let KEY_Cyrillic_o_bar = GDK_KEY_Cyrillic_o_bar /* gint 16778473 */

public let KEY_Cyrillic_pe = GDK_KEY_Cyrillic_pe /* gint 1744 */

public let KEY_Cyrillic_schwa = GDK_KEY_Cyrillic_schwa /* gint 16778457 */

public let KEY_Cyrillic_sha = GDK_KEY_Cyrillic_sha /* gint 1755 */

public let KEY_Cyrillic_shcha = GDK_KEY_Cyrillic_shcha /* gint 1757 */

public let KEY_Cyrillic_shha = GDK_KEY_Cyrillic_shha /* gint 16778427 */

public let KEY_Cyrillic_shorti = GDK_KEY_Cyrillic_shorti /* gint 1738 */

public let KEY_Cyrillic_softsign = GDK_KEY_Cyrillic_softsign /* gint 1752 */

public let KEY_Cyrillic_te = GDK_KEY_Cyrillic_te /* gint 1748 */

public let KEY_Cyrillic_tse = GDK_KEY_Cyrillic_tse /* gint 1731 */

public let KEY_Cyrillic_u = GDK_KEY_Cyrillic_u /* gint 1749 */

public let KEY_Cyrillic_u_macron = GDK_KEY_Cyrillic_u_macron /* gint 16778479 */

public let KEY_Cyrillic_u_straight = GDK_KEY_Cyrillic_u_straight /* gint 16778415 */

public let KEY_Cyrillic_u_straight_bar = GDK_KEY_Cyrillic_u_straight_bar /* gint 16778417 */

public let KEY_Cyrillic_ve = GDK_KEY_Cyrillic_ve /* gint 1751 */

public let KEY_Cyrillic_ya = GDK_KEY_Cyrillic_ya /* gint 1745 */

public let KEY_Cyrillic_yeru = GDK_KEY_Cyrillic_yeru /* gint 1753 */

public let KEY_Cyrillic_yu = GDK_KEY_Cyrillic_yu /* gint 1728 */

public let KEY_Cyrillic_ze = GDK_KEY_Cyrillic_ze /* gint 1754 */

public let KEY_Cyrillic_zhe = GDK_KEY_Cyrillic_zhe /* gint 1750 */

public let KEY_Cyrillic_zhe_descender = GDK_KEY_Cyrillic_zhe_descender /* gint 16778391 */

public let KEY_D = GDK_KEY_D /* gint 68 */

public let KEY_DOS = GDK_KEY_DOS /* gint 269025114 */

public let KEY_Dabovedot = GDK_KEY_Dabovedot /* gint 16784906 */

public let KEY_Dcaron = GDK_KEY_Dcaron /* gint 463 */

public let KEY_Delete = GDK_KEY_Delete /* gint 65535 */

public let KEY_Display = GDK_KEY_Display /* gint 269025113 */

public let KEY_Documents = GDK_KEY_Documents /* gint 269025115 */

public let KEY_DongSign = GDK_KEY_DongSign /* gint 16785579 */

public let KEY_Down = GDK_KEY_Down /* gint 65364 */

public let KEY_Dstroke = GDK_KEY_Dstroke /* gint 464 */

public let KEY_E = GDK_KEY_E /* gint 69 */

public let KEY_ENG = GDK_KEY_ENG /* gint 957 */

public let KEY_ETH = GDK_KEY_ETH /* gint 208 */

public let KEY_EZH = GDK_KEY_EZH /* gint 16777655 */

public let KEY_Eabovedot = GDK_KEY_Eabovedot /* gint 972 */

public let KEY_Eacute = GDK_KEY_Eacute /* gint 201 */

public let KEY_Ebelowdot = GDK_KEY_Ebelowdot /* gint 16785080 */

public let KEY_Ecaron = GDK_KEY_Ecaron /* gint 460 */

public let KEY_Ecircumflex = GDK_KEY_Ecircumflex /* gint 202 */

public let KEY_Ecircumflexacute = GDK_KEY_Ecircumflexacute /* gint 16785086 */

public let KEY_Ecircumflexbelowdot = GDK_KEY_Ecircumflexbelowdot /* gint 16785094 */

public let KEY_Ecircumflexgrave = GDK_KEY_Ecircumflexgrave /* gint 16785088 */

public let KEY_Ecircumflexhook = GDK_KEY_Ecircumflexhook /* gint 16785090 */

public let KEY_Ecircumflextilde = GDK_KEY_Ecircumflextilde /* gint 16785092 */

public let KEY_EcuSign = GDK_KEY_EcuSign /* gint 16785568 */

public let KEY_Ediaeresis = GDK_KEY_Ediaeresis /* gint 203 */

public let KEY_Egrave = GDK_KEY_Egrave /* gint 200 */

public let KEY_Ehook = GDK_KEY_Ehook /* gint 16785082 */

public let KEY_Eisu_Shift = GDK_KEY_Eisu_Shift /* gint 65327 */

public let KEY_Eisu_toggle = GDK_KEY_Eisu_toggle /* gint 65328 */

public let KEY_Eject = GDK_KEY_Eject /* gint 269025068 */

public let KEY_Emacron = GDK_KEY_Emacron /* gint 938 */

public let KEY_End = GDK_KEY_End /* gint 65367 */

public let KEY_Eogonek = GDK_KEY_Eogonek /* gint 458 */

public let KEY_Escape = GDK_KEY_Escape /* gint 65307 */

public let KEY_Eth = GDK_KEY_Eth /* gint 208 */

public let KEY_Etilde = GDK_KEY_Etilde /* gint 16785084 */

public let KEY_EuroSign = GDK_KEY_EuroSign /* gint 8364 */

public let KEY_Excel = GDK_KEY_Excel /* gint 269025116 */

public let KEY_Execute = GDK_KEY_Execute /* gint 65378 */

public let KEY_Explorer = GDK_KEY_Explorer /* gint 269025117 */

public let KEY_F = GDK_KEY_F /* gint 70 */

public let KEY_F1 = GDK_KEY_F1 /* gint 65470 */

public let KEY_F10 = GDK_KEY_F10 /* gint 65479 */

public let KEY_F11 = GDK_KEY_F11 /* gint 65480 */

public let KEY_F12 = GDK_KEY_F12 /* gint 65481 */

public let KEY_F13 = GDK_KEY_F13 /* gint 65482 */

public let KEY_F14 = GDK_KEY_F14 /* gint 65483 */

public let KEY_F15 = GDK_KEY_F15 /* gint 65484 */

public let KEY_F16 = GDK_KEY_F16 /* gint 65485 */

public let KEY_F17 = GDK_KEY_F17 /* gint 65486 */

public let KEY_F18 = GDK_KEY_F18 /* gint 65487 */

public let KEY_F19 = GDK_KEY_F19 /* gint 65488 */

public let KEY_F2 = GDK_KEY_F2 /* gint 65471 */

public let KEY_F20 = GDK_KEY_F20 /* gint 65489 */

public let KEY_F21 = GDK_KEY_F21 /* gint 65490 */

public let KEY_F22 = GDK_KEY_F22 /* gint 65491 */

public let KEY_F23 = GDK_KEY_F23 /* gint 65492 */

public let KEY_F24 = GDK_KEY_F24 /* gint 65493 */

public let KEY_F25 = GDK_KEY_F25 /* gint 65494 */

public let KEY_F26 = GDK_KEY_F26 /* gint 65495 */

public let KEY_F27 = GDK_KEY_F27 /* gint 65496 */

public let KEY_F28 = GDK_KEY_F28 /* gint 65497 */

public let KEY_F29 = GDK_KEY_F29 /* gint 65498 */

public let KEY_F3 = GDK_KEY_F3 /* gint 65472 */

public let KEY_F30 = GDK_KEY_F30 /* gint 65499 */

public let KEY_F31 = GDK_KEY_F31 /* gint 65500 */

public let KEY_F32 = GDK_KEY_F32 /* gint 65501 */

public let KEY_F33 = GDK_KEY_F33 /* gint 65502 */

public let KEY_F34 = GDK_KEY_F34 /* gint 65503 */

public let KEY_F35 = GDK_KEY_F35 /* gint 65504 */

public let KEY_F4 = GDK_KEY_F4 /* gint 65473 */

public let KEY_F5 = GDK_KEY_F5 /* gint 65474 */

public let KEY_F6 = GDK_KEY_F6 /* gint 65475 */

public let KEY_F7 = GDK_KEY_F7 /* gint 65476 */

public let KEY_F8 = GDK_KEY_F8 /* gint 65477 */

public let KEY_F9 = GDK_KEY_F9 /* gint 65478 */

public let KEY_FFrancSign = GDK_KEY_FFrancSign /* gint 16785571 */

public let KEY_Fabovedot = GDK_KEY_Fabovedot /* gint 16784926 */

public let KEY_Farsi_0 = GDK_KEY_Farsi_0 /* gint 16778992 */

public let KEY_Farsi_1 = GDK_KEY_Farsi_1 /* gint 16778993 */

public let KEY_Farsi_2 = GDK_KEY_Farsi_2 /* gint 16778994 */

public let KEY_Farsi_3 = GDK_KEY_Farsi_3 /* gint 16778995 */

public let KEY_Farsi_4 = GDK_KEY_Farsi_4 /* gint 16778996 */

public let KEY_Farsi_5 = GDK_KEY_Farsi_5 /* gint 16778997 */

public let KEY_Farsi_6 = GDK_KEY_Farsi_6 /* gint 16778998 */

public let KEY_Farsi_7 = GDK_KEY_Farsi_7 /* gint 16778999 */

public let KEY_Farsi_8 = GDK_KEY_Farsi_8 /* gint 16779000 */

public let KEY_Farsi_9 = GDK_KEY_Farsi_9 /* gint 16779001 */

public let KEY_Farsi_yeh = GDK_KEY_Farsi_yeh /* gint 16778956 */

public let KEY_Favorites = GDK_KEY_Favorites /* gint 269025072 */

public let KEY_Finance = GDK_KEY_Finance /* gint 269025084 */

public let KEY_Find = GDK_KEY_Find /* gint 65384 */

public let KEY_First_Virtual_Screen = GDK_KEY_First_Virtual_Screen /* gint 65232 */

public let KEY_Forward = GDK_KEY_Forward /* gint 269025063 */

public let KEY_FrameBack = GDK_KEY_FrameBack /* gint 269025181 */

public let KEY_FrameForward = GDK_KEY_FrameForward /* gint 269025182 */

public let KEY_G = GDK_KEY_G /* gint 71 */

public let KEY_Gabovedot = GDK_KEY_Gabovedot /* gint 725 */

public let KEY_Game = GDK_KEY_Game /* gint 269025118 */

public let KEY_Gbreve = GDK_KEY_Gbreve /* gint 683 */

public let KEY_Gcaron = GDK_KEY_Gcaron /* gint 16777702 */

public let KEY_Gcedilla = GDK_KEY_Gcedilla /* gint 939 */

public let KEY_Gcircumflex = GDK_KEY_Gcircumflex /* gint 728 */

public let KEY_Georgian_an = GDK_KEY_Georgian_an /* gint 16781520 */

public let KEY_Georgian_ban = GDK_KEY_Georgian_ban /* gint 16781521 */

public let KEY_Georgian_can = GDK_KEY_Georgian_can /* gint 16781546 */

public let KEY_Georgian_char = GDK_KEY_Georgian_char /* gint 16781549 */

public let KEY_Georgian_chin = GDK_KEY_Georgian_chin /* gint 16781545 */

public let KEY_Georgian_cil = GDK_KEY_Georgian_cil /* gint 16781548 */

public let KEY_Georgian_don = GDK_KEY_Georgian_don /* gint 16781523 */

public let KEY_Georgian_en = GDK_KEY_Georgian_en /* gint 16781524 */

public let KEY_Georgian_fi = GDK_KEY_Georgian_fi /* gint 16781558 */

public let KEY_Georgian_gan = GDK_KEY_Georgian_gan /* gint 16781522 */

public let KEY_Georgian_ghan = GDK_KEY_Georgian_ghan /* gint 16781542 */

public let KEY_Georgian_hae = GDK_KEY_Georgian_hae /* gint 16781552 */

public let KEY_Georgian_har = GDK_KEY_Georgian_har /* gint 16781556 */

public let KEY_Georgian_he = GDK_KEY_Georgian_he /* gint 16781553 */

public let KEY_Georgian_hie = GDK_KEY_Georgian_hie /* gint 16781554 */

public let KEY_Georgian_hoe = GDK_KEY_Georgian_hoe /* gint 16781557 */

public let KEY_Georgian_in = GDK_KEY_Georgian_in /* gint 16781528 */

public let KEY_Georgian_jhan = GDK_KEY_Georgian_jhan /* gint 16781551 */

public let KEY_Georgian_jil = GDK_KEY_Georgian_jil /* gint 16781547 */

public let KEY_Georgian_kan = GDK_KEY_Georgian_kan /* gint 16781529 */

public let KEY_Georgian_khar = GDK_KEY_Georgian_khar /* gint 16781541 */

public let KEY_Georgian_las = GDK_KEY_Georgian_las /* gint 16781530 */

public let KEY_Georgian_man = GDK_KEY_Georgian_man /* gint 16781531 */

public let KEY_Georgian_nar = GDK_KEY_Georgian_nar /* gint 16781532 */

public let KEY_Georgian_on = GDK_KEY_Georgian_on /* gint 16781533 */

public let KEY_Georgian_par = GDK_KEY_Georgian_par /* gint 16781534 */

public let KEY_Georgian_phar = GDK_KEY_Georgian_phar /* gint 16781540 */

public let KEY_Georgian_qar = GDK_KEY_Georgian_qar /* gint 16781543 */

public let KEY_Georgian_rae = GDK_KEY_Georgian_rae /* gint 16781536 */

public let KEY_Georgian_san = GDK_KEY_Georgian_san /* gint 16781537 */

public let KEY_Georgian_shin = GDK_KEY_Georgian_shin /* gint 16781544 */

public let KEY_Georgian_tan = GDK_KEY_Georgian_tan /* gint 16781527 */

public let KEY_Georgian_tar = GDK_KEY_Georgian_tar /* gint 16781538 */

public let KEY_Georgian_un = GDK_KEY_Georgian_un /* gint 16781539 */

public let KEY_Georgian_vin = GDK_KEY_Georgian_vin /* gint 16781525 */

public let KEY_Georgian_we = GDK_KEY_Georgian_we /* gint 16781555 */

public let KEY_Georgian_xan = GDK_KEY_Georgian_xan /* gint 16781550 */

public let KEY_Georgian_zen = GDK_KEY_Georgian_zen /* gint 16781526 */

public let KEY_Georgian_zhar = GDK_KEY_Georgian_zhar /* gint 16781535 */

public let KEY_Go = GDK_KEY_Go /* gint 269025119 */

public let KEY_Greek_ALPHA = GDK_KEY_Greek_ALPHA /* gint 1985 */

public let KEY_Greek_ALPHAaccent = GDK_KEY_Greek_ALPHAaccent /* gint 1953 */

public let KEY_Greek_BETA = GDK_KEY_Greek_BETA /* gint 1986 */

public let KEY_Greek_CHI = GDK_KEY_Greek_CHI /* gint 2007 */

public let KEY_Greek_DELTA = GDK_KEY_Greek_DELTA /* gint 1988 */

public let KEY_Greek_EPSILON = GDK_KEY_Greek_EPSILON /* gint 1989 */

public let KEY_Greek_EPSILONaccent = GDK_KEY_Greek_EPSILONaccent /* gint 1954 */

public let KEY_Greek_ETA = GDK_KEY_Greek_ETA /* gint 1991 */

public let KEY_Greek_ETAaccent = GDK_KEY_Greek_ETAaccent /* gint 1955 */

public let KEY_Greek_GAMMA = GDK_KEY_Greek_GAMMA /* gint 1987 */

public let KEY_Greek_IOTA = GDK_KEY_Greek_IOTA /* gint 1993 */

public let KEY_Greek_IOTAaccent = GDK_KEY_Greek_IOTAaccent /* gint 1956 */

public let KEY_Greek_IOTAdiaeresis = GDK_KEY_Greek_IOTAdiaeresis /* gint 1957 */

public let KEY_Greek_IOTAdieresis = GDK_KEY_Greek_IOTAdieresis /* gint 1957 */

public let KEY_Greek_KAPPA = GDK_KEY_Greek_KAPPA /* gint 1994 */

public let KEY_Greek_LAMBDA = GDK_KEY_Greek_LAMBDA /* gint 1995 */

public let KEY_Greek_LAMDA = GDK_KEY_Greek_LAMDA /* gint 1995 */

public let KEY_Greek_MU = GDK_KEY_Greek_MU /* gint 1996 */

public let KEY_Greek_NU = GDK_KEY_Greek_NU /* gint 1997 */

public let KEY_Greek_OMEGA = GDK_KEY_Greek_OMEGA /* gint 2009 */

public let KEY_Greek_OMEGAaccent = GDK_KEY_Greek_OMEGAaccent /* gint 1963 */

public let KEY_Greek_OMICRON = GDK_KEY_Greek_OMICRON /* gint 1999 */

public let KEY_Greek_OMICRONaccent = GDK_KEY_Greek_OMICRONaccent /* gint 1959 */

public let KEY_Greek_PHI = GDK_KEY_Greek_PHI /* gint 2006 */

public let KEY_Greek_PI = GDK_KEY_Greek_PI /* gint 2000 */

public let KEY_Greek_PSI = GDK_KEY_Greek_PSI /* gint 2008 */

public let KEY_Greek_RHO = GDK_KEY_Greek_RHO /* gint 2001 */

public let KEY_Greek_SIGMA = GDK_KEY_Greek_SIGMA /* gint 2002 */

public let KEY_Greek_TAU = GDK_KEY_Greek_TAU /* gint 2004 */

public let KEY_Greek_THETA = GDK_KEY_Greek_THETA /* gint 1992 */

public let KEY_Greek_UPSILON = GDK_KEY_Greek_UPSILON /* gint 2005 */

public let KEY_Greek_UPSILONaccent = GDK_KEY_Greek_UPSILONaccent /* gint 1960 */

public let KEY_Greek_UPSILONdieresis = GDK_KEY_Greek_UPSILONdieresis /* gint 1961 */

public let KEY_Greek_XI = GDK_KEY_Greek_XI /* gint 1998 */

public let KEY_Greek_ZETA = GDK_KEY_Greek_ZETA /* gint 1990 */

public let KEY_Greek_accentdieresis = GDK_KEY_Greek_accentdieresis /* gint 1966 */

public let KEY_Greek_alpha = GDK_KEY_Greek_alpha /* gint 2017 */

public let KEY_Greek_alphaaccent = GDK_KEY_Greek_alphaaccent /* gint 1969 */

public let KEY_Greek_beta = GDK_KEY_Greek_beta /* gint 2018 */

public let KEY_Greek_chi = GDK_KEY_Greek_chi /* gint 2039 */

public let KEY_Greek_delta = GDK_KEY_Greek_delta /* gint 2020 */

public let KEY_Greek_epsilon = GDK_KEY_Greek_epsilon /* gint 2021 */

public let KEY_Greek_epsilonaccent = GDK_KEY_Greek_epsilonaccent /* gint 1970 */

public let KEY_Greek_eta = GDK_KEY_Greek_eta /* gint 2023 */

public let KEY_Greek_etaaccent = GDK_KEY_Greek_etaaccent /* gint 1971 */

public let KEY_Greek_finalsmallsigma = GDK_KEY_Greek_finalsmallsigma /* gint 2035 */

public let KEY_Greek_gamma = GDK_KEY_Greek_gamma /* gint 2019 */

public let KEY_Greek_horizbar = GDK_KEY_Greek_horizbar /* gint 1967 */

public let KEY_Greek_iota = GDK_KEY_Greek_iota /* gint 2025 */

public let KEY_Greek_iotaaccent = GDK_KEY_Greek_iotaaccent /* gint 1972 */

public let KEY_Greek_iotaaccentdieresis = GDK_KEY_Greek_iotaaccentdieresis /* gint 1974 */

public let KEY_Greek_iotadieresis = GDK_KEY_Greek_iotadieresis /* gint 1973 */

public let KEY_Greek_kappa = GDK_KEY_Greek_kappa /* gint 2026 */

public let KEY_Greek_lambda = GDK_KEY_Greek_lambda /* gint 2027 */

public let KEY_Greek_lamda = GDK_KEY_Greek_lamda /* gint 2027 */

public let KEY_Greek_mu = GDK_KEY_Greek_mu /* gint 2028 */

public let KEY_Greek_nu = GDK_KEY_Greek_nu /* gint 2029 */

public let KEY_Greek_omega = GDK_KEY_Greek_omega /* gint 2041 */

public let KEY_Greek_omegaaccent = GDK_KEY_Greek_omegaaccent /* gint 1979 */

public let KEY_Greek_omicron = GDK_KEY_Greek_omicron /* gint 2031 */

public let KEY_Greek_omicronaccent = GDK_KEY_Greek_omicronaccent /* gint 1975 */

public let KEY_Greek_phi = GDK_KEY_Greek_phi /* gint 2038 */

public let KEY_Greek_pi = GDK_KEY_Greek_pi /* gint 2032 */

public let KEY_Greek_psi = GDK_KEY_Greek_psi /* gint 2040 */

public let KEY_Greek_rho = GDK_KEY_Greek_rho /* gint 2033 */

public let KEY_Greek_sigma = GDK_KEY_Greek_sigma /* gint 2034 */

public let KEY_Greek_switch = GDK_KEY_Greek_switch /* gint 65406 */

public let KEY_Greek_tau = GDK_KEY_Greek_tau /* gint 2036 */

public let KEY_Greek_theta = GDK_KEY_Greek_theta /* gint 2024 */

public let KEY_Greek_upsilon = GDK_KEY_Greek_upsilon /* gint 2037 */

public let KEY_Greek_upsilonaccent = GDK_KEY_Greek_upsilonaccent /* gint 1976 */

public let KEY_Greek_upsilonaccentdieresis = GDK_KEY_Greek_upsilonaccentdieresis /* gint 1978 */

public let KEY_Greek_upsilondieresis = GDK_KEY_Greek_upsilondieresis /* gint 1977 */

public let KEY_Greek_xi = GDK_KEY_Greek_xi /* gint 2030 */

public let KEY_Greek_zeta = GDK_KEY_Greek_zeta /* gint 2022 */

public let KEY_Green = GDK_KEY_Green /* gint 269025188 */

public let KEY_H = GDK_KEY_H /* gint 72 */

public let KEY_Hangul = GDK_KEY_Hangul /* gint 65329 */

public let KEY_Hangul_A = GDK_KEY_Hangul_A /* gint 3775 */

public let KEY_Hangul_AE = GDK_KEY_Hangul_AE /* gint 3776 */

public let KEY_Hangul_AraeA = GDK_KEY_Hangul_AraeA /* gint 3830 */

public let KEY_Hangul_AraeAE = GDK_KEY_Hangul_AraeAE /* gint 3831 */

public let KEY_Hangul_Banja = GDK_KEY_Hangul_Banja /* gint 65337 */

public let KEY_Hangul_Cieuc = GDK_KEY_Hangul_Cieuc /* gint 3770 */

public let KEY_Hangul_Codeinput = GDK_KEY_Hangul_Codeinput /* gint 65335 */

public let KEY_Hangul_Dikeud = GDK_KEY_Hangul_Dikeud /* gint 3751 */

public let KEY_Hangul_E = GDK_KEY_Hangul_E /* gint 3780 */

public let KEY_Hangul_EO = GDK_KEY_Hangul_EO /* gint 3779 */

public let KEY_Hangul_EU = GDK_KEY_Hangul_EU /* gint 3793 */

public let KEY_Hangul_End = GDK_KEY_Hangul_End /* gint 65331 */

public let KEY_Hangul_Hanja = GDK_KEY_Hangul_Hanja /* gint 65332 */

public let KEY_Hangul_Hieuh = GDK_KEY_Hangul_Hieuh /* gint 3774 */

public let KEY_Hangul_I = GDK_KEY_Hangul_I /* gint 3795 */

public let KEY_Hangul_Ieung = GDK_KEY_Hangul_Ieung /* gint 3767 */

public let KEY_Hangul_J_Cieuc = GDK_KEY_Hangul_J_Cieuc /* gint 3818 */

public let KEY_Hangul_J_Dikeud = GDK_KEY_Hangul_J_Dikeud /* gint 3802 */

public let KEY_Hangul_J_Hieuh = GDK_KEY_Hangul_J_Hieuh /* gint 3822 */

public let KEY_Hangul_J_Ieung = GDK_KEY_Hangul_J_Ieung /* gint 3816 */

public let KEY_Hangul_J_Jieuj = GDK_KEY_Hangul_J_Jieuj /* gint 3817 */

public let KEY_Hangul_J_Khieuq = GDK_KEY_Hangul_J_Khieuq /* gint 3819 */

public let KEY_Hangul_J_Kiyeog = GDK_KEY_Hangul_J_Kiyeog /* gint 3796 */

public let KEY_Hangul_J_KiyeogSios = GDK_KEY_Hangul_J_KiyeogSios /* gint 3798 */

public let KEY_Hangul_J_KkogjiDalrinIeung = GDK_KEY_Hangul_J_KkogjiDalrinIeung /* gint 3833 */

public let KEY_Hangul_J_Mieum = GDK_KEY_Hangul_J_Mieum /* gint 3811 */

public let KEY_Hangul_J_Nieun = GDK_KEY_Hangul_J_Nieun /* gint 3799 */

public let KEY_Hangul_J_NieunHieuh = GDK_KEY_Hangul_J_NieunHieuh /* gint 3801 */

public let KEY_Hangul_J_NieunJieuj = GDK_KEY_Hangul_J_NieunJieuj /* gint 3800 */

public let KEY_Hangul_J_PanSios = GDK_KEY_Hangul_J_PanSios /* gint 3832 */

public let KEY_Hangul_J_Phieuf = GDK_KEY_Hangul_J_Phieuf /* gint 3821 */

public let KEY_Hangul_J_Pieub = GDK_KEY_Hangul_J_Pieub /* gint 3812 */

public let KEY_Hangul_J_PieubSios = GDK_KEY_Hangul_J_PieubSios /* gint 3813 */

public let KEY_Hangul_J_Rieul = GDK_KEY_Hangul_J_Rieul /* gint 3803 */

public let KEY_Hangul_J_RieulHieuh = GDK_KEY_Hangul_J_RieulHieuh /* gint 3810 */

public let KEY_Hangul_J_RieulKiyeog = GDK_KEY_Hangul_J_RieulKiyeog /* gint 3804 */

public let KEY_Hangul_J_RieulMieum = GDK_KEY_Hangul_J_RieulMieum /* gint 3805 */

public let KEY_Hangul_J_RieulPhieuf = GDK_KEY_Hangul_J_RieulPhieuf /* gint 3809 */

public let KEY_Hangul_J_RieulPieub = GDK_KEY_Hangul_J_RieulPieub /* gint 3806 */

public let KEY_Hangul_J_RieulSios = GDK_KEY_Hangul_J_RieulSios /* gint 3807 */

public let KEY_Hangul_J_RieulTieut = GDK_KEY_Hangul_J_RieulTieut /* gint 3808 */

public let KEY_Hangul_J_Sios = GDK_KEY_Hangul_J_Sios /* gint 3814 */

public let KEY_Hangul_J_SsangKiyeog = GDK_KEY_Hangul_J_SsangKiyeog /* gint 3797 */

public let KEY_Hangul_J_SsangSios = GDK_KEY_Hangul_J_SsangSios /* gint 3815 */

public let KEY_Hangul_J_Tieut = GDK_KEY_Hangul_J_Tieut /* gint 3820 */

public let KEY_Hangul_J_YeorinHieuh = GDK_KEY_Hangul_J_YeorinHieuh /* gint 3834 */

public let KEY_Hangul_Jamo = GDK_KEY_Hangul_Jamo /* gint 65333 */

public let KEY_Hangul_Jeonja = GDK_KEY_Hangul_Jeonja /* gint 65336 */

public let KEY_Hangul_Jieuj = GDK_KEY_Hangul_Jieuj /* gint 3768 */

public let KEY_Hangul_Khieuq = GDK_KEY_Hangul_Khieuq /* gint 3771 */

public let KEY_Hangul_Kiyeog = GDK_KEY_Hangul_Kiyeog /* gint 3745 */

public let KEY_Hangul_KiyeogSios = GDK_KEY_Hangul_KiyeogSios /* gint 3747 */

public let KEY_Hangul_KkogjiDalrinIeung = GDK_KEY_Hangul_KkogjiDalrinIeung /* gint 3827 */

public let KEY_Hangul_Mieum = GDK_KEY_Hangul_Mieum /* gint 3761 */

public let KEY_Hangul_MultipleCandidate = GDK_KEY_Hangul_MultipleCandidate /* gint 65341 */

public let KEY_Hangul_Nieun = GDK_KEY_Hangul_Nieun /* gint 3748 */

public let KEY_Hangul_NieunHieuh = GDK_KEY_Hangul_NieunHieuh /* gint 3750 */

public let KEY_Hangul_NieunJieuj = GDK_KEY_Hangul_NieunJieuj /* gint 3749 */

public let KEY_Hangul_O = GDK_KEY_Hangul_O /* gint 3783 */

public let KEY_Hangul_OE = GDK_KEY_Hangul_OE /* gint 3786 */

public let KEY_Hangul_PanSios = GDK_KEY_Hangul_PanSios /* gint 3826 */

public let KEY_Hangul_Phieuf = GDK_KEY_Hangul_Phieuf /* gint 3773 */

public let KEY_Hangul_Pieub = GDK_KEY_Hangul_Pieub /* gint 3762 */

public let KEY_Hangul_PieubSios = GDK_KEY_Hangul_PieubSios /* gint 3764 */

public let KEY_Hangul_PostHanja = GDK_KEY_Hangul_PostHanja /* gint 65339 */

public let KEY_Hangul_PreHanja = GDK_KEY_Hangul_PreHanja /* gint 65338 */

public let KEY_Hangul_PreviousCandidate = GDK_KEY_Hangul_PreviousCandidate /* gint 65342 */

public let KEY_Hangul_Rieul = GDK_KEY_Hangul_Rieul /* gint 3753 */

public let KEY_Hangul_RieulHieuh = GDK_KEY_Hangul_RieulHieuh /* gint 3760 */

public let KEY_Hangul_RieulKiyeog = GDK_KEY_Hangul_RieulKiyeog /* gint 3754 */

public let KEY_Hangul_RieulMieum = GDK_KEY_Hangul_RieulMieum /* gint 3755 */

public let KEY_Hangul_RieulPhieuf = GDK_KEY_Hangul_RieulPhieuf /* gint 3759 */

public let KEY_Hangul_RieulPieub = GDK_KEY_Hangul_RieulPieub /* gint 3756 */

public let KEY_Hangul_RieulSios = GDK_KEY_Hangul_RieulSios /* gint 3757 */

public let KEY_Hangul_RieulTieut = GDK_KEY_Hangul_RieulTieut /* gint 3758 */

public let KEY_Hangul_RieulYeorinHieuh = GDK_KEY_Hangul_RieulYeorinHieuh /* gint 3823 */

public let KEY_Hangul_Romaja = GDK_KEY_Hangul_Romaja /* gint 65334 */

public let KEY_Hangul_SingleCandidate = GDK_KEY_Hangul_SingleCandidate /* gint 65340 */

public let KEY_Hangul_Sios = GDK_KEY_Hangul_Sios /* gint 3765 */

public let KEY_Hangul_Special = GDK_KEY_Hangul_Special /* gint 65343 */

public let KEY_Hangul_SsangDikeud = GDK_KEY_Hangul_SsangDikeud /* gint 3752 */

public let KEY_Hangul_SsangJieuj = GDK_KEY_Hangul_SsangJieuj /* gint 3769 */

public let KEY_Hangul_SsangKiyeog = GDK_KEY_Hangul_SsangKiyeog /* gint 3746 */

public let KEY_Hangul_SsangPieub = GDK_KEY_Hangul_SsangPieub /* gint 3763 */

public let KEY_Hangul_SsangSios = GDK_KEY_Hangul_SsangSios /* gint 3766 */

public let KEY_Hangul_Start = GDK_KEY_Hangul_Start /* gint 65330 */

public let KEY_Hangul_SunkyeongeumMieum = GDK_KEY_Hangul_SunkyeongeumMieum /* gint 3824 */

public let KEY_Hangul_SunkyeongeumPhieuf = GDK_KEY_Hangul_SunkyeongeumPhieuf /* gint 3828 */

public let KEY_Hangul_SunkyeongeumPieub = GDK_KEY_Hangul_SunkyeongeumPieub /* gint 3825 */

public let KEY_Hangul_Tieut = GDK_KEY_Hangul_Tieut /* gint 3772 */

public let KEY_Hangul_U = GDK_KEY_Hangul_U /* gint 3788 */

public let KEY_Hangul_WA = GDK_KEY_Hangul_WA /* gint 3784 */

public let KEY_Hangul_WAE = GDK_KEY_Hangul_WAE /* gint 3785 */

public let KEY_Hangul_WE = GDK_KEY_Hangul_WE /* gint 3790 */

public let KEY_Hangul_WEO = GDK_KEY_Hangul_WEO /* gint 3789 */

public let KEY_Hangul_WI = GDK_KEY_Hangul_WI /* gint 3791 */

public let KEY_Hangul_YA = GDK_KEY_Hangul_YA /* gint 3777 */

public let KEY_Hangul_YAE = GDK_KEY_Hangul_YAE /* gint 3778 */

public let KEY_Hangul_YE = GDK_KEY_Hangul_YE /* gint 3782 */

public let KEY_Hangul_YEO = GDK_KEY_Hangul_YEO /* gint 3781 */

public let KEY_Hangul_YI = GDK_KEY_Hangul_YI /* gint 3794 */

public let KEY_Hangul_YO = GDK_KEY_Hangul_YO /* gint 3787 */

public let KEY_Hangul_YU = GDK_KEY_Hangul_YU /* gint 3792 */

public let KEY_Hangul_YeorinHieuh = GDK_KEY_Hangul_YeorinHieuh /* gint 3829 */

public let KEY_Hangul_switch = GDK_KEY_Hangul_switch /* gint 65406 */

public let KEY_Hankaku = GDK_KEY_Hankaku /* gint 65321 */

public let KEY_Hcircumflex = GDK_KEY_Hcircumflex /* gint 678 */

public let KEY_Hebrew_switch = GDK_KEY_Hebrew_switch /* gint 65406 */

public let KEY_Help = GDK_KEY_Help /* gint 65386 */

public let KEY_Henkan = GDK_KEY_Henkan /* gint 65315 */

public let KEY_Henkan_Mode = GDK_KEY_Henkan_Mode /* gint 65315 */

public let KEY_Hibernate = GDK_KEY_Hibernate /* gint 269025192 */

public let KEY_Hiragana = GDK_KEY_Hiragana /* gint 65317 */

public let KEY_Hiragana_Katakana = GDK_KEY_Hiragana_Katakana /* gint 65319 */

public let KEY_History = GDK_KEY_History /* gint 269025079 */

public let KEY_Home = GDK_KEY_Home /* gint 65360 */

public let KEY_HomePage = GDK_KEY_HomePage /* gint 269025048 */

public let KEY_HotLinks = GDK_KEY_HotLinks /* gint 269025082 */

public let KEY_Hstroke = GDK_KEY_Hstroke /* gint 673 */

public let KEY_Hyper_L = GDK_KEY_Hyper_L /* gint 65517 */

public let KEY_Hyper_R = GDK_KEY_Hyper_R /* gint 65518 */

public let KEY_I = GDK_KEY_I /* gint 73 */

public let KEY_ISO_Center_Object = GDK_KEY_ISO_Center_Object /* gint 65075 */

public let KEY_ISO_Continuous_Underline = GDK_KEY_ISO_Continuous_Underline /* gint 65072 */

public let KEY_ISO_Discontinuous_Underline = GDK_KEY_ISO_Discontinuous_Underline /* gint 65073 */

public let KEY_ISO_Emphasize = GDK_KEY_ISO_Emphasize /* gint 65074 */

public let KEY_ISO_Enter = GDK_KEY_ISO_Enter /* gint 65076 */

public let KEY_ISO_Fast_Cursor_Down = GDK_KEY_ISO_Fast_Cursor_Down /* gint 65071 */

public let KEY_ISO_Fast_Cursor_Left = GDK_KEY_ISO_Fast_Cursor_Left /* gint 65068 */

public let KEY_ISO_Fast_Cursor_Right = GDK_KEY_ISO_Fast_Cursor_Right /* gint 65069 */

public let KEY_ISO_Fast_Cursor_Up = GDK_KEY_ISO_Fast_Cursor_Up /* gint 65070 */

public let KEY_ISO_First_Group = GDK_KEY_ISO_First_Group /* gint 65036 */

public let KEY_ISO_First_Group_Lock = GDK_KEY_ISO_First_Group_Lock /* gint 65037 */

public let KEY_ISO_Group_Latch = GDK_KEY_ISO_Group_Latch /* gint 65030 */

public let KEY_ISO_Group_Lock = GDK_KEY_ISO_Group_Lock /* gint 65031 */

public let KEY_ISO_Group_Shift = GDK_KEY_ISO_Group_Shift /* gint 65406 */

public let KEY_ISO_Last_Group = GDK_KEY_ISO_Last_Group /* gint 65038 */

public let KEY_ISO_Last_Group_Lock = GDK_KEY_ISO_Last_Group_Lock /* gint 65039 */

public let KEY_ISO_Left_Tab = GDK_KEY_ISO_Left_Tab /* gint 65056 */

public let KEY_ISO_Level2_Latch = GDK_KEY_ISO_Level2_Latch /* gint 65026 */

public let KEY_ISO_Level3_Latch = GDK_KEY_ISO_Level3_Latch /* gint 65028 */

public let KEY_ISO_Level3_Lock = GDK_KEY_ISO_Level3_Lock /* gint 65029 */

public let KEY_ISO_Level3_Shift = GDK_KEY_ISO_Level3_Shift /* gint 65027 */

public let KEY_ISO_Level5_Latch = GDK_KEY_ISO_Level5_Latch /* gint 65042 */

public let KEY_ISO_Level5_Lock = GDK_KEY_ISO_Level5_Lock /* gint 65043 */

public let KEY_ISO_Level5_Shift = GDK_KEY_ISO_Level5_Shift /* gint 65041 */

public let KEY_ISO_Lock = GDK_KEY_ISO_Lock /* gint 65025 */

public let KEY_ISO_Move_Line_Down = GDK_KEY_ISO_Move_Line_Down /* gint 65058 */

public let KEY_ISO_Move_Line_Up = GDK_KEY_ISO_Move_Line_Up /* gint 65057 */

public let KEY_ISO_Next_Group = GDK_KEY_ISO_Next_Group /* gint 65032 */

public let KEY_ISO_Next_Group_Lock = GDK_KEY_ISO_Next_Group_Lock /* gint 65033 */

public let KEY_ISO_Partial_Line_Down = GDK_KEY_ISO_Partial_Line_Down /* gint 65060 */

public let KEY_ISO_Partial_Line_Up = GDK_KEY_ISO_Partial_Line_Up /* gint 65059 */

public let KEY_ISO_Partial_Space_Left = GDK_KEY_ISO_Partial_Space_Left /* gint 65061 */

public let KEY_ISO_Partial_Space_Right = GDK_KEY_ISO_Partial_Space_Right /* gint 65062 */

public let KEY_ISO_Prev_Group = GDK_KEY_ISO_Prev_Group /* gint 65034 */

public let KEY_ISO_Prev_Group_Lock = GDK_KEY_ISO_Prev_Group_Lock /* gint 65035 */

public let KEY_ISO_Release_Both_Margins = GDK_KEY_ISO_Release_Both_Margins /* gint 65067 */

public let KEY_ISO_Release_Margin_Left = GDK_KEY_ISO_Release_Margin_Left /* gint 65065 */

public let KEY_ISO_Release_Margin_Right = GDK_KEY_ISO_Release_Margin_Right /* gint 65066 */

public let KEY_ISO_Set_Margin_Left = GDK_KEY_ISO_Set_Margin_Left /* gint 65063 */

public let KEY_ISO_Set_Margin_Right = GDK_KEY_ISO_Set_Margin_Right /* gint 65064 */

public let KEY_Iabovedot = GDK_KEY_Iabovedot /* gint 681 */

public let KEY_Iacute = GDK_KEY_Iacute /* gint 205 */

public let KEY_Ibelowdot = GDK_KEY_Ibelowdot /* gint 16785098 */

public let KEY_Ibreve = GDK_KEY_Ibreve /* gint 16777516 */

public let KEY_Icircumflex = GDK_KEY_Icircumflex /* gint 206 */

public let KEY_Idiaeresis = GDK_KEY_Idiaeresis /* gint 207 */

public let KEY_Igrave = GDK_KEY_Igrave /* gint 204 */

public let KEY_Ihook = GDK_KEY_Ihook /* gint 16785096 */

public let KEY_Imacron = GDK_KEY_Imacron /* gint 975 */

public let KEY_Insert = GDK_KEY_Insert /* gint 65379 */

public let KEY_Iogonek = GDK_KEY_Iogonek /* gint 967 */

public let KEY_Itilde = GDK_KEY_Itilde /* gint 933 */

public let KEY_J = GDK_KEY_J /* gint 74 */

public let KEY_Jcircumflex = GDK_KEY_Jcircumflex /* gint 684 */

public let KEY_K = GDK_KEY_K /* gint 75 */

public let KEY_KP_0 = GDK_KEY_KP_0 /* gint 65456 */

public let KEY_KP_1 = GDK_KEY_KP_1 /* gint 65457 */

public let KEY_KP_2 = GDK_KEY_KP_2 /* gint 65458 */

public let KEY_KP_3 = GDK_KEY_KP_3 /* gint 65459 */

public let KEY_KP_4 = GDK_KEY_KP_4 /* gint 65460 */

public let KEY_KP_5 = GDK_KEY_KP_5 /* gint 65461 */

public let KEY_KP_6 = GDK_KEY_KP_6 /* gint 65462 */

public let KEY_KP_7 = GDK_KEY_KP_7 /* gint 65463 */

public let KEY_KP_8 = GDK_KEY_KP_8 /* gint 65464 */

public let KEY_KP_9 = GDK_KEY_KP_9 /* gint 65465 */

public let KEY_KP_Add = GDK_KEY_KP_Add /* gint 65451 */

public let KEY_KP_Begin = GDK_KEY_KP_Begin /* gint 65437 */

public let KEY_KP_Decimal = GDK_KEY_KP_Decimal /* gint 65454 */

public let KEY_KP_Delete = GDK_KEY_KP_Delete /* gint 65439 */

public let KEY_KP_Divide = GDK_KEY_KP_Divide /* gint 65455 */

public let KEY_KP_Down = GDK_KEY_KP_Down /* gint 65433 */

public let KEY_KP_End = GDK_KEY_KP_End /* gint 65436 */

public let KEY_KP_Enter = GDK_KEY_KP_Enter /* gint 65421 */

public let KEY_KP_Equal = GDK_KEY_KP_Equal /* gint 65469 */

public let KEY_KP_F1 = GDK_KEY_KP_F1 /* gint 65425 */

public let KEY_KP_F2 = GDK_KEY_KP_F2 /* gint 65426 */

public let KEY_KP_F3 = GDK_KEY_KP_F3 /* gint 65427 */

public let KEY_KP_F4 = GDK_KEY_KP_F4 /* gint 65428 */

public let KEY_KP_Home = GDK_KEY_KP_Home /* gint 65429 */

public let KEY_KP_Insert = GDK_KEY_KP_Insert /* gint 65438 */

public let KEY_KP_Left = GDK_KEY_KP_Left /* gint 65430 */

public let KEY_KP_Multiply = GDK_KEY_KP_Multiply /* gint 65450 */

public let KEY_KP_Next = GDK_KEY_KP_Next /* gint 65435 */

public let KEY_KP_Page_Down = GDK_KEY_KP_Page_Down /* gint 65435 */

public let KEY_KP_Page_Up = GDK_KEY_KP_Page_Up /* gint 65434 */

public let KEY_KP_Prior = GDK_KEY_KP_Prior /* gint 65434 */

public let KEY_KP_Right = GDK_KEY_KP_Right /* gint 65432 */

public let KEY_KP_Separator = GDK_KEY_KP_Separator /* gint 65452 */

public let KEY_KP_Space = GDK_KEY_KP_Space /* gint 65408 */

public let KEY_KP_Subtract = GDK_KEY_KP_Subtract /* gint 65453 */

public let KEY_KP_Tab = GDK_KEY_KP_Tab /* gint 65417 */

public let KEY_KP_Up = GDK_KEY_KP_Up /* gint 65431 */

public let KEY_Kana_Lock = GDK_KEY_Kana_Lock /* gint 65325 */

public let KEY_Kana_Shift = GDK_KEY_Kana_Shift /* gint 65326 */

public let KEY_Kanji = GDK_KEY_Kanji /* gint 65313 */

public let KEY_Kanji_Bangou = GDK_KEY_Kanji_Bangou /* gint 65335 */

public let KEY_Katakana = GDK_KEY_Katakana /* gint 65318 */

public let KEY_KbdBrightnessDown = GDK_KEY_KbdBrightnessDown /* gint 269025030 */

public let KEY_KbdBrightnessUp = GDK_KEY_KbdBrightnessUp /* gint 269025029 */

public let KEY_KbdLightOnOff = GDK_KEY_KbdLightOnOff /* gint 269025028 */

public let KEY_Kcedilla = GDK_KEY_Kcedilla /* gint 979 */

public let KEY_Korean_Won = GDK_KEY_Korean_Won /* gint 3839 */

public let KEY_L = GDK_KEY_L /* gint 76 */

public let KEY_L1 = GDK_KEY_L1 /* gint 65480 */

public let KEY_L10 = GDK_KEY_L10 /* gint 65489 */

public let KEY_L2 = GDK_KEY_L2 /* gint 65481 */

public let KEY_L3 = GDK_KEY_L3 /* gint 65482 */

public let KEY_L4 = GDK_KEY_L4 /* gint 65483 */

public let KEY_L5 = GDK_KEY_L5 /* gint 65484 */

public let KEY_L6 = GDK_KEY_L6 /* gint 65485 */

public let KEY_L7 = GDK_KEY_L7 /* gint 65486 */

public let KEY_L8 = GDK_KEY_L8 /* gint 65487 */

public let KEY_L9 = GDK_KEY_L9 /* gint 65488 */

public let KEY_Lacute = GDK_KEY_Lacute /* gint 453 */

public let KEY_Last_Virtual_Screen = GDK_KEY_Last_Virtual_Screen /* gint 65236 */

public let KEY_Launch0 = GDK_KEY_Launch0 /* gint 269025088 */

public let KEY_Launch1 = GDK_KEY_Launch1 /* gint 269025089 */

public let KEY_Launch2 = GDK_KEY_Launch2 /* gint 269025090 */

public let KEY_Launch3 = GDK_KEY_Launch3 /* gint 269025091 */

public let KEY_Launch4 = GDK_KEY_Launch4 /* gint 269025092 */

public let KEY_Launch5 = GDK_KEY_Launch5 /* gint 269025093 */

public let KEY_Launch6 = GDK_KEY_Launch6 /* gint 269025094 */

public let KEY_Launch7 = GDK_KEY_Launch7 /* gint 269025095 */

public let KEY_Launch8 = GDK_KEY_Launch8 /* gint 269025096 */

public let KEY_Launch9 = GDK_KEY_Launch9 /* gint 269025097 */

public let KEY_LaunchA = GDK_KEY_LaunchA /* gint 269025098 */

public let KEY_LaunchB = GDK_KEY_LaunchB /* gint 269025099 */

public let KEY_LaunchC = GDK_KEY_LaunchC /* gint 269025100 */

public let KEY_LaunchD = GDK_KEY_LaunchD /* gint 269025101 */

public let KEY_LaunchE = GDK_KEY_LaunchE /* gint 269025102 */

public let KEY_LaunchF = GDK_KEY_LaunchF /* gint 269025103 */

public let KEY_Lbelowdot = GDK_KEY_Lbelowdot /* gint 16784950 */

public let KEY_Lcaron = GDK_KEY_Lcaron /* gint 421 */

public let KEY_Lcedilla = GDK_KEY_Lcedilla /* gint 934 */

public let KEY_Left = GDK_KEY_Left /* gint 65361 */

public let KEY_LightBulb = GDK_KEY_LightBulb /* gint 269025077 */

public let KEY_Linefeed = GDK_KEY_Linefeed /* gint 65290 */

public let KEY_LiraSign = GDK_KEY_LiraSign /* gint 16785572 */

public let KEY_LogGrabInfo = GDK_KEY_LogGrabInfo /* gint 269024805 */

public let KEY_LogOff = GDK_KEY_LogOff /* gint 269025121 */

public let KEY_LogWindowTree = GDK_KEY_LogWindowTree /* gint 269024804 */

public let KEY_Lstroke = GDK_KEY_Lstroke /* gint 419 */

public let KEY_M = GDK_KEY_M /* gint 77 */

public let KEY_Mabovedot = GDK_KEY_Mabovedot /* gint 16784960 */

public let KEY_Macedonia_DSE = GDK_KEY_Macedonia_DSE /* gint 1717 */

public let KEY_Macedonia_GJE = GDK_KEY_Macedonia_GJE /* gint 1714 */

public let KEY_Macedonia_KJE = GDK_KEY_Macedonia_KJE /* gint 1724 */

public let KEY_Macedonia_dse = GDK_KEY_Macedonia_dse /* gint 1701 */

public let KEY_Macedonia_gje = GDK_KEY_Macedonia_gje /* gint 1698 */

public let KEY_Macedonia_kje = GDK_KEY_Macedonia_kje /* gint 1708 */

public let KEY_Mae_Koho = GDK_KEY_Mae_Koho /* gint 65342 */

public let KEY_Mail = GDK_KEY_Mail /* gint 269025049 */

public let KEY_MailForward = GDK_KEY_MailForward /* gint 269025168 */

public let KEY_Market = GDK_KEY_Market /* gint 269025122 */

public let KEY_Massyo = GDK_KEY_Massyo /* gint 65324 */

public let KEY_Meeting = GDK_KEY_Meeting /* gint 269025123 */

public let KEY_Memo = GDK_KEY_Memo /* gint 269025054 */

public let KEY_Menu = GDK_KEY_Menu /* gint 65383 */

public let KEY_MenuKB = GDK_KEY_MenuKB /* gint 269025125 */

public let KEY_MenuPB = GDK_KEY_MenuPB /* gint 269025126 */

public let KEY_Messenger = GDK_KEY_Messenger /* gint 269025166 */

public let KEY_Meta_L = GDK_KEY_Meta_L /* gint 65511 */

public let KEY_Meta_R = GDK_KEY_Meta_R /* gint 65512 */

public let KEY_MillSign = GDK_KEY_MillSign /* gint 16785573 */

public let KEY_ModeLock = GDK_KEY_ModeLock /* gint 269025025 */

public let KEY_Mode_switch = GDK_KEY_Mode_switch /* gint 65406 */

public let KEY_MonBrightnessDown = GDK_KEY_MonBrightnessDown /* gint 269025027 */

public let KEY_MonBrightnessUp = GDK_KEY_MonBrightnessUp /* gint 269025026 */

public let KEY_MouseKeys_Accel_Enable = GDK_KEY_MouseKeys_Accel_Enable /* gint 65143 */

public let KEY_MouseKeys_Enable = GDK_KEY_MouseKeys_Enable /* gint 65142 */

public let KEY_Muhenkan = GDK_KEY_Muhenkan /* gint 65314 */

public let KEY_Multi_key = GDK_KEY_Multi_key /* gint 65312 */

public let KEY_MultipleCandidate = GDK_KEY_MultipleCandidate /* gint 65341 */

public let KEY_Music = GDK_KEY_Music /* gint 269025170 */

public let KEY_MyComputer = GDK_KEY_MyComputer /* gint 269025075 */

public let KEY_MySites = GDK_KEY_MySites /* gint 269025127 */

public let KEY_N = GDK_KEY_N /* gint 78 */

public let KEY_Nacute = GDK_KEY_Nacute /* gint 465 */

public let KEY_NairaSign = GDK_KEY_NairaSign /* gint 16785574 */

public let KEY_Ncaron = GDK_KEY_Ncaron /* gint 466 */

public let KEY_Ncedilla = GDK_KEY_Ncedilla /* gint 977 */

public let KEY_New = GDK_KEY_New /* gint 269025128 */

public let KEY_NewSheqelSign = GDK_KEY_NewSheqelSign /* gint 16785578 */

public let KEY_News = GDK_KEY_News /* gint 269025129 */

public let KEY_Next = GDK_KEY_Next /* gint 65366 */

public let KEY_Next_VMode = GDK_KEY_Next_VMode /* gint 269024802 */

public let KEY_Next_Virtual_Screen = GDK_KEY_Next_Virtual_Screen /* gint 65234 */

public let KEY_Ntilde = GDK_KEY_Ntilde /* gint 209 */

public let KEY_Num_Lock = GDK_KEY_Num_Lock /* gint 65407 */

public let KEY_O = GDK_KEY_O /* gint 79 */

public let KEY_OE = GDK_KEY_OE /* gint 5052 */

public let KEY_Oacute = GDK_KEY_Oacute /* gint 211 */

public let KEY_Obarred = GDK_KEY_Obarred /* gint 16777631 */

public let KEY_Obelowdot = GDK_KEY_Obelowdot /* gint 16785100 */

public let KEY_Ocaron = GDK_KEY_Ocaron /* gint 16777681 */

public let KEY_Ocircumflex = GDK_KEY_Ocircumflex /* gint 212 */

public let KEY_Ocircumflexacute = GDK_KEY_Ocircumflexacute /* gint 16785104 */

public let KEY_Ocircumflexbelowdot = GDK_KEY_Ocircumflexbelowdot /* gint 16785112 */

public let KEY_Ocircumflexgrave = GDK_KEY_Ocircumflexgrave /* gint 16785106 */

public let KEY_Ocircumflexhook = GDK_KEY_Ocircumflexhook /* gint 16785108 */

public let KEY_Ocircumflextilde = GDK_KEY_Ocircumflextilde /* gint 16785110 */

public let KEY_Odiaeresis = GDK_KEY_Odiaeresis /* gint 214 */

public let KEY_Odoubleacute = GDK_KEY_Odoubleacute /* gint 469 */

public let KEY_OfficeHome = GDK_KEY_OfficeHome /* gint 269025130 */

public let KEY_Ograve = GDK_KEY_Ograve /* gint 210 */

public let KEY_Ohook = GDK_KEY_Ohook /* gint 16785102 */

public let KEY_Ohorn = GDK_KEY_Ohorn /* gint 16777632 */

public let KEY_Ohornacute = GDK_KEY_Ohornacute /* gint 16785114 */

public let KEY_Ohornbelowdot = GDK_KEY_Ohornbelowdot /* gint 16785122 */

public let KEY_Ohorngrave = GDK_KEY_Ohorngrave /* gint 16785116 */

public let KEY_Ohornhook = GDK_KEY_Ohornhook /* gint 16785118 */

public let KEY_Ohorntilde = GDK_KEY_Ohorntilde /* gint 16785120 */

public let KEY_Omacron = GDK_KEY_Omacron /* gint 978 */

public let KEY_Ooblique = GDK_KEY_Ooblique /* gint 216 */

public let KEY_Open = GDK_KEY_Open /* gint 269025131 */

public let KEY_OpenURL = GDK_KEY_OpenURL /* gint 269025080 */

public let KEY_Option = GDK_KEY_Option /* gint 269025132 */

public let KEY_Oslash = GDK_KEY_Oslash /* gint 216 */

public let KEY_Otilde = GDK_KEY_Otilde /* gint 213 */

public let KEY_Overlay1_Enable = GDK_KEY_Overlay1_Enable /* gint 65144 */

public let KEY_Overlay2_Enable = GDK_KEY_Overlay2_Enable /* gint 65145 */

public let KEY_P = GDK_KEY_P /* gint 80 */

public let KEY_Pabovedot = GDK_KEY_Pabovedot /* gint 16784982 */

public let KEY_Page_Down = GDK_KEY_Page_Down /* gint 65366 */

public let KEY_Page_Up = GDK_KEY_Page_Up /* gint 65365 */

public let KEY_Paste = GDK_KEY_Paste /* gint 269025133 */

public let KEY_Pause = GDK_KEY_Pause /* gint 65299 */

public let KEY_PesetaSign = GDK_KEY_PesetaSign /* gint 16785575 */

public let KEY_Phone = GDK_KEY_Phone /* gint 269025134 */

public let KEY_Pictures = GDK_KEY_Pictures /* gint 269025169 */

public let KEY_Pointer_Accelerate = GDK_KEY_Pointer_Accelerate /* gint 65274 */

public let KEY_Pointer_Button1 = GDK_KEY_Pointer_Button1 /* gint 65257 */

public let KEY_Pointer_Button2 = GDK_KEY_Pointer_Button2 /* gint 65258 */

public let KEY_Pointer_Button3 = GDK_KEY_Pointer_Button3 /* gint 65259 */

public let KEY_Pointer_Button4 = GDK_KEY_Pointer_Button4 /* gint 65260 */

public let KEY_Pointer_Button5 = GDK_KEY_Pointer_Button5 /* gint 65261 */

public let KEY_Pointer_Button_Dflt = GDK_KEY_Pointer_Button_Dflt /* gint 65256 */

public let KEY_Pointer_DblClick1 = GDK_KEY_Pointer_DblClick1 /* gint 65263 */

public let KEY_Pointer_DblClick2 = GDK_KEY_Pointer_DblClick2 /* gint 65264 */

public let KEY_Pointer_DblClick3 = GDK_KEY_Pointer_DblClick3 /* gint 65265 */

public let KEY_Pointer_DblClick4 = GDK_KEY_Pointer_DblClick4 /* gint 65266 */

public let KEY_Pointer_DblClick5 = GDK_KEY_Pointer_DblClick5 /* gint 65267 */

public let KEY_Pointer_DblClick_Dflt = GDK_KEY_Pointer_DblClick_Dflt /* gint 65262 */

public let KEY_Pointer_DfltBtnNext = GDK_KEY_Pointer_DfltBtnNext /* gint 65275 */

public let KEY_Pointer_DfltBtnPrev = GDK_KEY_Pointer_DfltBtnPrev /* gint 65276 */

public let KEY_Pointer_Down = GDK_KEY_Pointer_Down /* gint 65251 */

public let KEY_Pointer_DownLeft = GDK_KEY_Pointer_DownLeft /* gint 65254 */

public let KEY_Pointer_DownRight = GDK_KEY_Pointer_DownRight /* gint 65255 */

public let KEY_Pointer_Drag1 = GDK_KEY_Pointer_Drag1 /* gint 65269 */

public let KEY_Pointer_Drag2 = GDK_KEY_Pointer_Drag2 /* gint 65270 */

public let KEY_Pointer_Drag3 = GDK_KEY_Pointer_Drag3 /* gint 65271 */

public let KEY_Pointer_Drag4 = GDK_KEY_Pointer_Drag4 /* gint 65272 */

public let KEY_Pointer_Drag5 = GDK_KEY_Pointer_Drag5 /* gint 65277 */

public let KEY_Pointer_Drag_Dflt = GDK_KEY_Pointer_Drag_Dflt /* gint 65268 */

public let KEY_Pointer_EnableKeys = GDK_KEY_Pointer_EnableKeys /* gint 65273 */

public let KEY_Pointer_Left = GDK_KEY_Pointer_Left /* gint 65248 */

public let KEY_Pointer_Right = GDK_KEY_Pointer_Right /* gint 65249 */

public let KEY_Pointer_Up = GDK_KEY_Pointer_Up /* gint 65250 */

public let KEY_Pointer_UpLeft = GDK_KEY_Pointer_UpLeft /* gint 65252 */

public let KEY_Pointer_UpRight = GDK_KEY_Pointer_UpRight /* gint 65253 */

public let KEY_PowerDown = GDK_KEY_PowerDown /* gint 269025057 */

public let KEY_PowerOff = GDK_KEY_PowerOff /* gint 269025066 */

public let KEY_Prev_VMode = GDK_KEY_Prev_VMode /* gint 269024803 */

public let KEY_Prev_Virtual_Screen = GDK_KEY_Prev_Virtual_Screen /* gint 65233 */

public let KEY_PreviousCandidate = GDK_KEY_PreviousCandidate /* gint 65342 */

public let KEY_Print = GDK_KEY_Print /* gint 65377 */

public let KEY_Prior = GDK_KEY_Prior /* gint 65365 */

public let KEY_Q = GDK_KEY_Q /* gint 81 */

public let KEY_R = GDK_KEY_R /* gint 82 */

public let KEY_R1 = GDK_KEY_R1 /* gint 65490 */

public let KEY_R10 = GDK_KEY_R10 /* gint 65499 */

public let KEY_R11 = GDK_KEY_R11 /* gint 65500 */

public let KEY_R12 = GDK_KEY_R12 /* gint 65501 */

public let KEY_R13 = GDK_KEY_R13 /* gint 65502 */

public let KEY_R14 = GDK_KEY_R14 /* gint 65503 */

public let KEY_R15 = GDK_KEY_R15 /* gint 65504 */

public let KEY_R2 = GDK_KEY_R2 /* gint 65491 */

public let KEY_R3 = GDK_KEY_R3 /* gint 65492 */

public let KEY_R4 = GDK_KEY_R4 /* gint 65493 */

public let KEY_R5 = GDK_KEY_R5 /* gint 65494 */

public let KEY_R6 = GDK_KEY_R6 /* gint 65495 */

public let KEY_R7 = GDK_KEY_R7 /* gint 65496 */

public let KEY_R8 = GDK_KEY_R8 /* gint 65497 */

public let KEY_R9 = GDK_KEY_R9 /* gint 65498 */

public let KEY_Racute = GDK_KEY_Racute /* gint 448 */

public let KEY_Rcaron = GDK_KEY_Rcaron /* gint 472 */

public let KEY_Rcedilla = GDK_KEY_Rcedilla /* gint 931 */

public let KEY_Red = GDK_KEY_Red /* gint 269025187 */

public let KEY_Redo = GDK_KEY_Redo /* gint 65382 */

public let KEY_Refresh = GDK_KEY_Refresh /* gint 269025065 */

public let KEY_Reload = GDK_KEY_Reload /* gint 269025139 */

public let KEY_RepeatKeys_Enable = GDK_KEY_RepeatKeys_Enable /* gint 65138 */

public let KEY_Reply = GDK_KEY_Reply /* gint 269025138 */

public let KEY_Return = GDK_KEY_Return /* gint 65293 */

public let KEY_Right = GDK_KEY_Right /* gint 65363 */

public let KEY_RockerDown = GDK_KEY_RockerDown /* gint 269025060 */

public let KEY_RockerEnter = GDK_KEY_RockerEnter /* gint 269025061 */

public let KEY_RockerUp = GDK_KEY_RockerUp /* gint 269025059 */

public let KEY_Romaji = GDK_KEY_Romaji /* gint 65316 */

public let KEY_RotateWindows = GDK_KEY_RotateWindows /* gint 269025140 */

public let KEY_RotationKB = GDK_KEY_RotationKB /* gint 269025142 */

public let KEY_RotationPB = GDK_KEY_RotationPB /* gint 269025141 */

public let KEY_RupeeSign = GDK_KEY_RupeeSign /* gint 16785576 */

public let KEY_S = GDK_KEY_S /* gint 83 */

public let KEY_SCHWA = GDK_KEY_SCHWA /* gint 16777615 */

public let KEY_Sabovedot = GDK_KEY_Sabovedot /* gint 16784992 */

public let KEY_Sacute = GDK_KEY_Sacute /* gint 422 */

public let KEY_Save = GDK_KEY_Save /* gint 269025143 */

public let KEY_Scaron = GDK_KEY_Scaron /* gint 425 */

public let KEY_Scedilla = GDK_KEY_Scedilla /* gint 426 */

public let KEY_Scircumflex = GDK_KEY_Scircumflex /* gint 734 */

public let KEY_ScreenSaver = GDK_KEY_ScreenSaver /* gint 269025069 */

public let KEY_ScrollClick = GDK_KEY_ScrollClick /* gint 269025146 */

public let KEY_ScrollDown = GDK_KEY_ScrollDown /* gint 269025145 */

public let KEY_ScrollUp = GDK_KEY_ScrollUp /* gint 269025144 */

public let KEY_Scroll_Lock = GDK_KEY_Scroll_Lock /* gint 65300 */

public let KEY_Search = GDK_KEY_Search /* gint 269025051 */

public let KEY_Select = GDK_KEY_Select /* gint 65376 */

public let KEY_SelectButton = GDK_KEY_SelectButton /* gint 269025184 */

public let KEY_Send = GDK_KEY_Send /* gint 269025147 */

public let KEY_Serbian_DJE = GDK_KEY_Serbian_DJE /* gint 1713 */

public let KEY_Serbian_DZE = GDK_KEY_Serbian_DZE /* gint 1727 */

public let KEY_Serbian_JE = GDK_KEY_Serbian_JE /* gint 1720 */

public let KEY_Serbian_LJE = GDK_KEY_Serbian_LJE /* gint 1721 */

public let KEY_Serbian_NJE = GDK_KEY_Serbian_NJE /* gint 1722 */

public let KEY_Serbian_TSHE = GDK_KEY_Serbian_TSHE /* gint 1723 */

public let KEY_Serbian_dje = GDK_KEY_Serbian_dje /* gint 1697 */

public let KEY_Serbian_dze = GDK_KEY_Serbian_dze /* gint 1711 */

public let KEY_Serbian_je = GDK_KEY_Serbian_je /* gint 1704 */

public let KEY_Serbian_lje = GDK_KEY_Serbian_lje /* gint 1705 */

public let KEY_Serbian_nje = GDK_KEY_Serbian_nje /* gint 1706 */

public let KEY_Serbian_tshe = GDK_KEY_Serbian_tshe /* gint 1707 */

public let KEY_Shift_L = GDK_KEY_Shift_L /* gint 65505 */

public let KEY_Shift_Lock = GDK_KEY_Shift_Lock /* gint 65510 */

public let KEY_Shift_R = GDK_KEY_Shift_R /* gint 65506 */

public let KEY_Shop = GDK_KEY_Shop /* gint 269025078 */

public let KEY_SingleCandidate = GDK_KEY_SingleCandidate /* gint 65340 */

public let KEY_Sinh_a = GDK_KEY_Sinh_a /* gint 16780677 */

public let KEY_Sinh_aa = GDK_KEY_Sinh_aa /* gint 16780678 */

public let KEY_Sinh_aa2 = GDK_KEY_Sinh_aa2 /* gint 16780751 */

public let KEY_Sinh_ae = GDK_KEY_Sinh_ae /* gint 16780679 */

public let KEY_Sinh_ae2 = GDK_KEY_Sinh_ae2 /* gint 16780752 */

public let KEY_Sinh_aee = GDK_KEY_Sinh_aee /* gint 16780680 */

public let KEY_Sinh_aee2 = GDK_KEY_Sinh_aee2 /* gint 16780753 */

public let KEY_Sinh_ai = GDK_KEY_Sinh_ai /* gint 16780691 */

public let KEY_Sinh_ai2 = GDK_KEY_Sinh_ai2 /* gint 16780763 */

public let KEY_Sinh_al = GDK_KEY_Sinh_al /* gint 16780746 */

public let KEY_Sinh_au = GDK_KEY_Sinh_au /* gint 16780694 */

public let KEY_Sinh_au2 = GDK_KEY_Sinh_au2 /* gint 16780766 */

public let KEY_Sinh_ba = GDK_KEY_Sinh_ba /* gint 16780726 */

public let KEY_Sinh_bha = GDK_KEY_Sinh_bha /* gint 16780727 */

public let KEY_Sinh_ca = GDK_KEY_Sinh_ca /* gint 16780704 */

public let KEY_Sinh_cha = GDK_KEY_Sinh_cha /* gint 16780705 */

public let KEY_Sinh_dda = GDK_KEY_Sinh_dda /* gint 16780713 */

public let KEY_Sinh_ddha = GDK_KEY_Sinh_ddha /* gint 16780714 */

public let KEY_Sinh_dha = GDK_KEY_Sinh_dha /* gint 16780719 */

public let KEY_Sinh_dhha = GDK_KEY_Sinh_dhha /* gint 16780720 */

public let KEY_Sinh_e = GDK_KEY_Sinh_e /* gint 16780689 */

public let KEY_Sinh_e2 = GDK_KEY_Sinh_e2 /* gint 16780761 */

public let KEY_Sinh_ee = GDK_KEY_Sinh_ee /* gint 16780690 */

public let KEY_Sinh_ee2 = GDK_KEY_Sinh_ee2 /* gint 16780762 */

public let KEY_Sinh_fa = GDK_KEY_Sinh_fa /* gint 16780742 */

public let KEY_Sinh_ga = GDK_KEY_Sinh_ga /* gint 16780700 */

public let KEY_Sinh_gha = GDK_KEY_Sinh_gha /* gint 16780701 */

public let KEY_Sinh_h2 = GDK_KEY_Sinh_h2 /* gint 16780675 */

public let KEY_Sinh_ha = GDK_KEY_Sinh_ha /* gint 16780740 */

public let KEY_Sinh_i = GDK_KEY_Sinh_i /* gint 16780681 */

public let KEY_Sinh_i2 = GDK_KEY_Sinh_i2 /* gint 16780754 */

public let KEY_Sinh_ii = GDK_KEY_Sinh_ii /* gint 16780682 */

public let KEY_Sinh_ii2 = GDK_KEY_Sinh_ii2 /* gint 16780755 */

public let KEY_Sinh_ja = GDK_KEY_Sinh_ja /* gint 16780706 */

public let KEY_Sinh_jha = GDK_KEY_Sinh_jha /* gint 16780707 */

public let KEY_Sinh_jnya = GDK_KEY_Sinh_jnya /* gint 16780709 */

public let KEY_Sinh_ka = GDK_KEY_Sinh_ka /* gint 16780698 */

public let KEY_Sinh_kha = GDK_KEY_Sinh_kha /* gint 16780699 */

public let KEY_Sinh_kunddaliya = GDK_KEY_Sinh_kunddaliya /* gint 16780788 */

public let KEY_Sinh_la = GDK_KEY_Sinh_la /* gint 16780733 */

public let KEY_Sinh_lla = GDK_KEY_Sinh_lla /* gint 16780741 */

public let KEY_Sinh_lu = GDK_KEY_Sinh_lu /* gint 16780687 */

public let KEY_Sinh_lu2 = GDK_KEY_Sinh_lu2 /* gint 16780767 */

public let KEY_Sinh_luu = GDK_KEY_Sinh_luu /* gint 16780688 */

public let KEY_Sinh_luu2 = GDK_KEY_Sinh_luu2 /* gint 16780787 */

public let KEY_Sinh_ma = GDK_KEY_Sinh_ma /* gint 16780728 */

public let KEY_Sinh_mba = GDK_KEY_Sinh_mba /* gint 16780729 */

public let KEY_Sinh_na = GDK_KEY_Sinh_na /* gint 16780721 */

public let KEY_Sinh_ndda = GDK_KEY_Sinh_ndda /* gint 16780716 */

public let KEY_Sinh_ndha = GDK_KEY_Sinh_ndha /* gint 16780723 */

public let KEY_Sinh_ng = GDK_KEY_Sinh_ng /* gint 16780674 */

public let KEY_Sinh_ng2 = GDK_KEY_Sinh_ng2 /* gint 16780702 */

public let KEY_Sinh_nga = GDK_KEY_Sinh_nga /* gint 16780703 */

public let KEY_Sinh_nja = GDK_KEY_Sinh_nja /* gint 16780710 */

public let KEY_Sinh_nna = GDK_KEY_Sinh_nna /* gint 16780715 */

public let KEY_Sinh_nya = GDK_KEY_Sinh_nya /* gint 16780708 */

public let KEY_Sinh_o = GDK_KEY_Sinh_o /* gint 16780692 */

public let KEY_Sinh_o2 = GDK_KEY_Sinh_o2 /* gint 16780764 */

public let KEY_Sinh_oo = GDK_KEY_Sinh_oo /* gint 16780693 */

public let KEY_Sinh_oo2 = GDK_KEY_Sinh_oo2 /* gint 16780765 */

public let KEY_Sinh_pa = GDK_KEY_Sinh_pa /* gint 16780724 */

public let KEY_Sinh_pha = GDK_KEY_Sinh_pha /* gint 16780725 */

public let KEY_Sinh_ra = GDK_KEY_Sinh_ra /* gint 16780731 */

public let KEY_Sinh_ri = GDK_KEY_Sinh_ri /* gint 16780685 */

public let KEY_Sinh_rii = GDK_KEY_Sinh_rii /* gint 16780686 */

public let KEY_Sinh_ru2 = GDK_KEY_Sinh_ru2 /* gint 16780760 */

public let KEY_Sinh_ruu2 = GDK_KEY_Sinh_ruu2 /* gint 16780786 */

public let KEY_Sinh_sa = GDK_KEY_Sinh_sa /* gint 16780739 */

public let KEY_Sinh_sha = GDK_KEY_Sinh_sha /* gint 16780737 */

public let KEY_Sinh_ssha = GDK_KEY_Sinh_ssha /* gint 16780738 */

public let KEY_Sinh_tha = GDK_KEY_Sinh_tha /* gint 16780717 */

public let KEY_Sinh_thha = GDK_KEY_Sinh_thha /* gint 16780718 */

public let KEY_Sinh_tta = GDK_KEY_Sinh_tta /* gint 16780711 */

public let KEY_Sinh_ttha = GDK_KEY_Sinh_ttha /* gint 16780712 */

public let KEY_Sinh_u = GDK_KEY_Sinh_u /* gint 16780683 */

public let KEY_Sinh_u2 = GDK_KEY_Sinh_u2 /* gint 16780756 */

public let KEY_Sinh_uu = GDK_KEY_Sinh_uu /* gint 16780684 */

public let KEY_Sinh_uu2 = GDK_KEY_Sinh_uu2 /* gint 16780758 */

public let KEY_Sinh_va = GDK_KEY_Sinh_va /* gint 16780736 */

public let KEY_Sinh_ya = GDK_KEY_Sinh_ya /* gint 16780730 */

public let KEY_Sleep = GDK_KEY_Sleep /* gint 269025071 */

public let KEY_SlowKeys_Enable = GDK_KEY_SlowKeys_Enable /* gint 65139 */

public let KEY_Spell = GDK_KEY_Spell /* gint 269025148 */

public let KEY_SplitScreen = GDK_KEY_SplitScreen /* gint 269025149 */

public let KEY_Standby = GDK_KEY_Standby /* gint 269025040 */

public let KEY_Start = GDK_KEY_Start /* gint 269025050 */

public let KEY_StickyKeys_Enable = GDK_KEY_StickyKeys_Enable /* gint 65141 */

public let KEY_Stop = GDK_KEY_Stop /* gint 269025064 */

public let KEY_Subtitle = GDK_KEY_Subtitle /* gint 269025178 */

public let KEY_Super_L = GDK_KEY_Super_L /* gint 65515 */

public let KEY_Super_R = GDK_KEY_Super_R /* gint 65516 */

public let KEY_Support = GDK_KEY_Support /* gint 269025150 */

public let KEY_Suspend = GDK_KEY_Suspend /* gint 269025191 */

public let KEY_Switch_VT_1 = GDK_KEY_Switch_VT_1 /* gint 269024769 */

public let KEY_Switch_VT_10 = GDK_KEY_Switch_VT_10 /* gint 269024778 */

public let KEY_Switch_VT_11 = GDK_KEY_Switch_VT_11 /* gint 269024779 */

public let KEY_Switch_VT_12 = GDK_KEY_Switch_VT_12 /* gint 269024780 */

public let KEY_Switch_VT_2 = GDK_KEY_Switch_VT_2 /* gint 269024770 */

public let KEY_Switch_VT_3 = GDK_KEY_Switch_VT_3 /* gint 269024771 */

public let KEY_Switch_VT_4 = GDK_KEY_Switch_VT_4 /* gint 269024772 */

public let KEY_Switch_VT_5 = GDK_KEY_Switch_VT_5 /* gint 269024773 */

public let KEY_Switch_VT_6 = GDK_KEY_Switch_VT_6 /* gint 269024774 */

public let KEY_Switch_VT_7 = GDK_KEY_Switch_VT_7 /* gint 269024775 */

public let KEY_Switch_VT_8 = GDK_KEY_Switch_VT_8 /* gint 269024776 */

public let KEY_Switch_VT_9 = GDK_KEY_Switch_VT_9 /* gint 269024777 */

public let KEY_Sys_Req = GDK_KEY_Sys_Req /* gint 65301 */

public let KEY_T = GDK_KEY_T /* gint 84 */

public let KEY_THORN = GDK_KEY_THORN /* gint 222 */

public let KEY_Tab = GDK_KEY_Tab /* gint 65289 */

public let KEY_Tabovedot = GDK_KEY_Tabovedot /* gint 16785002 */

public let KEY_TaskPane = GDK_KEY_TaskPane /* gint 269025151 */

public let KEY_Tcaron = GDK_KEY_Tcaron /* gint 427 */

public let KEY_Tcedilla = GDK_KEY_Tcedilla /* gint 478 */

public let KEY_Terminal = GDK_KEY_Terminal /* gint 269025152 */

public let KEY_Terminate_Server = GDK_KEY_Terminate_Server /* gint 65237 */

public let KEY_Thai_baht = GDK_KEY_Thai_baht /* gint 3551 */

public let KEY_Thai_bobaimai = GDK_KEY_Thai_bobaimai /* gint 3514 */

public let KEY_Thai_chochan = GDK_KEY_Thai_chochan /* gint 3496 */

public let KEY_Thai_chochang = GDK_KEY_Thai_chochang /* gint 3498 */

public let KEY_Thai_choching = GDK_KEY_Thai_choching /* gint 3497 */

public let KEY_Thai_chochoe = GDK_KEY_Thai_chochoe /* gint 3500 */

public let KEY_Thai_dochada = GDK_KEY_Thai_dochada /* gint 3502 */

public let KEY_Thai_dodek = GDK_KEY_Thai_dodek /* gint 3508 */

public let KEY_Thai_fofa = GDK_KEY_Thai_fofa /* gint 3517 */

public let KEY_Thai_fofan = GDK_KEY_Thai_fofan /* gint 3519 */

public let KEY_Thai_hohip = GDK_KEY_Thai_hohip /* gint 3531 */

public let KEY_Thai_honokhuk = GDK_KEY_Thai_honokhuk /* gint 3534 */

public let KEY_Thai_khokhai = GDK_KEY_Thai_khokhai /* gint 3490 */

public let KEY_Thai_khokhon = GDK_KEY_Thai_khokhon /* gint 3493 */

public let KEY_Thai_khokhuat = GDK_KEY_Thai_khokhuat /* gint 3491 */

public let KEY_Thai_khokhwai = GDK_KEY_Thai_khokhwai /* gint 3492 */

public let KEY_Thai_khorakhang = GDK_KEY_Thai_khorakhang /* gint 3494 */

public let KEY_Thai_kokai = GDK_KEY_Thai_kokai /* gint 3489 */

public let KEY_Thai_lakkhangyao = GDK_KEY_Thai_lakkhangyao /* gint 3557 */

public let KEY_Thai_lekchet = GDK_KEY_Thai_lekchet /* gint 3575 */

public let KEY_Thai_lekha = GDK_KEY_Thai_lekha /* gint 3573 */

public let KEY_Thai_lekhok = GDK_KEY_Thai_lekhok /* gint 3574 */

public let KEY_Thai_lekkao = GDK_KEY_Thai_lekkao /* gint 3577 */

public let KEY_Thai_leknung = GDK_KEY_Thai_leknung /* gint 3569 */

public let KEY_Thai_lekpaet = GDK_KEY_Thai_lekpaet /* gint 3576 */

public let KEY_Thai_leksam = GDK_KEY_Thai_leksam /* gint 3571 */

public let KEY_Thai_leksi = GDK_KEY_Thai_leksi /* gint 3572 */

public let KEY_Thai_leksong = GDK_KEY_Thai_leksong /* gint 3570 */

public let KEY_Thai_leksun = GDK_KEY_Thai_leksun /* gint 3568 */

public let KEY_Thai_lochula = GDK_KEY_Thai_lochula /* gint 3532 */

public let KEY_Thai_loling = GDK_KEY_Thai_loling /* gint 3525 */

public let KEY_Thai_lu = GDK_KEY_Thai_lu /* gint 3526 */

public let KEY_Thai_maichattawa = GDK_KEY_Thai_maichattawa /* gint 3563 */

public let KEY_Thai_maiek = GDK_KEY_Thai_maiek /* gint 3560 */

public let KEY_Thai_maihanakat = GDK_KEY_Thai_maihanakat /* gint 3537 */

public let KEY_Thai_maihanakat_maitho = GDK_KEY_Thai_maihanakat_maitho /* gint 3550 */

public let KEY_Thai_maitaikhu = GDK_KEY_Thai_maitaikhu /* gint 3559 */

public let KEY_Thai_maitho = GDK_KEY_Thai_maitho /* gint 3561 */

public let KEY_Thai_maitri = GDK_KEY_Thai_maitri /* gint 3562 */

public let KEY_Thai_maiyamok = GDK_KEY_Thai_maiyamok /* gint 3558 */

public let KEY_Thai_moma = GDK_KEY_Thai_moma /* gint 3521 */

public let KEY_Thai_ngongu = GDK_KEY_Thai_ngongu /* gint 3495 */

public let KEY_Thai_nikhahit = GDK_KEY_Thai_nikhahit /* gint 3565 */

public let KEY_Thai_nonen = GDK_KEY_Thai_nonen /* gint 3507 */

public let KEY_Thai_nonu = GDK_KEY_Thai_nonu /* gint 3513 */

public let KEY_Thai_oang = GDK_KEY_Thai_oang /* gint 3533 */

public let KEY_Thai_paiyannoi = GDK_KEY_Thai_paiyannoi /* gint 3535 */

public let KEY_Thai_phinthu = GDK_KEY_Thai_phinthu /* gint 3546 */

public let KEY_Thai_phophan = GDK_KEY_Thai_phophan /* gint 3518 */

public let KEY_Thai_phophung = GDK_KEY_Thai_phophung /* gint 3516 */

public let KEY_Thai_phosamphao = GDK_KEY_Thai_phosamphao /* gint 3520 */

public let KEY_Thai_popla = GDK_KEY_Thai_popla /* gint 3515 */

public let KEY_Thai_rorua = GDK_KEY_Thai_rorua /* gint 3523 */

public let KEY_Thai_ru = GDK_KEY_Thai_ru /* gint 3524 */

public let KEY_Thai_saraa = GDK_KEY_Thai_saraa /* gint 3536 */

public let KEY_Thai_saraaa = GDK_KEY_Thai_saraaa /* gint 3538 */

public let KEY_Thai_saraae = GDK_KEY_Thai_saraae /* gint 3553 */

public let KEY_Thai_saraaimaimalai = GDK_KEY_Thai_saraaimaimalai /* gint 3556 */

public let KEY_Thai_saraaimaimuan = GDK_KEY_Thai_saraaimaimuan /* gint 3555 */

public let KEY_Thai_saraam = GDK_KEY_Thai_saraam /* gint 3539 */

public let KEY_Thai_sarae = GDK_KEY_Thai_sarae /* gint 3552 */

public let KEY_Thai_sarai = GDK_KEY_Thai_sarai /* gint 3540 */

public let KEY_Thai_saraii = GDK_KEY_Thai_saraii /* gint 3541 */

public let KEY_Thai_sarao = GDK_KEY_Thai_sarao /* gint 3554 */

public let KEY_Thai_sarau = GDK_KEY_Thai_sarau /* gint 3544 */

public let KEY_Thai_saraue = GDK_KEY_Thai_saraue /* gint 3542 */

public let KEY_Thai_sarauee = GDK_KEY_Thai_sarauee /* gint 3543 */

public let KEY_Thai_sarauu = GDK_KEY_Thai_sarauu /* gint 3545 */

public let KEY_Thai_sorusi = GDK_KEY_Thai_sorusi /* gint 3529 */

public let KEY_Thai_sosala = GDK_KEY_Thai_sosala /* gint 3528 */

public let KEY_Thai_soso = GDK_KEY_Thai_soso /* gint 3499 */

public let KEY_Thai_sosua = GDK_KEY_Thai_sosua /* gint 3530 */

public let KEY_Thai_thanthakhat = GDK_KEY_Thai_thanthakhat /* gint 3564 */

public let KEY_Thai_thonangmontho = GDK_KEY_Thai_thonangmontho /* gint 3505 */

public let KEY_Thai_thophuthao = GDK_KEY_Thai_thophuthao /* gint 3506 */

public let KEY_Thai_thothahan = GDK_KEY_Thai_thothahan /* gint 3511 */

public let KEY_Thai_thothan = GDK_KEY_Thai_thothan /* gint 3504 */

public let KEY_Thai_thothong = GDK_KEY_Thai_thothong /* gint 3512 */

public let KEY_Thai_thothung = GDK_KEY_Thai_thothung /* gint 3510 */

public let KEY_Thai_topatak = GDK_KEY_Thai_topatak /* gint 3503 */

public let KEY_Thai_totao = GDK_KEY_Thai_totao /* gint 3509 */

public let KEY_Thai_wowaen = GDK_KEY_Thai_wowaen /* gint 3527 */

public let KEY_Thai_yoyak = GDK_KEY_Thai_yoyak /* gint 3522 */

public let KEY_Thai_yoying = GDK_KEY_Thai_yoying /* gint 3501 */

public let KEY_Thorn = GDK_KEY_Thorn /* gint 222 */

public let KEY_Time = GDK_KEY_Time /* gint 269025183 */

public let KEY_ToDoList = GDK_KEY_ToDoList /* gint 269025055 */

public let KEY_Tools = GDK_KEY_Tools /* gint 269025153 */

public let KEY_TopMenu = GDK_KEY_TopMenu /* gint 269025186 */

public let KEY_TouchpadOff = GDK_KEY_TouchpadOff /* gint 269025201 */

public let KEY_TouchpadOn = GDK_KEY_TouchpadOn /* gint 269025200 */

public let KEY_TouchpadToggle = GDK_KEY_TouchpadToggle /* gint 269025193 */

public let KEY_Touroku = GDK_KEY_Touroku /* gint 65323 */

public let KEY_Travel = GDK_KEY_Travel /* gint 269025154 */

public let KEY_Tslash = GDK_KEY_Tslash /* gint 940 */

public let KEY_U = GDK_KEY_U /* gint 85 */

public let KEY_UWB = GDK_KEY_UWB /* gint 269025174 */

public let KEY_Uacute = GDK_KEY_Uacute /* gint 218 */

public let KEY_Ubelowdot = GDK_KEY_Ubelowdot /* gint 16785124 */

public let KEY_Ubreve = GDK_KEY_Ubreve /* gint 733 */

public let KEY_Ucircumflex = GDK_KEY_Ucircumflex /* gint 219 */

public let KEY_Udiaeresis = GDK_KEY_Udiaeresis /* gint 220 */

public let KEY_Udoubleacute = GDK_KEY_Udoubleacute /* gint 475 */

public let KEY_Ugrave = GDK_KEY_Ugrave /* gint 217 */

public let KEY_Uhook = GDK_KEY_Uhook /* gint 16785126 */

public let KEY_Uhorn = GDK_KEY_Uhorn /* gint 16777647 */

public let KEY_Uhornacute = GDK_KEY_Uhornacute /* gint 16785128 */

public let KEY_Uhornbelowdot = GDK_KEY_Uhornbelowdot /* gint 16785136 */

public let KEY_Uhorngrave = GDK_KEY_Uhorngrave /* gint 16785130 */

public let KEY_Uhornhook = GDK_KEY_Uhornhook /* gint 16785132 */

public let KEY_Uhorntilde = GDK_KEY_Uhorntilde /* gint 16785134 */

public let KEY_Ukrainian_GHE_WITH_UPTURN = GDK_KEY_Ukrainian_GHE_WITH_UPTURN /* gint 1725 */

public let KEY_Ukrainian_I = GDK_KEY_Ukrainian_I /* gint 1718 */

public let KEY_Ukrainian_IE = GDK_KEY_Ukrainian_IE /* gint 1716 */

public let KEY_Ukrainian_YI = GDK_KEY_Ukrainian_YI /* gint 1719 */

public let KEY_Ukrainian_ghe_with_upturn = GDK_KEY_Ukrainian_ghe_with_upturn /* gint 1709 */

public let KEY_Ukrainian_i = GDK_KEY_Ukrainian_i /* gint 1702 */

public let KEY_Ukrainian_ie = GDK_KEY_Ukrainian_ie /* gint 1700 */

public let KEY_Ukrainian_yi = GDK_KEY_Ukrainian_yi /* gint 1703 */

public let KEY_Ukranian_I = GDK_KEY_Ukranian_I /* gint 1718 */

public let KEY_Ukranian_JE = GDK_KEY_Ukranian_JE /* gint 1716 */

public let KEY_Ukranian_YI = GDK_KEY_Ukranian_YI /* gint 1719 */

public let KEY_Ukranian_i = GDK_KEY_Ukranian_i /* gint 1702 */

public let KEY_Ukranian_je = GDK_KEY_Ukranian_je /* gint 1700 */

public let KEY_Ukranian_yi = GDK_KEY_Ukranian_yi /* gint 1703 */

public let KEY_Umacron = GDK_KEY_Umacron /* gint 990 */

public let KEY_Undo = GDK_KEY_Undo /* gint 65381 */

public let KEY_Ungrab = GDK_KEY_Ungrab /* gint 269024800 */

public let KEY_Uogonek = GDK_KEY_Uogonek /* gint 985 */

public let KEY_Up = GDK_KEY_Up /* gint 65362 */

public let KEY_Uring = GDK_KEY_Uring /* gint 473 */

public let KEY_User1KB = GDK_KEY_User1KB /* gint 269025157 */

public let KEY_User2KB = GDK_KEY_User2KB /* gint 269025158 */

public let KEY_UserPB = GDK_KEY_UserPB /* gint 269025156 */

public let KEY_Utilde = GDK_KEY_Utilde /* gint 989 */

public let KEY_V = GDK_KEY_V /* gint 86 */

public let KEY_VendorHome = GDK_KEY_VendorHome /* gint 269025076 */

public let KEY_Video = GDK_KEY_Video /* gint 269025159 */

public let KEY_View = GDK_KEY_View /* gint 269025185 */

public let KEY_VoidSymbol = GDK_KEY_VoidSymbol /* gint 16777215 */

public let KEY_W = GDK_KEY_W /* gint 87 */

public let KEY_WLAN = GDK_KEY_WLAN /* gint 269025173 */

public let KEY_WWW = GDK_KEY_WWW /* gint 269025070 */

public let KEY_Wacute = GDK_KEY_Wacute /* gint 16785026 */

public let KEY_WakeUp = GDK_KEY_WakeUp /* gint 269025067 */

public let KEY_Wcircumflex = GDK_KEY_Wcircumflex /* gint 16777588 */

public let KEY_Wdiaeresis = GDK_KEY_Wdiaeresis /* gint 16785028 */

public let KEY_WebCam = GDK_KEY_WebCam /* gint 269025167 */

public let KEY_Wgrave = GDK_KEY_Wgrave /* gint 16785024 */

public let KEY_WheelButton = GDK_KEY_WheelButton /* gint 269025160 */

public let KEY_WindowClear = GDK_KEY_WindowClear /* gint 269025109 */

public let KEY_WonSign = GDK_KEY_WonSign /* gint 16785577 */

public let KEY_Word = GDK_KEY_Word /* gint 269025161 */

public let KEY_X = GDK_KEY_X /* gint 88 */

public let KEY_Xabovedot = GDK_KEY_Xabovedot /* gint 16785034 */

public let KEY_Xfer = GDK_KEY_Xfer /* gint 269025162 */

public let KEY_Y = GDK_KEY_Y /* gint 89 */

public let KEY_Yacute = GDK_KEY_Yacute /* gint 221 */

public let KEY_Ybelowdot = GDK_KEY_Ybelowdot /* gint 16785140 */

public let KEY_Ycircumflex = GDK_KEY_Ycircumflex /* gint 16777590 */

public let KEY_Ydiaeresis = GDK_KEY_Ydiaeresis /* gint 5054 */

public let KEY_Yellow = GDK_KEY_Yellow /* gint 269025189 */

public let KEY_Ygrave = GDK_KEY_Ygrave /* gint 16785138 */

public let KEY_Yhook = GDK_KEY_Yhook /* gint 16785142 */

public let KEY_Ytilde = GDK_KEY_Ytilde /* gint 16785144 */

public let KEY_Z = GDK_KEY_Z /* gint 90 */

public let KEY_Zabovedot = GDK_KEY_Zabovedot /* gint 431 */

public let KEY_Zacute = GDK_KEY_Zacute /* gint 428 */

public let KEY_Zcaron = GDK_KEY_Zcaron /* gint 430 */

public let KEY_Zen_Koho = GDK_KEY_Zen_Koho /* gint 65341 */

public let KEY_Zenkaku = GDK_KEY_Zenkaku /* gint 65320 */

public let KEY_Zenkaku_Hankaku = GDK_KEY_Zenkaku_Hankaku /* gint 65322 */

public let KEY_ZoomIn = GDK_KEY_ZoomIn /* gint 269025163 */

public let KEY_ZoomOut = GDK_KEY_ZoomOut /* gint 269025164 */

public let KEY_Zstroke = GDK_KEY_Zstroke /* gint 16777653 */

public let KEY_a = GDK_KEY_a /* gint 97 */

public let KEY_aacute = GDK_KEY_aacute /* gint 225 */

public let KEY_abelowdot = GDK_KEY_abelowdot /* gint 16785057 */

public let KEY_abovedot = GDK_KEY_abovedot /* gint 511 */

public let KEY_abreve = GDK_KEY_abreve /* gint 483 */

public let KEY_abreveacute = GDK_KEY_abreveacute /* gint 16785071 */

public let KEY_abrevebelowdot = GDK_KEY_abrevebelowdot /* gint 16785079 */

public let KEY_abrevegrave = GDK_KEY_abrevegrave /* gint 16785073 */

public let KEY_abrevehook = GDK_KEY_abrevehook /* gint 16785075 */

public let KEY_abrevetilde = GDK_KEY_abrevetilde /* gint 16785077 */

public let KEY_acircumflex = GDK_KEY_acircumflex /* gint 226 */

public let KEY_acircumflexacute = GDK_KEY_acircumflexacute /* gint 16785061 */

public let KEY_acircumflexbelowdot = GDK_KEY_acircumflexbelowdot /* gint 16785069 */

public let KEY_acircumflexgrave = GDK_KEY_acircumflexgrave /* gint 16785063 */

public let KEY_acircumflexhook = GDK_KEY_acircumflexhook /* gint 16785065 */

public let KEY_acircumflextilde = GDK_KEY_acircumflextilde /* gint 16785067 */

public let KEY_acute = GDK_KEY_acute /* gint 180 */

public let KEY_adiaeresis = GDK_KEY_adiaeresis /* gint 228 */

public let KEY_ae = GDK_KEY_ae /* gint 230 */

public let KEY_agrave = GDK_KEY_agrave /* gint 224 */

public let KEY_ahook = GDK_KEY_ahook /* gint 16785059 */

public let KEY_amacron = GDK_KEY_amacron /* gint 992 */

public let KEY_ampersand = GDK_KEY_ampersand /* gint 38 */

public let KEY_aogonek = GDK_KEY_aogonek /* gint 433 */

public let KEY_apostrophe = GDK_KEY_apostrophe /* gint 39 */

public let KEY_approxeq = GDK_KEY_approxeq /* gint 16785992 */

public let KEY_approximate = GDK_KEY_approximate /* gint 2248 */

public let KEY_aring = GDK_KEY_aring /* gint 229 */

public let KEY_asciicircum = GDK_KEY_asciicircum /* gint 94 */

public let KEY_asciitilde = GDK_KEY_asciitilde /* gint 126 */

public let KEY_asterisk = GDK_KEY_asterisk /* gint 42 */

public let KEY_at = GDK_KEY_at /* gint 64 */

public let KEY_atilde = GDK_KEY_atilde /* gint 227 */

public let KEY_b = GDK_KEY_b /* gint 98 */

public let KEY_babovedot = GDK_KEY_babovedot /* gint 16784899 */

public let KEY_backslash = GDK_KEY_backslash /* gint 92 */

public let KEY_ballotcross = GDK_KEY_ballotcross /* gint 2804 */

public let KEY_bar = GDK_KEY_bar /* gint 124 */

public let KEY_because = GDK_KEY_because /* gint 16785973 */

public let KEY_blank = GDK_KEY_blank /* gint 2527 */

public let KEY_botintegral = GDK_KEY_botintegral /* gint 2213 */

public let KEY_botleftparens = GDK_KEY_botleftparens /* gint 2220 */

public let KEY_botleftsqbracket = GDK_KEY_botleftsqbracket /* gint 2216 */

public let KEY_botleftsummation = GDK_KEY_botleftsummation /* gint 2226 */

public let KEY_botrightparens = GDK_KEY_botrightparens /* gint 2222 */

public let KEY_botrightsqbracket = GDK_KEY_botrightsqbracket /* gint 2218 */

public let KEY_botrightsummation = GDK_KEY_botrightsummation /* gint 2230 */

public let KEY_bott = GDK_KEY_bott /* gint 2550 */

public let KEY_botvertsummationconnector = GDK_KEY_botvertsummationconnector /* gint 2228 */

public let KEY_braceleft = GDK_KEY_braceleft /* gint 123 */

public let KEY_braceright = GDK_KEY_braceright /* gint 125 */

public let KEY_bracketleft = GDK_KEY_bracketleft /* gint 91 */

public let KEY_bracketright = GDK_KEY_bracketright /* gint 93 */

public let KEY_braille_blank = GDK_KEY_braille_blank /* gint 16787456 */

public let KEY_braille_dot_1 = GDK_KEY_braille_dot_1 /* gint 65521 */

public let KEY_braille_dot_10 = GDK_KEY_braille_dot_10 /* gint 65530 */

public let KEY_braille_dot_2 = GDK_KEY_braille_dot_2 /* gint 65522 */

public let KEY_braille_dot_3 = GDK_KEY_braille_dot_3 /* gint 65523 */

public let KEY_braille_dot_4 = GDK_KEY_braille_dot_4 /* gint 65524 */

public let KEY_braille_dot_5 = GDK_KEY_braille_dot_5 /* gint 65525 */

public let KEY_braille_dot_6 = GDK_KEY_braille_dot_6 /* gint 65526 */

public let KEY_braille_dot_7 = GDK_KEY_braille_dot_7 /* gint 65527 */

public let KEY_braille_dot_8 = GDK_KEY_braille_dot_8 /* gint 65528 */

public let KEY_braille_dot_9 = GDK_KEY_braille_dot_9 /* gint 65529 */

public let KEY_braille_dots_1 = GDK_KEY_braille_dots_1 /* gint 16787457 */

public let KEY_braille_dots_12 = GDK_KEY_braille_dots_12 /* gint 16787459 */

public let KEY_braille_dots_123 = GDK_KEY_braille_dots_123 /* gint 16787463 */

public let KEY_braille_dots_1234 = GDK_KEY_braille_dots_1234 /* gint 16787471 */

public let KEY_braille_dots_12345 = GDK_KEY_braille_dots_12345 /* gint 16787487 */

public let KEY_braille_dots_123456 = GDK_KEY_braille_dots_123456 /* gint 16787519 */

public let KEY_braille_dots_1234567 = GDK_KEY_braille_dots_1234567 /* gint 16787583 */

public let KEY_braille_dots_12345678 = GDK_KEY_braille_dots_12345678 /* gint 16787711 */

public let KEY_braille_dots_1234568 = GDK_KEY_braille_dots_1234568 /* gint 16787647 */

public let KEY_braille_dots_123457 = GDK_KEY_braille_dots_123457 /* gint 16787551 */

public let KEY_braille_dots_1234578 = GDK_KEY_braille_dots_1234578 /* gint 16787679 */

public let KEY_braille_dots_123458 = GDK_KEY_braille_dots_123458 /* gint 16787615 */

public let KEY_braille_dots_12346 = GDK_KEY_braille_dots_12346 /* gint 16787503 */

public let KEY_braille_dots_123467 = GDK_KEY_braille_dots_123467 /* gint 16787567 */

public let KEY_braille_dots_1234678 = GDK_KEY_braille_dots_1234678 /* gint 16787695 */

public let KEY_braille_dots_123468 = GDK_KEY_braille_dots_123468 /* gint 16787631 */

public let KEY_braille_dots_12347 = GDK_KEY_braille_dots_12347 /* gint 16787535 */

public let KEY_braille_dots_123478 = GDK_KEY_braille_dots_123478 /* gint 16787663 */

public let KEY_braille_dots_12348 = GDK_KEY_braille_dots_12348 /* gint 16787599 */

public let KEY_braille_dots_1235 = GDK_KEY_braille_dots_1235 /* gint 16787479 */

public let KEY_braille_dots_12356 = GDK_KEY_braille_dots_12356 /* gint 16787511 */

public let KEY_braille_dots_123567 = GDK_KEY_braille_dots_123567 /* gint 16787575 */

public let KEY_braille_dots_1235678 = GDK_KEY_braille_dots_1235678 /* gint 16787703 */

public let KEY_braille_dots_123568 = GDK_KEY_braille_dots_123568 /* gint 16787639 */

public let KEY_braille_dots_12357 = GDK_KEY_braille_dots_12357 /* gint 16787543 */

public let KEY_braille_dots_123578 = GDK_KEY_braille_dots_123578 /* gint 16787671 */

public let KEY_braille_dots_12358 = GDK_KEY_braille_dots_12358 /* gint 16787607 */

public let KEY_braille_dots_1236 = GDK_KEY_braille_dots_1236 /* gint 16787495 */

public let KEY_braille_dots_12367 = GDK_KEY_braille_dots_12367 /* gint 16787559 */

public let KEY_braille_dots_123678 = GDK_KEY_braille_dots_123678 /* gint 16787687 */

public let KEY_braille_dots_12368 = GDK_KEY_braille_dots_12368 /* gint 16787623 */

public let KEY_braille_dots_1237 = GDK_KEY_braille_dots_1237 /* gint 16787527 */

public let KEY_braille_dots_12378 = GDK_KEY_braille_dots_12378 /* gint 16787655 */

public let KEY_braille_dots_1238 = GDK_KEY_braille_dots_1238 /* gint 16787591 */

public let KEY_braille_dots_124 = GDK_KEY_braille_dots_124 /* gint 16787467 */

public let KEY_braille_dots_1245 = GDK_KEY_braille_dots_1245 /* gint 16787483 */

public let KEY_braille_dots_12456 = GDK_KEY_braille_dots_12456 /* gint 16787515 */

public let KEY_braille_dots_124567 = GDK_KEY_braille_dots_124567 /* gint 16787579 */

public let KEY_braille_dots_1245678 = GDK_KEY_braille_dots_1245678 /* gint 16787707 */

public let KEY_braille_dots_124568 = GDK_KEY_braille_dots_124568 /* gint 16787643 */

public let KEY_braille_dots_12457 = GDK_KEY_braille_dots_12457 /* gint 16787547 */

public let KEY_braille_dots_124578 = GDK_KEY_braille_dots_124578 /* gint 16787675 */

public let KEY_braille_dots_12458 = GDK_KEY_braille_dots_12458 /* gint 16787611 */

public let KEY_braille_dots_1246 = GDK_KEY_braille_dots_1246 /* gint 16787499 */

public let KEY_braille_dots_12467 = GDK_KEY_braille_dots_12467 /* gint 16787563 */

public let KEY_braille_dots_124678 = GDK_KEY_braille_dots_124678 /* gint 16787691 */

public let KEY_braille_dots_12468 = GDK_KEY_braille_dots_12468 /* gint 16787627 */

public let KEY_braille_dots_1247 = GDK_KEY_braille_dots_1247 /* gint 16787531 */

public let KEY_braille_dots_12478 = GDK_KEY_braille_dots_12478 /* gint 16787659 */

public let KEY_braille_dots_1248 = GDK_KEY_braille_dots_1248 /* gint 16787595 */

public let KEY_braille_dots_125 = GDK_KEY_braille_dots_125 /* gint 16787475 */

public let KEY_braille_dots_1256 = GDK_KEY_braille_dots_1256 /* gint 16787507 */

public let KEY_braille_dots_12567 = GDK_KEY_braille_dots_12567 /* gint 16787571 */

public let KEY_braille_dots_125678 = GDK_KEY_braille_dots_125678 /* gint 16787699 */

public let KEY_braille_dots_12568 = GDK_KEY_braille_dots_12568 /* gint 16787635 */

public let KEY_braille_dots_1257 = GDK_KEY_braille_dots_1257 /* gint 16787539 */

public let KEY_braille_dots_12578 = GDK_KEY_braille_dots_12578 /* gint 16787667 */

public let KEY_braille_dots_1258 = GDK_KEY_braille_dots_1258 /* gint 16787603 */

public let KEY_braille_dots_126 = GDK_KEY_braille_dots_126 /* gint 16787491 */

public let KEY_braille_dots_1267 = GDK_KEY_braille_dots_1267 /* gint 16787555 */

public let KEY_braille_dots_12678 = GDK_KEY_braille_dots_12678 /* gint 16787683 */

public let KEY_braille_dots_1268 = GDK_KEY_braille_dots_1268 /* gint 16787619 */

public let KEY_braille_dots_127 = GDK_KEY_braille_dots_127 /* gint 16787523 */

public let KEY_braille_dots_1278 = GDK_KEY_braille_dots_1278 /* gint 16787651 */

public let KEY_braille_dots_128 = GDK_KEY_braille_dots_128 /* gint 16787587 */

public let KEY_braille_dots_13 = GDK_KEY_braille_dots_13 /* gint 16787461 */

public let KEY_braille_dots_134 = GDK_KEY_braille_dots_134 /* gint 16787469 */

public let KEY_braille_dots_1345 = GDK_KEY_braille_dots_1345 /* gint 16787485 */

public let KEY_braille_dots_13456 = GDK_KEY_braille_dots_13456 /* gint 16787517 */

public let KEY_braille_dots_134567 = GDK_KEY_braille_dots_134567 /* gint 16787581 */

public let KEY_braille_dots_1345678 = GDK_KEY_braille_dots_1345678 /* gint 16787709 */

public let KEY_braille_dots_134568 = GDK_KEY_braille_dots_134568 /* gint 16787645 */

public let KEY_braille_dots_13457 = GDK_KEY_braille_dots_13457 /* gint 16787549 */

public let KEY_braille_dots_134578 = GDK_KEY_braille_dots_134578 /* gint 16787677 */

public let KEY_braille_dots_13458 = GDK_KEY_braille_dots_13458 /* gint 16787613 */

public let KEY_braille_dots_1346 = GDK_KEY_braille_dots_1346 /* gint 16787501 */

public let KEY_braille_dots_13467 = GDK_KEY_braille_dots_13467 /* gint 16787565 */

public let KEY_braille_dots_134678 = GDK_KEY_braille_dots_134678 /* gint 16787693 */

public let KEY_braille_dots_13468 = GDK_KEY_braille_dots_13468 /* gint 16787629 */

public let KEY_braille_dots_1347 = GDK_KEY_braille_dots_1347 /* gint 16787533 */

public let KEY_braille_dots_13478 = GDK_KEY_braille_dots_13478 /* gint 16787661 */

public let KEY_braille_dots_1348 = GDK_KEY_braille_dots_1348 /* gint 16787597 */

public let KEY_braille_dots_135 = GDK_KEY_braille_dots_135 /* gint 16787477 */

public let KEY_braille_dots_1356 = GDK_KEY_braille_dots_1356 /* gint 16787509 */

public let KEY_braille_dots_13567 = GDK_KEY_braille_dots_13567 /* gint 16787573 */

public let KEY_braille_dots_135678 = GDK_KEY_braille_dots_135678 /* gint 16787701 */

public let KEY_braille_dots_13568 = GDK_KEY_braille_dots_13568 /* gint 16787637 */

public let KEY_braille_dots_1357 = GDK_KEY_braille_dots_1357 /* gint 16787541 */

public let KEY_braille_dots_13578 = GDK_KEY_braille_dots_13578 /* gint 16787669 */

public let KEY_braille_dots_1358 = GDK_KEY_braille_dots_1358 /* gint 16787605 */

public let KEY_braille_dots_136 = GDK_KEY_braille_dots_136 /* gint 16787493 */

public let KEY_braille_dots_1367 = GDK_KEY_braille_dots_1367 /* gint 16787557 */

public let KEY_braille_dots_13678 = GDK_KEY_braille_dots_13678 /* gint 16787685 */

public let KEY_braille_dots_1368 = GDK_KEY_braille_dots_1368 /* gint 16787621 */

public let KEY_braille_dots_137 = GDK_KEY_braille_dots_137 /* gint 16787525 */

public let KEY_braille_dots_1378 = GDK_KEY_braille_dots_1378 /* gint 16787653 */

public let KEY_braille_dots_138 = GDK_KEY_braille_dots_138 /* gint 16787589 */

public let KEY_braille_dots_14 = GDK_KEY_braille_dots_14 /* gint 16787465 */

public let KEY_braille_dots_145 = GDK_KEY_braille_dots_145 /* gint 16787481 */

public let KEY_braille_dots_1456 = GDK_KEY_braille_dots_1456 /* gint 16787513 */

public let KEY_braille_dots_14567 = GDK_KEY_braille_dots_14567 /* gint 16787577 */

public let KEY_braille_dots_145678 = GDK_KEY_braille_dots_145678 /* gint 16787705 */

public let KEY_braille_dots_14568 = GDK_KEY_braille_dots_14568 /* gint 16787641 */

public let KEY_braille_dots_1457 = GDK_KEY_braille_dots_1457 /* gint 16787545 */

public let KEY_braille_dots_14578 = GDK_KEY_braille_dots_14578 /* gint 16787673 */

public let KEY_braille_dots_1458 = GDK_KEY_braille_dots_1458 /* gint 16787609 */

public let KEY_braille_dots_146 = GDK_KEY_braille_dots_146 /* gint 16787497 */

public let KEY_braille_dots_1467 = GDK_KEY_braille_dots_1467 /* gint 16787561 */

public let KEY_braille_dots_14678 = GDK_KEY_braille_dots_14678 /* gint 16787689 */

public let KEY_braille_dots_1468 = GDK_KEY_braille_dots_1468 /* gint 16787625 */

public let KEY_braille_dots_147 = GDK_KEY_braille_dots_147 /* gint 16787529 */

public let KEY_braille_dots_1478 = GDK_KEY_braille_dots_1478 /* gint 16787657 */

public let KEY_braille_dots_148 = GDK_KEY_braille_dots_148 /* gint 16787593 */

public let KEY_braille_dots_15 = GDK_KEY_braille_dots_15 /* gint 16787473 */

public let KEY_braille_dots_156 = GDK_KEY_braille_dots_156 /* gint 16787505 */

public let KEY_braille_dots_1567 = GDK_KEY_braille_dots_1567 /* gint 16787569 */

public let KEY_braille_dots_15678 = GDK_KEY_braille_dots_15678 /* gint 16787697 */

public let KEY_braille_dots_1568 = GDK_KEY_braille_dots_1568 /* gint 16787633 */

public let KEY_braille_dots_157 = GDK_KEY_braille_dots_157 /* gint 16787537 */

public let KEY_braille_dots_1578 = GDK_KEY_braille_dots_1578 /* gint 16787665 */

public let KEY_braille_dots_158 = GDK_KEY_braille_dots_158 /* gint 16787601 */

public let KEY_braille_dots_16 = GDK_KEY_braille_dots_16 /* gint 16787489 */

public let KEY_braille_dots_167 = GDK_KEY_braille_dots_167 /* gint 16787553 */

public let KEY_braille_dots_1678 = GDK_KEY_braille_dots_1678 /* gint 16787681 */

public let KEY_braille_dots_168 = GDK_KEY_braille_dots_168 /* gint 16787617 */

public let KEY_braille_dots_17 = GDK_KEY_braille_dots_17 /* gint 16787521 */

public let KEY_braille_dots_178 = GDK_KEY_braille_dots_178 /* gint 16787649 */

public let KEY_braille_dots_18 = GDK_KEY_braille_dots_18 /* gint 16787585 */

public let KEY_braille_dots_2 = GDK_KEY_braille_dots_2 /* gint 16787458 */

public let KEY_braille_dots_23 = GDK_KEY_braille_dots_23 /* gint 16787462 */

public let KEY_braille_dots_234 = GDK_KEY_braille_dots_234 /* gint 16787470 */

public let KEY_braille_dots_2345 = GDK_KEY_braille_dots_2345 /* gint 16787486 */

public let KEY_braille_dots_23456 = GDK_KEY_braille_dots_23456 /* gint 16787518 */

public let KEY_braille_dots_234567 = GDK_KEY_braille_dots_234567 /* gint 16787582 */

public let KEY_braille_dots_2345678 = GDK_KEY_braille_dots_2345678 /* gint 16787710 */

public let KEY_braille_dots_234568 = GDK_KEY_braille_dots_234568 /* gint 16787646 */

public let KEY_braille_dots_23457 = GDK_KEY_braille_dots_23457 /* gint 16787550 */

public let KEY_braille_dots_234578 = GDK_KEY_braille_dots_234578 /* gint 16787678 */

public let KEY_braille_dots_23458 = GDK_KEY_braille_dots_23458 /* gint 16787614 */

public let KEY_braille_dots_2346 = GDK_KEY_braille_dots_2346 /* gint 16787502 */

public let KEY_braille_dots_23467 = GDK_KEY_braille_dots_23467 /* gint 16787566 */

public let KEY_braille_dots_234678 = GDK_KEY_braille_dots_234678 /* gint 16787694 */

public let KEY_braille_dots_23468 = GDK_KEY_braille_dots_23468 /* gint 16787630 */

public let KEY_braille_dots_2347 = GDK_KEY_braille_dots_2347 /* gint 16787534 */

public let KEY_braille_dots_23478 = GDK_KEY_braille_dots_23478 /* gint 16787662 */

public let KEY_braille_dots_2348 = GDK_KEY_braille_dots_2348 /* gint 16787598 */

public let KEY_braille_dots_235 = GDK_KEY_braille_dots_235 /* gint 16787478 */

public let KEY_braille_dots_2356 = GDK_KEY_braille_dots_2356 /* gint 16787510 */

public let KEY_braille_dots_23567 = GDK_KEY_braille_dots_23567 /* gint 16787574 */

public let KEY_braille_dots_235678 = GDK_KEY_braille_dots_235678 /* gint 16787702 */

public let KEY_braille_dots_23568 = GDK_KEY_braille_dots_23568 /* gint 16787638 */

public let KEY_braille_dots_2357 = GDK_KEY_braille_dots_2357 /* gint 16787542 */

public let KEY_braille_dots_23578 = GDK_KEY_braille_dots_23578 /* gint 16787670 */

public let KEY_braille_dots_2358 = GDK_KEY_braille_dots_2358 /* gint 16787606 */

public let KEY_braille_dots_236 = GDK_KEY_braille_dots_236 /* gint 16787494 */

public let KEY_braille_dots_2367 = GDK_KEY_braille_dots_2367 /* gint 16787558 */

public let KEY_braille_dots_23678 = GDK_KEY_braille_dots_23678 /* gint 16787686 */

public let KEY_braille_dots_2368 = GDK_KEY_braille_dots_2368 /* gint 16787622 */

public let KEY_braille_dots_237 = GDK_KEY_braille_dots_237 /* gint 16787526 */

public let KEY_braille_dots_2378 = GDK_KEY_braille_dots_2378 /* gint 16787654 */

public let KEY_braille_dots_238 = GDK_KEY_braille_dots_238 /* gint 16787590 */

public let KEY_braille_dots_24 = GDK_KEY_braille_dots_24 /* gint 16787466 */

public let KEY_braille_dots_245 = GDK_KEY_braille_dots_245 /* gint 16787482 */

public let KEY_braille_dots_2456 = GDK_KEY_braille_dots_2456 /* gint 16787514 */

public let KEY_braille_dots_24567 = GDK_KEY_braille_dots_24567 /* gint 16787578 */

public let KEY_braille_dots_245678 = GDK_KEY_braille_dots_245678 /* gint 16787706 */

public let KEY_braille_dots_24568 = GDK_KEY_braille_dots_24568 /* gint 16787642 */

public let KEY_braille_dots_2457 = GDK_KEY_braille_dots_2457 /* gint 16787546 */

public let KEY_braille_dots_24578 = GDK_KEY_braille_dots_24578 /* gint 16787674 */

public let KEY_braille_dots_2458 = GDK_KEY_braille_dots_2458 /* gint 16787610 */

public let KEY_braille_dots_246 = GDK_KEY_braille_dots_246 /* gint 16787498 */

public let KEY_braille_dots_2467 = GDK_KEY_braille_dots_2467 /* gint 16787562 */

public let KEY_braille_dots_24678 = GDK_KEY_braille_dots_24678 /* gint 16787690 */

public let KEY_braille_dots_2468 = GDK_KEY_braille_dots_2468 /* gint 16787626 */

public let KEY_braille_dots_247 = GDK_KEY_braille_dots_247 /* gint 16787530 */

public let KEY_braille_dots_2478 = GDK_KEY_braille_dots_2478 /* gint 16787658 */

public let KEY_braille_dots_248 = GDK_KEY_braille_dots_248 /* gint 16787594 */

public let KEY_braille_dots_25 = GDK_KEY_braille_dots_25 /* gint 16787474 */

public let KEY_braille_dots_256 = GDK_KEY_braille_dots_256 /* gint 16787506 */

public let KEY_braille_dots_2567 = GDK_KEY_braille_dots_2567 /* gint 16787570 */

public let KEY_braille_dots_25678 = GDK_KEY_braille_dots_25678 /* gint 16787698 */

public let KEY_braille_dots_2568 = GDK_KEY_braille_dots_2568 /* gint 16787634 */

public let KEY_braille_dots_257 = GDK_KEY_braille_dots_257 /* gint 16787538 */

public let KEY_braille_dots_2578 = GDK_KEY_braille_dots_2578 /* gint 16787666 */

public let KEY_braille_dots_258 = GDK_KEY_braille_dots_258 /* gint 16787602 */

public let KEY_braille_dots_26 = GDK_KEY_braille_dots_26 /* gint 16787490 */

public let KEY_braille_dots_267 = GDK_KEY_braille_dots_267 /* gint 16787554 */

public let KEY_braille_dots_2678 = GDK_KEY_braille_dots_2678 /* gint 16787682 */

public let KEY_braille_dots_268 = GDK_KEY_braille_dots_268 /* gint 16787618 */

public let KEY_braille_dots_27 = GDK_KEY_braille_dots_27 /* gint 16787522 */

public let KEY_braille_dots_278 = GDK_KEY_braille_dots_278 /* gint 16787650 */

public let KEY_braille_dots_28 = GDK_KEY_braille_dots_28 /* gint 16787586 */

public let KEY_braille_dots_3 = GDK_KEY_braille_dots_3 /* gint 16787460 */

public let KEY_braille_dots_34 = GDK_KEY_braille_dots_34 /* gint 16787468 */

public let KEY_braille_dots_345 = GDK_KEY_braille_dots_345 /* gint 16787484 */

public let KEY_braille_dots_3456 = GDK_KEY_braille_dots_3456 /* gint 16787516 */

public let KEY_braille_dots_34567 = GDK_KEY_braille_dots_34567 /* gint 16787580 */

public let KEY_braille_dots_345678 = GDK_KEY_braille_dots_345678 /* gint 16787708 */

public let KEY_braille_dots_34568 = GDK_KEY_braille_dots_34568 /* gint 16787644 */

public let KEY_braille_dots_3457 = GDK_KEY_braille_dots_3457 /* gint 16787548 */

public let KEY_braille_dots_34578 = GDK_KEY_braille_dots_34578 /* gint 16787676 */

public let KEY_braille_dots_3458 = GDK_KEY_braille_dots_3458 /* gint 16787612 */

public let KEY_braille_dots_346 = GDK_KEY_braille_dots_346 /* gint 16787500 */

public let KEY_braille_dots_3467 = GDK_KEY_braille_dots_3467 /* gint 16787564 */

public let KEY_braille_dots_34678 = GDK_KEY_braille_dots_34678 /* gint 16787692 */

public let KEY_braille_dots_3468 = GDK_KEY_braille_dots_3468 /* gint 16787628 */

public let KEY_braille_dots_347 = GDK_KEY_braille_dots_347 /* gint 16787532 */

public let KEY_braille_dots_3478 = GDK_KEY_braille_dots_3478 /* gint 16787660 */

public let KEY_braille_dots_348 = GDK_KEY_braille_dots_348 /* gint 16787596 */

public let KEY_braille_dots_35 = GDK_KEY_braille_dots_35 /* gint 16787476 */

public let KEY_braille_dots_356 = GDK_KEY_braille_dots_356 /* gint 16787508 */

public let KEY_braille_dots_3567 = GDK_KEY_braille_dots_3567 /* gint 16787572 */

public let KEY_braille_dots_35678 = GDK_KEY_braille_dots_35678 /* gint 16787700 */

public let KEY_braille_dots_3568 = GDK_KEY_braille_dots_3568 /* gint 16787636 */

public let KEY_braille_dots_357 = GDK_KEY_braille_dots_357 /* gint 16787540 */

public let KEY_braille_dots_3578 = GDK_KEY_braille_dots_3578 /* gint 16787668 */

public let KEY_braille_dots_358 = GDK_KEY_braille_dots_358 /* gint 16787604 */

public let KEY_braille_dots_36 = GDK_KEY_braille_dots_36 /* gint 16787492 */

public let KEY_braille_dots_367 = GDK_KEY_braille_dots_367 /* gint 16787556 */

public let KEY_braille_dots_3678 = GDK_KEY_braille_dots_3678 /* gint 16787684 */

public let KEY_braille_dots_368 = GDK_KEY_braille_dots_368 /* gint 16787620 */

public let KEY_braille_dots_37 = GDK_KEY_braille_dots_37 /* gint 16787524 */

public let KEY_braille_dots_378 = GDK_KEY_braille_dots_378 /* gint 16787652 */

public let KEY_braille_dots_38 = GDK_KEY_braille_dots_38 /* gint 16787588 */

public let KEY_braille_dots_4 = GDK_KEY_braille_dots_4 /* gint 16787464 */

public let KEY_braille_dots_45 = GDK_KEY_braille_dots_45 /* gint 16787480 */

public let KEY_braille_dots_456 = GDK_KEY_braille_dots_456 /* gint 16787512 */

public let KEY_braille_dots_4567 = GDK_KEY_braille_dots_4567 /* gint 16787576 */

public let KEY_braille_dots_45678 = GDK_KEY_braille_dots_45678 /* gint 16787704 */

public let KEY_braille_dots_4568 = GDK_KEY_braille_dots_4568 /* gint 16787640 */

public let KEY_braille_dots_457 = GDK_KEY_braille_dots_457 /* gint 16787544 */

public let KEY_braille_dots_4578 = GDK_KEY_braille_dots_4578 /* gint 16787672 */

public let KEY_braille_dots_458 = GDK_KEY_braille_dots_458 /* gint 16787608 */

public let KEY_braille_dots_46 = GDK_KEY_braille_dots_46 /* gint 16787496 */

public let KEY_braille_dots_467 = GDK_KEY_braille_dots_467 /* gint 16787560 */

public let KEY_braille_dots_4678 = GDK_KEY_braille_dots_4678 /* gint 16787688 */

public let KEY_braille_dots_468 = GDK_KEY_braille_dots_468 /* gint 16787624 */

public let KEY_braille_dots_47 = GDK_KEY_braille_dots_47 /* gint 16787528 */

public let KEY_braille_dots_478 = GDK_KEY_braille_dots_478 /* gint 16787656 */

public let KEY_braille_dots_48 = GDK_KEY_braille_dots_48 /* gint 16787592 */

public let KEY_braille_dots_5 = GDK_KEY_braille_dots_5 /* gint 16787472 */

public let KEY_braille_dots_56 = GDK_KEY_braille_dots_56 /* gint 16787504 */

public let KEY_braille_dots_567 = GDK_KEY_braille_dots_567 /* gint 16787568 */

public let KEY_braille_dots_5678 = GDK_KEY_braille_dots_5678 /* gint 16787696 */

public let KEY_braille_dots_568 = GDK_KEY_braille_dots_568 /* gint 16787632 */

public let KEY_braille_dots_57 = GDK_KEY_braille_dots_57 /* gint 16787536 */

public let KEY_braille_dots_578 = GDK_KEY_braille_dots_578 /* gint 16787664 */

public let KEY_braille_dots_58 = GDK_KEY_braille_dots_58 /* gint 16787600 */

public let KEY_braille_dots_6 = GDK_KEY_braille_dots_6 /* gint 16787488 */

public let KEY_braille_dots_67 = GDK_KEY_braille_dots_67 /* gint 16787552 */

public let KEY_braille_dots_678 = GDK_KEY_braille_dots_678 /* gint 16787680 */

public let KEY_braille_dots_68 = GDK_KEY_braille_dots_68 /* gint 16787616 */

public let KEY_braille_dots_7 = GDK_KEY_braille_dots_7 /* gint 16787520 */

public let KEY_braille_dots_78 = GDK_KEY_braille_dots_78 /* gint 16787648 */

public let KEY_braille_dots_8 = GDK_KEY_braille_dots_8 /* gint 16787584 */

public let KEY_breve = GDK_KEY_breve /* gint 418 */

public let KEY_brokenbar = GDK_KEY_brokenbar /* gint 166 */

public let KEY_c = GDK_KEY_c /* gint 99 */

public let KEY_c_h = GDK_KEY_c_h /* gint 65187 */

public let KEY_cabovedot = GDK_KEY_cabovedot /* gint 741 */

public let KEY_cacute = GDK_KEY_cacute /* gint 486 */

public let KEY_careof = GDK_KEY_careof /* gint 2744 */

public let KEY_caret = GDK_KEY_caret /* gint 2812 */

public let KEY_caron = GDK_KEY_caron /* gint 439 */

public let KEY_ccaron = GDK_KEY_ccaron /* gint 488 */

public let KEY_ccedilla = GDK_KEY_ccedilla /* gint 231 */

public let KEY_ccircumflex = GDK_KEY_ccircumflex /* gint 742 */

public let KEY_cedilla = GDK_KEY_cedilla /* gint 184 */

public let KEY_cent = GDK_KEY_cent /* gint 162 */

public let KEY_ch = GDK_KEY_ch /* gint 65184 */

public let KEY_checkerboard = GDK_KEY_checkerboard /* gint 2529 */

public let KEY_checkmark = GDK_KEY_checkmark /* gint 2803 */

public let KEY_circle = GDK_KEY_circle /* gint 3023 */

public let KEY_club = GDK_KEY_club /* gint 2796 */

public let KEY_colon = GDK_KEY_colon /* gint 58 */

public let KEY_comma = GDK_KEY_comma /* gint 44 */

public let KEY_containsas = GDK_KEY_containsas /* gint 16785931 */

public let KEY_copyright = GDK_KEY_copyright /* gint 169 */

public let KEY_cr = GDK_KEY_cr /* gint 2532 */

public let KEY_crossinglines = GDK_KEY_crossinglines /* gint 2542 */

public let KEY_cuberoot = GDK_KEY_cuberoot /* gint 16785947 */

public let KEY_currency = GDK_KEY_currency /* gint 164 */

public let KEY_cursor = GDK_KEY_cursor /* gint 2815 */

public let KEY_d = GDK_KEY_d /* gint 100 */

public let KEY_dabovedot = GDK_KEY_dabovedot /* gint 16784907 */

public let KEY_dagger = GDK_KEY_dagger /* gint 2801 */

public let KEY_dcaron = GDK_KEY_dcaron /* gint 495 */

public let KEY_dead_A = GDK_KEY_dead_A /* gint 65153 */

public let KEY_dead_E = GDK_KEY_dead_E /* gint 65155 */

public let KEY_dead_I = GDK_KEY_dead_I /* gint 65157 */

public let KEY_dead_O = GDK_KEY_dead_O /* gint 65159 */

public let KEY_dead_U = GDK_KEY_dead_U /* gint 65161 */

public let KEY_dead_a = GDK_KEY_dead_a /* gint 65152 */

public let KEY_dead_abovecomma = GDK_KEY_dead_abovecomma /* gint 65124 */

public let KEY_dead_abovedot = GDK_KEY_dead_abovedot /* gint 65110 */

public let KEY_dead_abovereversedcomma = GDK_KEY_dead_abovereversedcomma /* gint 65125 */

public let KEY_dead_abovering = GDK_KEY_dead_abovering /* gint 65112 */

public let KEY_dead_acute = GDK_KEY_dead_acute /* gint 65105 */

public let KEY_dead_belowbreve = GDK_KEY_dead_belowbreve /* gint 65131 */

public let KEY_dead_belowcircumflex = GDK_KEY_dead_belowcircumflex /* gint 65129 */

public let KEY_dead_belowcomma = GDK_KEY_dead_belowcomma /* gint 65134 */

public let KEY_dead_belowdiaeresis = GDK_KEY_dead_belowdiaeresis /* gint 65132 */

public let KEY_dead_belowdot = GDK_KEY_dead_belowdot /* gint 65120 */

public let KEY_dead_belowmacron = GDK_KEY_dead_belowmacron /* gint 65128 */

public let KEY_dead_belowring = GDK_KEY_dead_belowring /* gint 65127 */

public let KEY_dead_belowtilde = GDK_KEY_dead_belowtilde /* gint 65130 */

public let KEY_dead_breve = GDK_KEY_dead_breve /* gint 65109 */

public let KEY_dead_capital_schwa = GDK_KEY_dead_capital_schwa /* gint 65163 */

public let KEY_dead_caron = GDK_KEY_dead_caron /* gint 65114 */

public let KEY_dead_cedilla = GDK_KEY_dead_cedilla /* gint 65115 */

public let KEY_dead_circumflex = GDK_KEY_dead_circumflex /* gint 65106 */

public let KEY_dead_currency = GDK_KEY_dead_currency /* gint 65135 */

public let KEY_dead_dasia = GDK_KEY_dead_dasia /* gint 65125 */

public let KEY_dead_diaeresis = GDK_KEY_dead_diaeresis /* gint 65111 */

public let KEY_dead_doubleacute = GDK_KEY_dead_doubleacute /* gint 65113 */

public let KEY_dead_doublegrave = GDK_KEY_dead_doublegrave /* gint 65126 */

public let KEY_dead_e = GDK_KEY_dead_e /* gint 65154 */

public let KEY_dead_grave = GDK_KEY_dead_grave /* gint 65104 */

public let KEY_dead_greek = GDK_KEY_dead_greek /* gint 65164 */

public let KEY_dead_hook = GDK_KEY_dead_hook /* gint 65121 */

public let KEY_dead_horn = GDK_KEY_dead_horn /* gint 65122 */

public let KEY_dead_i = GDK_KEY_dead_i /* gint 65156 */

public let KEY_dead_invertedbreve = GDK_KEY_dead_invertedbreve /* gint 65133 */

public let KEY_dead_iota = GDK_KEY_dead_iota /* gint 65117 */

public let KEY_dead_macron = GDK_KEY_dead_macron /* gint 65108 */

public let KEY_dead_o = GDK_KEY_dead_o /* gint 65158 */

public let KEY_dead_ogonek = GDK_KEY_dead_ogonek /* gint 65116 */

public let KEY_dead_perispomeni = GDK_KEY_dead_perispomeni /* gint 65107 */

public let KEY_dead_psili = GDK_KEY_dead_psili /* gint 65124 */

public let KEY_dead_semivoiced_sound = GDK_KEY_dead_semivoiced_sound /* gint 65119 */

public let KEY_dead_small_schwa = GDK_KEY_dead_small_schwa /* gint 65162 */

public let KEY_dead_stroke = GDK_KEY_dead_stroke /* gint 65123 */

public let KEY_dead_tilde = GDK_KEY_dead_tilde /* gint 65107 */

public let KEY_dead_u = GDK_KEY_dead_u /* gint 65160 */

public let KEY_dead_voiced_sound = GDK_KEY_dead_voiced_sound /* gint 65118 */

public let KEY_decimalpoint = GDK_KEY_decimalpoint /* gint 2749 */

public let KEY_degree = GDK_KEY_degree /* gint 176 */

public let KEY_diaeresis = GDK_KEY_diaeresis /* gint 168 */

public let KEY_diamond = GDK_KEY_diamond /* gint 2797 */

public let KEY_digitspace = GDK_KEY_digitspace /* gint 2725 */

public let KEY_dintegral = GDK_KEY_dintegral /* gint 16785964 */

public let KEY_division = GDK_KEY_division /* gint 247 */

public let KEY_dollar = GDK_KEY_dollar /* gint 36 */

public let KEY_doubbaselinedot = GDK_KEY_doubbaselinedot /* gint 2735 */

public let KEY_doubleacute = GDK_KEY_doubleacute /* gint 445 */

public let KEY_doubledagger = GDK_KEY_doubledagger /* gint 2802 */

public let KEY_doublelowquotemark = GDK_KEY_doublelowquotemark /* gint 2814 */

public let KEY_downarrow = GDK_KEY_downarrow /* gint 2302 */

public let KEY_downcaret = GDK_KEY_downcaret /* gint 2984 */

public let KEY_downshoe = GDK_KEY_downshoe /* gint 3030 */

public let KEY_downstile = GDK_KEY_downstile /* gint 3012 */

public let KEY_downtack = GDK_KEY_downtack /* gint 3010 */

public let KEY_dstroke = GDK_KEY_dstroke /* gint 496 */

public let KEY_e = GDK_KEY_e /* gint 101 */

public let KEY_eabovedot = GDK_KEY_eabovedot /* gint 1004 */

public let KEY_eacute = GDK_KEY_eacute /* gint 233 */

public let KEY_ebelowdot = GDK_KEY_ebelowdot /* gint 16785081 */

public let KEY_ecaron = GDK_KEY_ecaron /* gint 492 */

public let KEY_ecircumflex = GDK_KEY_ecircumflex /* gint 234 */

public let KEY_ecircumflexacute = GDK_KEY_ecircumflexacute /* gint 16785087 */

public let KEY_ecircumflexbelowdot = GDK_KEY_ecircumflexbelowdot /* gint 16785095 */

public let KEY_ecircumflexgrave = GDK_KEY_ecircumflexgrave /* gint 16785089 */

public let KEY_ecircumflexhook = GDK_KEY_ecircumflexhook /* gint 16785091 */

public let KEY_ecircumflextilde = GDK_KEY_ecircumflextilde /* gint 16785093 */

public let KEY_ediaeresis = GDK_KEY_ediaeresis /* gint 235 */

public let KEY_egrave = GDK_KEY_egrave /* gint 232 */

public let KEY_ehook = GDK_KEY_ehook /* gint 16785083 */

public let KEY_eightsubscript = GDK_KEY_eightsubscript /* gint 16785544 */

public let KEY_eightsuperior = GDK_KEY_eightsuperior /* gint 16785528 */

public let KEY_elementof = GDK_KEY_elementof /* gint 16785928 */

public let KEY_ellipsis = GDK_KEY_ellipsis /* gint 2734 */

public let KEY_em3space = GDK_KEY_em3space /* gint 2723 */

public let KEY_em4space = GDK_KEY_em4space /* gint 2724 */

public let KEY_emacron = GDK_KEY_emacron /* gint 954 */

public let KEY_emdash = GDK_KEY_emdash /* gint 2729 */

public let KEY_emfilledcircle = GDK_KEY_emfilledcircle /* gint 2782 */

public let KEY_emfilledrect = GDK_KEY_emfilledrect /* gint 2783 */

public let KEY_emopencircle = GDK_KEY_emopencircle /* gint 2766 */

public let KEY_emopenrectangle = GDK_KEY_emopenrectangle /* gint 2767 */

public let KEY_emptyset = GDK_KEY_emptyset /* gint 16785925 */

public let KEY_emspace = GDK_KEY_emspace /* gint 2721 */

public let KEY_endash = GDK_KEY_endash /* gint 2730 */

public let KEY_enfilledcircbullet = GDK_KEY_enfilledcircbullet /* gint 2790 */

public let KEY_enfilledsqbullet = GDK_KEY_enfilledsqbullet /* gint 2791 */

public let KEY_eng = GDK_KEY_eng /* gint 959 */

public let KEY_enopencircbullet = GDK_KEY_enopencircbullet /* gint 2784 */

public let KEY_enopensquarebullet = GDK_KEY_enopensquarebullet /* gint 2785 */

public let KEY_enspace = GDK_KEY_enspace /* gint 2722 */

public let KEY_eogonek = GDK_KEY_eogonek /* gint 490 */

public let KEY_equal = GDK_KEY_equal /* gint 61 */

public let KEY_eth = GDK_KEY_eth /* gint 240 */

public let KEY_etilde = GDK_KEY_etilde /* gint 16785085 */

public let KEY_exclam = GDK_KEY_exclam /* gint 33 */

public let KEY_exclamdown = GDK_KEY_exclamdown /* gint 161 */

public let KEY_ezh = GDK_KEY_ezh /* gint 16777874 */

public let KEY_f = GDK_KEY_f /* gint 102 */

public let KEY_fabovedot = GDK_KEY_fabovedot /* gint 16784927 */

public let KEY_femalesymbol = GDK_KEY_femalesymbol /* gint 2808 */

public let KEY_ff = GDK_KEY_ff /* gint 2531 */

public let KEY_figdash = GDK_KEY_figdash /* gint 2747 */

public let KEY_filledlefttribullet = GDK_KEY_filledlefttribullet /* gint 2780 */

public let KEY_filledrectbullet = GDK_KEY_filledrectbullet /* gint 2779 */

public let KEY_filledrighttribullet = GDK_KEY_filledrighttribullet /* gint 2781 */

public let KEY_filledtribulletdown = GDK_KEY_filledtribulletdown /* gint 2793 */

public let KEY_filledtribulletup = GDK_KEY_filledtribulletup /* gint 2792 */

public let KEY_fiveeighths = GDK_KEY_fiveeighths /* gint 2757 */

public let KEY_fivesixths = GDK_KEY_fivesixths /* gint 2743 */

public let KEY_fivesubscript = GDK_KEY_fivesubscript /* gint 16785541 */

public let KEY_fivesuperior = GDK_KEY_fivesuperior /* gint 16785525 */

public let KEY_fourfifths = GDK_KEY_fourfifths /* gint 2741 */

public let KEY_foursubscript = GDK_KEY_foursubscript /* gint 16785540 */

public let KEY_foursuperior = GDK_KEY_foursuperior /* gint 16785524 */

public let KEY_fourthroot = GDK_KEY_fourthroot /* gint 16785948 */

public let KEY_function = GDK_KEY_function /* gint 2294 */

public let KEY_g = GDK_KEY_g /* gint 103 */

public let KEY_gabovedot = GDK_KEY_gabovedot /* gint 757 */

public let KEY_gbreve = GDK_KEY_gbreve /* gint 699 */

public let KEY_gcaron = GDK_KEY_gcaron /* gint 16777703 */

public let KEY_gcedilla = GDK_KEY_gcedilla /* gint 955 */

public let KEY_gcircumflex = GDK_KEY_gcircumflex /* gint 760 */

public let KEY_grave = GDK_KEY_grave /* gint 96 */

public let KEY_greater = GDK_KEY_greater /* gint 62 */

public let KEY_greaterthanequal = GDK_KEY_greaterthanequal /* gint 2238 */

public let KEY_guillemotleft = GDK_KEY_guillemotleft /* gint 171 */

public let KEY_guillemotright = GDK_KEY_guillemotright /* gint 187 */

public let KEY_h = GDK_KEY_h /* gint 104 */

public let KEY_hairspace = GDK_KEY_hairspace /* gint 2728 */

public let KEY_hcircumflex = GDK_KEY_hcircumflex /* gint 694 */

public let KEY_heart = GDK_KEY_heart /* gint 2798 */

public let KEY_hebrew_aleph = GDK_KEY_hebrew_aleph /* gint 3296 */

public let KEY_hebrew_ayin = GDK_KEY_hebrew_ayin /* gint 3314 */

public let KEY_hebrew_bet = GDK_KEY_hebrew_bet /* gint 3297 */

public let KEY_hebrew_beth = GDK_KEY_hebrew_beth /* gint 3297 */

public let KEY_hebrew_chet = GDK_KEY_hebrew_chet /* gint 3303 */

public let KEY_hebrew_dalet = GDK_KEY_hebrew_dalet /* gint 3299 */

public let KEY_hebrew_daleth = GDK_KEY_hebrew_daleth /* gint 3299 */

public let KEY_hebrew_doublelowline = GDK_KEY_hebrew_doublelowline /* gint 3295 */

public let KEY_hebrew_finalkaph = GDK_KEY_hebrew_finalkaph /* gint 3306 */

public let KEY_hebrew_finalmem = GDK_KEY_hebrew_finalmem /* gint 3309 */

public let KEY_hebrew_finalnun = GDK_KEY_hebrew_finalnun /* gint 3311 */

public let KEY_hebrew_finalpe = GDK_KEY_hebrew_finalpe /* gint 3315 */

public let KEY_hebrew_finalzade = GDK_KEY_hebrew_finalzade /* gint 3317 */

public let KEY_hebrew_finalzadi = GDK_KEY_hebrew_finalzadi /* gint 3317 */

public let KEY_hebrew_gimel = GDK_KEY_hebrew_gimel /* gint 3298 */

public let KEY_hebrew_gimmel = GDK_KEY_hebrew_gimmel /* gint 3298 */

public let KEY_hebrew_he = GDK_KEY_hebrew_he /* gint 3300 */

public let KEY_hebrew_het = GDK_KEY_hebrew_het /* gint 3303 */

public let KEY_hebrew_kaph = GDK_KEY_hebrew_kaph /* gint 3307 */

public let KEY_hebrew_kuf = GDK_KEY_hebrew_kuf /* gint 3319 */

public let KEY_hebrew_lamed = GDK_KEY_hebrew_lamed /* gint 3308 */

public let KEY_hebrew_mem = GDK_KEY_hebrew_mem /* gint 3310 */

public let KEY_hebrew_nun = GDK_KEY_hebrew_nun /* gint 3312 */

public let KEY_hebrew_pe = GDK_KEY_hebrew_pe /* gint 3316 */

public let KEY_hebrew_qoph = GDK_KEY_hebrew_qoph /* gint 3319 */

public let KEY_hebrew_resh = GDK_KEY_hebrew_resh /* gint 3320 */

public let KEY_hebrew_samech = GDK_KEY_hebrew_samech /* gint 3313 */

public let KEY_hebrew_samekh = GDK_KEY_hebrew_samekh /* gint 3313 */

public let KEY_hebrew_shin = GDK_KEY_hebrew_shin /* gint 3321 */

public let KEY_hebrew_taf = GDK_KEY_hebrew_taf /* gint 3322 */

public let KEY_hebrew_taw = GDK_KEY_hebrew_taw /* gint 3322 */

public let KEY_hebrew_tet = GDK_KEY_hebrew_tet /* gint 3304 */

public let KEY_hebrew_teth = GDK_KEY_hebrew_teth /* gint 3304 */

public let KEY_hebrew_waw = GDK_KEY_hebrew_waw /* gint 3301 */

public let KEY_hebrew_yod = GDK_KEY_hebrew_yod /* gint 3305 */

public let KEY_hebrew_zade = GDK_KEY_hebrew_zade /* gint 3318 */

public let KEY_hebrew_zadi = GDK_KEY_hebrew_zadi /* gint 3318 */

public let KEY_hebrew_zain = GDK_KEY_hebrew_zain /* gint 3302 */

public let KEY_hebrew_zayin = GDK_KEY_hebrew_zayin /* gint 3302 */

public let KEY_hexagram = GDK_KEY_hexagram /* gint 2778 */

public let KEY_horizconnector = GDK_KEY_horizconnector /* gint 2211 */

public let KEY_horizlinescan1 = GDK_KEY_horizlinescan1 /* gint 2543 */

public let KEY_horizlinescan3 = GDK_KEY_horizlinescan3 /* gint 2544 */

public let KEY_horizlinescan5 = GDK_KEY_horizlinescan5 /* gint 2545 */

public let KEY_horizlinescan7 = GDK_KEY_horizlinescan7 /* gint 2546 */

public let KEY_horizlinescan9 = GDK_KEY_horizlinescan9 /* gint 2547 */

public let KEY_hstroke = GDK_KEY_hstroke /* gint 689 */

public let KEY_ht = GDK_KEY_ht /* gint 2530 */

public let KEY_hyphen = GDK_KEY_hyphen /* gint 173 */

public let KEY_i = GDK_KEY_i /* gint 105 */

public let KEY_iTouch = GDK_KEY_iTouch /* gint 269025120 */

public let KEY_iacute = GDK_KEY_iacute /* gint 237 */

public let KEY_ibelowdot = GDK_KEY_ibelowdot /* gint 16785099 */

public let KEY_ibreve = GDK_KEY_ibreve /* gint 16777517 */

public let KEY_icircumflex = GDK_KEY_icircumflex /* gint 238 */

public let KEY_identical = GDK_KEY_identical /* gint 2255 */

public let KEY_idiaeresis = GDK_KEY_idiaeresis /* gint 239 */

public let KEY_idotless = GDK_KEY_idotless /* gint 697 */

public let KEY_ifonlyif = GDK_KEY_ifonlyif /* gint 2253 */

public let KEY_igrave = GDK_KEY_igrave /* gint 236 */

public let KEY_ihook = GDK_KEY_ihook /* gint 16785097 */

public let KEY_imacron = GDK_KEY_imacron /* gint 1007 */

public let KEY_implies = GDK_KEY_implies /* gint 2254 */

public let KEY_includedin = GDK_KEY_includedin /* gint 2266 */

public let KEY_includes = GDK_KEY_includes /* gint 2267 */

public let KEY_infinity = GDK_KEY_infinity /* gint 2242 */

public let KEY_integral = GDK_KEY_integral /* gint 2239 */

public let KEY_intersection = GDK_KEY_intersection /* gint 2268 */

public let KEY_iogonek = GDK_KEY_iogonek /* gint 999 */

public let KEY_itilde = GDK_KEY_itilde /* gint 949 */

public let KEY_j = GDK_KEY_j /* gint 106 */

public let KEY_jcircumflex = GDK_KEY_jcircumflex /* gint 700 */

public let KEY_jot = GDK_KEY_jot /* gint 3018 */

public let KEY_k = GDK_KEY_k /* gint 107 */

public let KEY_kana_A = GDK_KEY_kana_A /* gint 1201 */

public let KEY_kana_CHI = GDK_KEY_kana_CHI /* gint 1217 */

public let KEY_kana_E = GDK_KEY_kana_E /* gint 1204 */

public let KEY_kana_FU = GDK_KEY_kana_FU /* gint 1228 */

public let KEY_kana_HA = GDK_KEY_kana_HA /* gint 1226 */

public let KEY_kana_HE = GDK_KEY_kana_HE /* gint 1229 */

public let KEY_kana_HI = GDK_KEY_kana_HI /* gint 1227 */

public let KEY_kana_HO = GDK_KEY_kana_HO /* gint 1230 */

public let KEY_kana_HU = GDK_KEY_kana_HU /* gint 1228 */

public let KEY_kana_I = GDK_KEY_kana_I /* gint 1202 */

public let KEY_kana_KA = GDK_KEY_kana_KA /* gint 1206 */

public let KEY_kana_KE = GDK_KEY_kana_KE /* gint 1209 */

public let KEY_kana_KI = GDK_KEY_kana_KI /* gint 1207 */

public let KEY_kana_KO = GDK_KEY_kana_KO /* gint 1210 */

public let KEY_kana_KU = GDK_KEY_kana_KU /* gint 1208 */

public let KEY_kana_MA = GDK_KEY_kana_MA /* gint 1231 */

public let KEY_kana_ME = GDK_KEY_kana_ME /* gint 1234 */

public let KEY_kana_MI = GDK_KEY_kana_MI /* gint 1232 */

public let KEY_kana_MO = GDK_KEY_kana_MO /* gint 1235 */

public let KEY_kana_MU = GDK_KEY_kana_MU /* gint 1233 */

public let KEY_kana_N = GDK_KEY_kana_N /* gint 1245 */

public let KEY_kana_NA = GDK_KEY_kana_NA /* gint 1221 */

public let KEY_kana_NE = GDK_KEY_kana_NE /* gint 1224 */

public let KEY_kana_NI = GDK_KEY_kana_NI /* gint 1222 */

public let KEY_kana_NO = GDK_KEY_kana_NO /* gint 1225 */

public let KEY_kana_NU = GDK_KEY_kana_NU /* gint 1223 */

public let KEY_kana_O = GDK_KEY_kana_O /* gint 1205 */

public let KEY_kana_RA = GDK_KEY_kana_RA /* gint 1239 */

public let KEY_kana_RE = GDK_KEY_kana_RE /* gint 1242 */

public let KEY_kana_RI = GDK_KEY_kana_RI /* gint 1240 */

public let KEY_kana_RO = GDK_KEY_kana_RO /* gint 1243 */

public let KEY_kana_RU = GDK_KEY_kana_RU /* gint 1241 */

public let KEY_kana_SA = GDK_KEY_kana_SA /* gint 1211 */

public let KEY_kana_SE = GDK_KEY_kana_SE /* gint 1214 */

public let KEY_kana_SHI = GDK_KEY_kana_SHI /* gint 1212 */

public let KEY_kana_SO = GDK_KEY_kana_SO /* gint 1215 */

public let KEY_kana_SU = GDK_KEY_kana_SU /* gint 1213 */

public let KEY_kana_TA = GDK_KEY_kana_TA /* gint 1216 */

public let KEY_kana_TE = GDK_KEY_kana_TE /* gint 1219 */

public let KEY_kana_TI = GDK_KEY_kana_TI /* gint 1217 */

public let KEY_kana_TO = GDK_KEY_kana_TO /* gint 1220 */

public let KEY_kana_TSU = GDK_KEY_kana_TSU /* gint 1218 */

public let KEY_kana_TU = GDK_KEY_kana_TU /* gint 1218 */

public let KEY_kana_U = GDK_KEY_kana_U /* gint 1203 */

public let KEY_kana_WA = GDK_KEY_kana_WA /* gint 1244 */

public let KEY_kana_WO = GDK_KEY_kana_WO /* gint 1190 */

public let KEY_kana_YA = GDK_KEY_kana_YA /* gint 1236 */

public let KEY_kana_YO = GDK_KEY_kana_YO /* gint 1238 */

public let KEY_kana_YU = GDK_KEY_kana_YU /* gint 1237 */

public let KEY_kana_a = GDK_KEY_kana_a /* gint 1191 */

public let KEY_kana_closingbracket = GDK_KEY_kana_closingbracket /* gint 1187 */

public let KEY_kana_comma = GDK_KEY_kana_comma /* gint 1188 */

public let KEY_kana_conjunctive = GDK_KEY_kana_conjunctive /* gint 1189 */

public let KEY_kana_e = GDK_KEY_kana_e /* gint 1194 */

public let KEY_kana_fullstop = GDK_KEY_kana_fullstop /* gint 1185 */

public let KEY_kana_i = GDK_KEY_kana_i /* gint 1192 */

public let KEY_kana_middledot = GDK_KEY_kana_middledot /* gint 1189 */

public let KEY_kana_o = GDK_KEY_kana_o /* gint 1195 */

public let KEY_kana_openingbracket = GDK_KEY_kana_openingbracket /* gint 1186 */

public let KEY_kana_switch = GDK_KEY_kana_switch /* gint 65406 */

public let KEY_kana_tsu = GDK_KEY_kana_tsu /* gint 1199 */

public let KEY_kana_tu = GDK_KEY_kana_tu /* gint 1199 */

public let KEY_kana_u = GDK_KEY_kana_u /* gint 1193 */

public let KEY_kana_ya = GDK_KEY_kana_ya /* gint 1196 */

public let KEY_kana_yo = GDK_KEY_kana_yo /* gint 1198 */

public let KEY_kana_yu = GDK_KEY_kana_yu /* gint 1197 */

public let KEY_kappa = GDK_KEY_kappa /* gint 930 */

public let KEY_kcedilla = GDK_KEY_kcedilla /* gint 1011 */

public let KEY_kra = GDK_KEY_kra /* gint 930 */

public let KEY_l = GDK_KEY_l /* gint 108 */

public let KEY_lacute = GDK_KEY_lacute /* gint 485 */

public let KEY_latincross = GDK_KEY_latincross /* gint 2777 */

public let KEY_lbelowdot = GDK_KEY_lbelowdot /* gint 16784951 */

public let KEY_lcaron = GDK_KEY_lcaron /* gint 437 */

public let KEY_lcedilla = GDK_KEY_lcedilla /* gint 950 */

public let KEY_leftanglebracket = GDK_KEY_leftanglebracket /* gint 2748 */

public let KEY_leftarrow = GDK_KEY_leftarrow /* gint 2299 */

public let KEY_leftcaret = GDK_KEY_leftcaret /* gint 2979 */

public let KEY_leftdoublequotemark = GDK_KEY_leftdoublequotemark /* gint 2770 */

public let KEY_leftmiddlecurlybrace = GDK_KEY_leftmiddlecurlybrace /* gint 2223 */

public let KEY_leftopentriangle = GDK_KEY_leftopentriangle /* gint 2764 */

public let KEY_leftpointer = GDK_KEY_leftpointer /* gint 2794 */

public let KEY_leftradical = GDK_KEY_leftradical /* gint 2209 */

public let KEY_leftshoe = GDK_KEY_leftshoe /* gint 3034 */

public let KEY_leftsinglequotemark = GDK_KEY_leftsinglequotemark /* gint 2768 */

public let KEY_leftt = GDK_KEY_leftt /* gint 2548 */

public let KEY_lefttack = GDK_KEY_lefttack /* gint 3036 */

public let KEY_less = GDK_KEY_less /* gint 60 */

public let KEY_lessthanequal = GDK_KEY_lessthanequal /* gint 2236 */

public let KEY_lf = GDK_KEY_lf /* gint 2533 */

public let KEY_logicaland = GDK_KEY_logicaland /* gint 2270 */

public let KEY_logicalor = GDK_KEY_logicalor /* gint 2271 */

public let KEY_lowleftcorner = GDK_KEY_lowleftcorner /* gint 2541 */

public let KEY_lowrightcorner = GDK_KEY_lowrightcorner /* gint 2538 */

public let KEY_lstroke = GDK_KEY_lstroke /* gint 435 */

public let KEY_m = GDK_KEY_m /* gint 109 */

public let KEY_mabovedot = GDK_KEY_mabovedot /* gint 16784961 */

public let KEY_macron = GDK_KEY_macron /* gint 175 */

public let KEY_malesymbol = GDK_KEY_malesymbol /* gint 2807 */

public let KEY_maltesecross = GDK_KEY_maltesecross /* gint 2800 */

public let KEY_marker = GDK_KEY_marker /* gint 2751 */

public let KEY_masculine = GDK_KEY_masculine /* gint 186 */

public let KEY_minus = GDK_KEY_minus /* gint 45 */

public let KEY_minutes = GDK_KEY_minutes /* gint 2774 */

public let KEY_mu = GDK_KEY_mu /* gint 181 */

public let KEY_multiply = GDK_KEY_multiply /* gint 215 */

public let KEY_musicalflat = GDK_KEY_musicalflat /* gint 2806 */

public let KEY_musicalsharp = GDK_KEY_musicalsharp /* gint 2805 */

public let KEY_n = GDK_KEY_n /* gint 110 */

public let KEY_nabla = GDK_KEY_nabla /* gint 2245 */

public let KEY_nacute = GDK_KEY_nacute /* gint 497 */

public let KEY_ncaron = GDK_KEY_ncaron /* gint 498 */

public let KEY_ncedilla = GDK_KEY_ncedilla /* gint 1009 */

public let KEY_ninesubscript = GDK_KEY_ninesubscript /* gint 16785545 */

public let KEY_ninesuperior = GDK_KEY_ninesuperior /* gint 16785529 */

public let KEY_nl = GDK_KEY_nl /* gint 2536 */

public let KEY_nobreakspace = GDK_KEY_nobreakspace /* gint 160 */

public let KEY_notapproxeq = GDK_KEY_notapproxeq /* gint 16785991 */

public let KEY_notelementof = GDK_KEY_notelementof /* gint 16785929 */

public let KEY_notequal = GDK_KEY_notequal /* gint 2237 */

public let KEY_notidentical = GDK_KEY_notidentical /* gint 16786018 */

public let KEY_notsign = GDK_KEY_notsign /* gint 172 */

public let KEY_ntilde = GDK_KEY_ntilde /* gint 241 */

public let KEY_numbersign = GDK_KEY_numbersign /* gint 35 */

public let KEY_numerosign = GDK_KEY_numerosign /* gint 1712 */

public let KEY_o = GDK_KEY_o /* gint 111 */

public let KEY_oacute = GDK_KEY_oacute /* gint 243 */

public let KEY_obarred = GDK_KEY_obarred /* gint 16777845 */

public let KEY_obelowdot = GDK_KEY_obelowdot /* gint 16785101 */

public let KEY_ocaron = GDK_KEY_ocaron /* gint 16777682 */

public let KEY_ocircumflex = GDK_KEY_ocircumflex /* gint 244 */

public let KEY_ocircumflexacute = GDK_KEY_ocircumflexacute /* gint 16785105 */

public let KEY_ocircumflexbelowdot = GDK_KEY_ocircumflexbelowdot /* gint 16785113 */

public let KEY_ocircumflexgrave = GDK_KEY_ocircumflexgrave /* gint 16785107 */

public let KEY_ocircumflexhook = GDK_KEY_ocircumflexhook /* gint 16785109 */

public let KEY_ocircumflextilde = GDK_KEY_ocircumflextilde /* gint 16785111 */

public let KEY_odiaeresis = GDK_KEY_odiaeresis /* gint 246 */

public let KEY_odoubleacute = GDK_KEY_odoubleacute /* gint 501 */

public let KEY_oe = GDK_KEY_oe /* gint 5053 */

public let KEY_ogonek = GDK_KEY_ogonek /* gint 434 */

public let KEY_ograve = GDK_KEY_ograve /* gint 242 */

public let KEY_ohook = GDK_KEY_ohook /* gint 16785103 */

public let KEY_ohorn = GDK_KEY_ohorn /* gint 16777633 */

public let KEY_ohornacute = GDK_KEY_ohornacute /* gint 16785115 */

public let KEY_ohornbelowdot = GDK_KEY_ohornbelowdot /* gint 16785123 */

public let KEY_ohorngrave = GDK_KEY_ohorngrave /* gint 16785117 */

public let KEY_ohornhook = GDK_KEY_ohornhook /* gint 16785119 */

public let KEY_ohorntilde = GDK_KEY_ohorntilde /* gint 16785121 */

public let KEY_omacron = GDK_KEY_omacron /* gint 1010 */

public let KEY_oneeighth = GDK_KEY_oneeighth /* gint 2755 */

public let KEY_onefifth = GDK_KEY_onefifth /* gint 2738 */

public let KEY_onehalf = GDK_KEY_onehalf /* gint 189 */

public let KEY_onequarter = GDK_KEY_onequarter /* gint 188 */

public let KEY_onesixth = GDK_KEY_onesixth /* gint 2742 */

public let KEY_onesubscript = GDK_KEY_onesubscript /* gint 16785537 */

public let KEY_onesuperior = GDK_KEY_onesuperior /* gint 185 */

public let KEY_onethird = GDK_KEY_onethird /* gint 2736 */

public let KEY_ooblique = GDK_KEY_ooblique /* gint 248 */

public let KEY_openrectbullet = GDK_KEY_openrectbullet /* gint 2786 */

public let KEY_openstar = GDK_KEY_openstar /* gint 2789 */

public let KEY_opentribulletdown = GDK_KEY_opentribulletdown /* gint 2788 */

public let KEY_opentribulletup = GDK_KEY_opentribulletup /* gint 2787 */

public let KEY_ordfeminine = GDK_KEY_ordfeminine /* gint 170 */

public let KEY_oslash = GDK_KEY_oslash /* gint 248 */

public let KEY_otilde = GDK_KEY_otilde /* gint 245 */

public let KEY_overbar = GDK_KEY_overbar /* gint 3008 */

public let KEY_overline = GDK_KEY_overline /* gint 1150 */

public let KEY_p = GDK_KEY_p /* gint 112 */

public let KEY_pabovedot = GDK_KEY_pabovedot /* gint 16784983 */

public let KEY_paragraph = GDK_KEY_paragraph /* gint 182 */

public let KEY_parenleft = GDK_KEY_parenleft /* gint 40 */

public let KEY_parenright = GDK_KEY_parenright /* gint 41 */

public let KEY_partdifferential = GDK_KEY_partdifferential /* gint 16785922 */

public let KEY_partialderivative = GDK_KEY_partialderivative /* gint 2287 */

public let KEY_percent = GDK_KEY_percent /* gint 37 */

public let KEY_period = GDK_KEY_period /* gint 46 */

public let KEY_periodcentered = GDK_KEY_periodcentered /* gint 183 */

public let KEY_permille = GDK_KEY_permille /* gint 2773 */

public let KEY_phonographcopyright = GDK_KEY_phonographcopyright /* gint 2811 */

public let KEY_plus = GDK_KEY_plus /* gint 43 */

public let KEY_plusminus = GDK_KEY_plusminus /* gint 177 */

public let KEY_prescription = GDK_KEY_prescription /* gint 2772 */

public let KEY_prolongedsound = GDK_KEY_prolongedsound /* gint 1200 */

public let KEY_punctspace = GDK_KEY_punctspace /* gint 2726 */

public let KEY_q = GDK_KEY_q /* gint 113 */

public let KEY_quad = GDK_KEY_quad /* gint 3020 */

public let KEY_question = GDK_KEY_question /* gint 63 */

public let KEY_questiondown = GDK_KEY_questiondown /* gint 191 */

public let KEY_quotedbl = GDK_KEY_quotedbl /* gint 34 */

public let KEY_quoteleft = GDK_KEY_quoteleft /* gint 96 */

public let KEY_quoteright = GDK_KEY_quoteright /* gint 39 */

public let KEY_r = GDK_KEY_r /* gint 114 */

public let KEY_racute = GDK_KEY_racute /* gint 480 */

public let KEY_radical = GDK_KEY_radical /* gint 2262 */

public let KEY_rcaron = GDK_KEY_rcaron /* gint 504 */

public let KEY_rcedilla = GDK_KEY_rcedilla /* gint 947 */

public let KEY_registered = GDK_KEY_registered /* gint 174 */

public let KEY_rightanglebracket = GDK_KEY_rightanglebracket /* gint 2750 */

public let KEY_rightarrow = GDK_KEY_rightarrow /* gint 2301 */

public let KEY_rightcaret = GDK_KEY_rightcaret /* gint 2982 */

public let KEY_rightdoublequotemark = GDK_KEY_rightdoublequotemark /* gint 2771 */

public let KEY_rightmiddlecurlybrace = GDK_KEY_rightmiddlecurlybrace /* gint 2224 */

public let KEY_rightmiddlesummation = GDK_KEY_rightmiddlesummation /* gint 2231 */

public let KEY_rightopentriangle = GDK_KEY_rightopentriangle /* gint 2765 */

public let KEY_rightpointer = GDK_KEY_rightpointer /* gint 2795 */

public let KEY_rightshoe = GDK_KEY_rightshoe /* gint 3032 */

public let KEY_rightsinglequotemark = GDK_KEY_rightsinglequotemark /* gint 2769 */

public let KEY_rightt = GDK_KEY_rightt /* gint 2549 */

public let KEY_righttack = GDK_KEY_righttack /* gint 3068 */

public let KEY_s = GDK_KEY_s /* gint 115 */

public let KEY_sabovedot = GDK_KEY_sabovedot /* gint 16784993 */

public let KEY_sacute = GDK_KEY_sacute /* gint 438 */

public let KEY_scaron = GDK_KEY_scaron /* gint 441 */

public let KEY_scedilla = GDK_KEY_scedilla /* gint 442 */

public let KEY_schwa = GDK_KEY_schwa /* gint 16777817 */

public let KEY_scircumflex = GDK_KEY_scircumflex /* gint 766 */

public let KEY_script_switch = GDK_KEY_script_switch /* gint 65406 */

public let KEY_seconds = GDK_KEY_seconds /* gint 2775 */

public let KEY_section = GDK_KEY_section /* gint 167 */

public let KEY_semicolon = GDK_KEY_semicolon /* gint 59 */

public let KEY_semivoicedsound = GDK_KEY_semivoicedsound /* gint 1247 */

public let KEY_seveneighths = GDK_KEY_seveneighths /* gint 2758 */

public let KEY_sevensubscript = GDK_KEY_sevensubscript /* gint 16785543 */

public let KEY_sevensuperior = GDK_KEY_sevensuperior /* gint 16785527 */

public let KEY_signaturemark = GDK_KEY_signaturemark /* gint 2762 */

public let KEY_signifblank = GDK_KEY_signifblank /* gint 2732 */

public let KEY_similarequal = GDK_KEY_similarequal /* gint 2249 */

public let KEY_singlelowquotemark = GDK_KEY_singlelowquotemark /* gint 2813 */

public let KEY_sixsubscript = GDK_KEY_sixsubscript /* gint 16785542 */

public let KEY_sixsuperior = GDK_KEY_sixsuperior /* gint 16785526 */

public let KEY_slash = GDK_KEY_slash /* gint 47 */

public let KEY_soliddiamond = GDK_KEY_soliddiamond /* gint 2528 */

public let KEY_space = GDK_KEY_space /* gint 32 */

public let KEY_squareroot = GDK_KEY_squareroot /* gint 16785946 */

public let KEY_ssharp = GDK_KEY_ssharp /* gint 223 */

public let KEY_sterling = GDK_KEY_sterling /* gint 163 */

public let KEY_stricteq = GDK_KEY_stricteq /* gint 16786019 */

public let KEY_t = GDK_KEY_t /* gint 116 */

public let KEY_tabovedot = GDK_KEY_tabovedot /* gint 16785003 */

public let KEY_tcaron = GDK_KEY_tcaron /* gint 443 */

public let KEY_tcedilla = GDK_KEY_tcedilla /* gint 510 */

public let KEY_telephone = GDK_KEY_telephone /* gint 2809 */

public let KEY_telephonerecorder = GDK_KEY_telephonerecorder /* gint 2810 */

public let KEY_therefore = GDK_KEY_therefore /* gint 2240 */

public let KEY_thinspace = GDK_KEY_thinspace /* gint 2727 */

public let KEY_thorn = GDK_KEY_thorn /* gint 254 */

public let KEY_threeeighths = GDK_KEY_threeeighths /* gint 2756 */

public let KEY_threefifths = GDK_KEY_threefifths /* gint 2740 */

public let KEY_threequarters = GDK_KEY_threequarters /* gint 190 */

public let KEY_threesubscript = GDK_KEY_threesubscript /* gint 16785539 */

public let KEY_threesuperior = GDK_KEY_threesuperior /* gint 179 */

public let KEY_tintegral = GDK_KEY_tintegral /* gint 16785965 */

public let KEY_topintegral = GDK_KEY_topintegral /* gint 2212 */

public let KEY_topleftparens = GDK_KEY_topleftparens /* gint 2219 */

public let KEY_topleftradical = GDK_KEY_topleftradical /* gint 2210 */

public let KEY_topleftsqbracket = GDK_KEY_topleftsqbracket /* gint 2215 */

public let KEY_topleftsummation = GDK_KEY_topleftsummation /* gint 2225 */

public let KEY_toprightparens = GDK_KEY_toprightparens /* gint 2221 */

public let KEY_toprightsqbracket = GDK_KEY_toprightsqbracket /* gint 2217 */

public let KEY_toprightsummation = GDK_KEY_toprightsummation /* gint 2229 */

public let KEY_topt = GDK_KEY_topt /* gint 2551 */

public let KEY_topvertsummationconnector = GDK_KEY_topvertsummationconnector /* gint 2227 */

public let KEY_trademark = GDK_KEY_trademark /* gint 2761 */

public let KEY_trademarkincircle = GDK_KEY_trademarkincircle /* gint 2763 */

public let KEY_tslash = GDK_KEY_tslash /* gint 956 */

public let KEY_twofifths = GDK_KEY_twofifths /* gint 2739 */

public let KEY_twosubscript = GDK_KEY_twosubscript /* gint 16785538 */

public let KEY_twosuperior = GDK_KEY_twosuperior /* gint 178 */

public let KEY_twothirds = GDK_KEY_twothirds /* gint 2737 */

public let KEY_u = GDK_KEY_u /* gint 117 */

public let KEY_uacute = GDK_KEY_uacute /* gint 250 */

public let KEY_ubelowdot = GDK_KEY_ubelowdot /* gint 16785125 */

public let KEY_ubreve = GDK_KEY_ubreve /* gint 765 */

public let KEY_ucircumflex = GDK_KEY_ucircumflex /* gint 251 */

public let KEY_udiaeresis = GDK_KEY_udiaeresis /* gint 252 */

public let KEY_udoubleacute = GDK_KEY_udoubleacute /* gint 507 */

public let KEY_ugrave = GDK_KEY_ugrave /* gint 249 */

public let KEY_uhook = GDK_KEY_uhook /* gint 16785127 */

public let KEY_uhorn = GDK_KEY_uhorn /* gint 16777648 */

public let KEY_uhornacute = GDK_KEY_uhornacute /* gint 16785129 */

public let KEY_uhornbelowdot = GDK_KEY_uhornbelowdot /* gint 16785137 */

public let KEY_uhorngrave = GDK_KEY_uhorngrave /* gint 16785131 */

public let KEY_uhornhook = GDK_KEY_uhornhook /* gint 16785133 */

public let KEY_uhorntilde = GDK_KEY_uhorntilde /* gint 16785135 */

public let KEY_umacron = GDK_KEY_umacron /* gint 1022 */

public let KEY_underbar = GDK_KEY_underbar /* gint 3014 */

public let KEY_underscore = GDK_KEY_underscore /* gint 95 */

public let KEY_union = GDK_KEY_union /* gint 2269 */

public let KEY_uogonek = GDK_KEY_uogonek /* gint 1017 */

public let KEY_uparrow = GDK_KEY_uparrow /* gint 2300 */

public let KEY_upcaret = GDK_KEY_upcaret /* gint 2985 */

public let KEY_upleftcorner = GDK_KEY_upleftcorner /* gint 2540 */

public let KEY_uprightcorner = GDK_KEY_uprightcorner /* gint 2539 */

public let KEY_upshoe = GDK_KEY_upshoe /* gint 3011 */

public let KEY_upstile = GDK_KEY_upstile /* gint 3027 */

public let KEY_uptack = GDK_KEY_uptack /* gint 3022 */

public let KEY_uring = GDK_KEY_uring /* gint 505 */

public let KEY_utilde = GDK_KEY_utilde /* gint 1021 */

public let KEY_v = GDK_KEY_v /* gint 118 */

public let KEY_variation = GDK_KEY_variation /* gint 2241 */

public let KEY_vertbar = GDK_KEY_vertbar /* gint 2552 */

public let KEY_vertconnector = GDK_KEY_vertconnector /* gint 2214 */

public let KEY_voicedsound = GDK_KEY_voicedsound /* gint 1246 */

public let KEY_vt = GDK_KEY_vt /* gint 2537 */

public let KEY_w = GDK_KEY_w /* gint 119 */

public let KEY_wacute = GDK_KEY_wacute /* gint 16785027 */

public let KEY_wcircumflex = GDK_KEY_wcircumflex /* gint 16777589 */

public let KEY_wdiaeresis = GDK_KEY_wdiaeresis /* gint 16785029 */

public let KEY_wgrave = GDK_KEY_wgrave /* gint 16785025 */

public let KEY_x = GDK_KEY_x /* gint 120 */

public let KEY_xabovedot = GDK_KEY_xabovedot /* gint 16785035 */

public let KEY_y = GDK_KEY_y /* gint 121 */

public let KEY_yacute = GDK_KEY_yacute /* gint 253 */

public let KEY_ybelowdot = GDK_KEY_ybelowdot /* gint 16785141 */

public let KEY_ycircumflex = GDK_KEY_ycircumflex /* gint 16777591 */

public let KEY_ydiaeresis = GDK_KEY_ydiaeresis /* gint 255 */

public let KEY_yen = GDK_KEY_yen /* gint 165 */

public let KEY_ygrave = GDK_KEY_ygrave /* gint 16785139 */

public let KEY_yhook = GDK_KEY_yhook /* gint 16785143 */

public let KEY_ytilde = GDK_KEY_ytilde /* gint 16785145 */

public let KEY_z = GDK_KEY_z /* gint 122 */

public let KEY_zabovedot = GDK_KEY_zabovedot /* gint 447 */

public let KEY_zacute = GDK_KEY_zacute /* gint 444 */

public let KEY_zcaron = GDK_KEY_zcaron /* gint 446 */

public let KEY_zerosubscript = GDK_KEY_zerosubscript /* gint 16785536 */

public let KEY_zerosuperior = GDK_KEY_zerosuperior /* gint 16785520 */

public let KEY_zstroke = GDK_KEY_zstroke /* gint 16777654 */

public let MAJOR_VERSION = GDK_MAJOR_VERSION /* gint 3 */

public let MAX_TIMECOORD_AXES = GDK_MAX_TIMECOORD_AXES /* gint 128 */

public let MICRO_VERSION = GDK_MICRO_VERSION /* gint 12 */

public let MINOR_VERSION = GDK_MINOR_VERSION /* gint 24 */

/// A special value, indicating that the background
/// for a window should be inherited from the parent window.
public let PARENT_RELATIVE = GDK_PARENT_RELATIVE /* gint 1 */

/// This is the priority that the idle handler processing window updates
/// is given in the
/// [GLib Main Loop](#glib-The-Main-Event-Loop).
public let PRIORITY_REDRAW: CInt = 120 /* GDK_PRIORITY_REDRAW */
