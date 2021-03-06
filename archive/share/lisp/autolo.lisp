;;; -*- Mode: Lisp; Package: Macsyma -*-
;;; Translated code for LOCAL::MAX$DISK:[SHAREM]AUTOLO.MC;12
;;; Written on 9/07/1984 08:05:33, from MACSYMA 302
;;; Translated for 176228

;;; TRANSL-AUTOLOAD version NIL
;;; TRANSS version 87 TRANSL version 1157 TRUTIL version 27
;;; TRANS1 version 108 TRANS2 version 39 TRANS3 version 50
;;; TRANS4 version 29 TRANS5 version 26 TRANSF version NIL
;;; TROPER version 15 TRPRED version 6 MTAGS version NIL
;;; MDEFUN version 58 TRANSQ version 88 FCALL version 40
;;; ACALL version 70 TRDATA version 68 MCOMPI version 146
;;; TRMODE version 75 TRHOOK version NIL
(eval-when (compile eval)
      (setq *infile-name-key*
	          (namestring (truename '#.standard-input))))

(eval-when (compile)
   (setq $tr_semicompile 'NIL)
   (setq forms-to-compile-queue ()))

(comment "MAX$DISK:[SHAREM]AUTOLO.MC;12")

;;; General declarations required for translated MACSYMA code.

(DECLARE (SPECIAL $LOADPRINT))

(DEF-MTRVAR $LOADPRINT '$LOADPRINT 1)


(COND ((IS-BOOLE-CHECK (TRD-MSYMEVAL $LOADPRINT '$LOADPRINT))
	 (SIMPLIFY (MFUNCTION-CALL $PRINT '$SHAREM '|&source| '12))))

(SIMPLIFY (MFUNCTION-CALL $PUT '$SHAREM '12 '$VERSION))

(MEVAL '(($SETUP_AUTOLOAD) |&MAX$DISK:[SHAREM]BASIC|
	 $PROG1 $PUSH $POP $TR_EV $SYMBOLCHECK))

(SIMPLIFY (MFUNCTION-CALL $PUT '$PROG1 T '$TRANSLOAD))

(SIMPLIFY (MFUNCTION-CALL $PUT '$PUSH T '$TRANSLOAD))

(SIMPLIFY (MFUNCTION-CALL $PUT '$POP T '$TRANSLOAD))

(SIMPLIFY (MFUNCTION-CALL $PUT '$TR_EV T '$TRANSLOAD))

(SIMPLIFY (MFUNCTION-CALL $PUT '$SYMBOLCHECK T '$TRANSLOAD))

(MEVAL '(($SETUP_AUTOLOAD) |&MAX$DISK:[SHAREM]DEFM| $DEFM))

(SIMPLIFY (MFUNCTION-CALL $PUT '$DEFM T '$TRANSLOAD))

(MEVAL '(($SETUP_AUTOLOAD) |&MAX$DISK:[SHAREM]KEYARG| $DEF_KEYARG))

(SIMPLIFY (MFUNCTION-CALL $PUT '$DEF_KEYARG T '$TRANSLOAD))

(MEVAL '(($SETUP_AUTOLOAD) |&MAX$DISK:[SHAREM]CONTRL| $COND $CASEQ))

(SIMPLIFY (MFUNCTION-CALL $PUT '$COND T '$TRANSLOAD))

(SIMPLIFY (MFUNCTION-CALL $PUT '$CASEQ T '$TRANSLOAD))

(MEVAL '(($SETUP_AUTOLOAD) |&MAX$DISK:[SHAREM]DEFSTM| $DEF_STRUCTURE
	 $%AUX_CONSTRUCTOR% $%AUX_ALTERANT% $INITIALIZE_STRUCTURE_LIST))

(SIMPLIFY (MFUNCTION-CALL $PUT '$DEF_STRUCTURE T '$TRANSLOAD))

(SIMPLIFY (MFUNCTION-CALL $PUT '$%AUX_CONSTRUCTOR% T '$TRANSLOAD))

(SIMPLIFY (MFUNCTION-CALL $PUT '$%AUX_ALTERANT% T '$TRANSLOAD))

(SIMPLIFY (MFUNCTION-CALL $PUT '$INITIALIZE_STRUCTURE_LIST T '$TRANSLOAD))

(MEVAL '(($SETUP_AUTOLOAD) |&MAX$DISK:[SHAREM]FEXPR| $DEF))

(SIMPLIFY (MFUNCTION-CALL $PUT '$DEF T '$TRANSLOAD))

(compile-forms-to-compile-queue)

